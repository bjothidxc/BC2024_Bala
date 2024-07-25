codeunit 50003 MyEventsubscribers
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Vendor, OnAfterValidateEvent, Blocked, false, false)]
    local procedure CheckStatus()
    var
        v: Record Vendor;
    begin

        Message('%1', 'Hello');
    end;

    var
        myInt: Integer;
}