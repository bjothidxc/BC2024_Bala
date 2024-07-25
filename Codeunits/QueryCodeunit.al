codeunit 50001 MyCodeunit
{
    trigger OnRun()
    begin
        CustQuery.SetFilter(Quantity, '>10');
        CustQuery.OPEN;
        while CustQuery.READ do begin
            Message(Textbox, CustQuery.CustName, CustQuery.Quantity);
        end;
        CustQuery.CLOSE;


    end;

    local procedure Myname() ReturnValue: Text[50]
    var
        myInt: Integer;
    begin
        //Message('My Name is Bala!');
        //name := 'Bala';
        exit('Bala');

    end;



    var
        CustQuery: Query "Customer sales by quantity";
        Textbox: TextConst ENU = 'Customer name = %1, Quantity =%2.';
        Name: Text;
}