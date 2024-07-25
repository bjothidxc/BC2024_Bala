pageextension 50000 CompInfoQRCode extends "Company Information"
{
    layout
    {
        addafter(Picture)
        {

            field(QRCode; Rec."QR Code")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the QR Code that has been set up for the company';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord();
                end;
            }

        }

    }
}
