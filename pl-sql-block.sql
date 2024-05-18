do
$$

    declare

        rec record;
        counter int := 0;

    begin

        for rec in select * from email.person where works_in = 'DEF'
        loop
            counter = counter+1;
            raise exception 'duplicate email: %', rec.email_address
		        using hint = 'check the email again';
        end loop;



    end;
$$