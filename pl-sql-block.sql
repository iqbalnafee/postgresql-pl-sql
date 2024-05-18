do
$$

    declare

        selected_row email.person%rowtype;

    begin

        select * into selected_row from email.person where id = 'allen-p';

        raise notice 'first name is %, last name is %',selected_row.firstname,selected_row.lastname;

    end;
$$