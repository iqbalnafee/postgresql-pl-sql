create or replace function
    word_and_number_of_occurrences(email_text email.emails.message_body%type)
    returns table
            (
                word       varchar,
                occurrence int
            )
    language plpgsql
as
$$

declare
    elements text[];
    var_r    record;
begin
    elements := string_to_array(trim(email_text), ' ');
    for var_r in (select element as element, count(*) as occurrence
                  from unnest(elements) element
                  where element <> ''
                  group by element
                  order by element, occurrence)
        loop
            word := var_r.element;
            occurrence := var_r.occurrence;
            return next;
        end loop;

end;
$$;