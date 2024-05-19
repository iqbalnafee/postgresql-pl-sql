create or replace function word_and_number_of_occurrences_in_all_mail()
    returns TABLE
            (
                word       varchar,
                occurrence integer
            )
    language plpgsql
as
$$

declare
    var_r    record;
begin
    for var_r in (select elements as element, count(*) as occurrence
                  FROM (select regexp_split_to_table(emails.message_body, '\s+') AS element
                        FROM email.emails) AS elements
                  where element <> ''
                  group by elements
                  order by elements)
        loop
            word := var_r.element;
            occurrence := var_r.occurrence;
            return next;
        end loop;

end;
$$;

