report 50000 CustomerListBC23
{
    ApplicationArea = All;
    Caption = 'CustomerListBC23';

    UsageCategory = Lists;
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerListBC23.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", Name;
            RequestFilterHeading = 'Customer List';

            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }
            column(QR; CompanyInfo."QR Code")
            {

            }


        }
        dataitem(CompInfo; "Company Information")
        {
            column(QR1; CompInfo."QR Code")
            {

            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                CompInfo.SetAutoCalcFields("QR Code");
                CompInfo.FindFirst();
            end;
        }

    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {

                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPreReport()
    var

        Compinfo: Record "Company Information";

    begin
        CompanyInfo.SetAutoCalcFields("QR Code");
        CompanyInfo.Get();
    end;

    var
        CompanyInfo: Record "Company Information";

}
