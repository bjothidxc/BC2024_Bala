table 50002 CustomerTest
{
    Caption = 'CustomerTest';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; CustId; Code[20])
        {
            Caption = 'CustId';
        }
    }
    keys
    {
        key(PK; CustId)
        {
            Clustered = true;
        }
    }
}
