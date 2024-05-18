do
$$

    declare
        row_var int := 0;
        col_var int := 0;
    begin

        <<outer_loop>>
        loop
            row_var = row_var + 1;

            <<inner_loop>>
            loop
                col_var = col_var + 1;
                raise notice '(%, %)', row_var,col_var;
                exit inner_loop when col_var = 3;
            end loop;
            col_var := 0;


            exit outer_loop when row_var = 3;
        end loop;

    end;

$$;