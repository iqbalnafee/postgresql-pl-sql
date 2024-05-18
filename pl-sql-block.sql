do
$$

    declare

        v_first_name email.person.firstname%type := '';
        v_last_name  email.person.lastname%type  := '';

    begin

        select firstname, lastname into v_first_name,v_last_name from email.person where id = 'allen-p';

        raise notice 'first name is %, last name is %',v_first_name,v_last_name;

    end;
$$