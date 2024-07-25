table 50000 RequisitionHeader
{
    Caption = 'Requisition_Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            //  Editable = false;

            /*
            trigger OnValidate()
            var
                PurchSetup: Record "Purchases & Payables Setup";
                NoSeriesMgt: Codeunit NoSeriesManagement;
            begin
                if "No." <> xRec."No." then begin
                    NoSeriesMgt.TestManual(purchsetup."Requisition No.")
                    // "No. Series" := '';
                end;
            end;
            */
        }
        field(2; RequisitionDate; Date)
        {
            Caption = 'RequisitionDate';
        }
        field(3; Department; Enum DepartmentTypes)
        {
            Caption = 'Department';

            trigger OnValidate()
            var
                UserSetupL: Record "User Setup";
                DepL: Record "Dimension Value";
                Depfound: Boolean;
            begin
                DepL.Reset();
                DepL.SetRange("Dimension Code", 'DEPARTMENT');
                DepL.SetRange("Dimension Id", UserSetupL."Sales Resp. Ctr. Filter");
                if DepL.FindSet() then
                    repeat
                        if format(Department) = DepL."Dimension Id" then
                            Depfound := True;
                    until DepL.Next = 0;
                if not Depfound then
                    clear(Department);

            end;
        }
        field(4; Purpose; Text[40])
        {
            Caption = 'Purpose';
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = "Open","Released";
            Editable = false;

        }
        field(6; CreatedBy; Text[50])
        {
            Caption = 'CreatedBy';
            Editable = false;
        }
        field(7; CreationDate; Date)
        {
            Caption = 'CreationDate';
            Editable = false;
        }
        field(8; CreationTime; Time)
        {
            Caption = 'CreationTime';
            Editable = false;
        }
        field(9; ReleasedBy; Text[50])
        {
            Caption = 'ReleasedBy';
            Editable = false;
        }
        field(10; ReleasedDate; Date)
        {
            Caption = 'ReleasedDate';
            Editable = false;
        }
        field(11; ReleasedTime; Time)
        {
            Caption = 'ReleasedTime';
            Editable = false;
        }
    }


    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    /*
    trigger OnInsert()

    var
        PurchSetup: Record "Purchases & Payables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." <> xRec."No." then begin
            NoSeriesMgt.TestManual(purchsetup."Requisition No.");
            // "No. Series" := '';
        end;

        CreatedBy := Database.UserId;
        CreationDate := Today;
        CreationTime := Time;
    end;
    */

}
