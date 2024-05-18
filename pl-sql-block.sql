do
$$

    declare

        rec record;

    begin

        select * into rec from email.person where id = 'allen-p';

        raise notice 'first name is %, email address is %',rec.firstname,rec.email_address;

    end;
$$