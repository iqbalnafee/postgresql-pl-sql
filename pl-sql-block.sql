create or replace function get_email_count(email_address varchar(50))
returns int
language plpgsql
as
$$

    declare
        email_count integer;
    begin
       select count(*)
       into email_count
       from email.emails
       where message_from = email_address;

       return email_count;
    end;


$$;