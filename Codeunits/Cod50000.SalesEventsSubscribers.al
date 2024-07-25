codeunit 50000 CustomerSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, Blocked, false, false)]
    local procedure StatusCheck(var Rec: Record Customer)
    begin
        if Confirm('Do you want to change the value of %1 to %2 for the customer %3',
                  false, 'Blocked', rec.Blocked, rec.Name) then
            Message('Customer %1 updated', rec.Name)
        else
            Error('Nothing is updated!');

    end;


}
