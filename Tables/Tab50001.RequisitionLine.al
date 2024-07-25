table 50001 RequisitionLine
{
    Caption = 'RequisitionLine';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            trigger OnValidate()
            var
                ItemL: Record Item;

            begin
                if ItemL.Get("Item No.") then begin
                    Description := ItemL.Description;
                    UOM := ItemL."Base Unit of Measure";
                end;


            end;

        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; UOM; Code[10])
        {
            Caption = 'UOM';
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(7; "Requisition Date"; Date)
        {
            Caption = 'Requisition Date';
        }
        field(8; Department; Enum DepartmentTypes)
        {
            Caption = 'Department';
        }
        field(9; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = "","Open","Released";
        }
        field(10; "Purchase Order No."; Code[20])
        {
            Caption = 'Purchase Order No.';
        }
        field(11; "Purchase Order Line No."; Integer)
        {
            Caption = 'Purchase Order Line No.';
        }
    }
    keys
    {
        key(PK; "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
