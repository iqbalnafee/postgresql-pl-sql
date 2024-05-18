do
$$

    declare

        rec record;
        counter int := 0;

    begin

        for rec in select * from email.person where works_in = 'DEF'
        loop
            counter = counter+1;
            raise notice '% first name is %, email address is %, works in %s',
                counter,rec.firstname,rec.email_address, rec.works_in;
        end loop;



    end;
$$