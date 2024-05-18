do
$$

    declare
        counter int := 0;
    begin

        <<my_loop>>
        loop
            counter = counter + 1;
            raise notice '%', counter;
            exit my_loop when counter = 5;
        end loop;

    end;

$$;