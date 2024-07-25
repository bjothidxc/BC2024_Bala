tableextension 50001 CompInfoQRCode extends "Company Information"
{
    fields
    {
        field(50000; "QR Code"; Blob)
        {
            Caption = 'QR Code';
            DataClassification = ToBeClassified;
            Subtype = Bitmap;

        }
    }
}
