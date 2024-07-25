page 50121 Requisitions
{
    ApplicationArea = All;
    Caption = 'Requisitions';
    PageType = List;
    SourceTable = RequisitionHeader;
    // SourceTableView = sorting("No.") order(ascending) where(Status = filter(Open));
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Department; Rec.Department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(Purpose; Rec.Purpose)
                {
                    ToolTip = 'Specifies the value of the Purpose field.';
                    ApplicationArea = All;
                }
                field(ReleasedBy; Rec.ReleasedBy)
                {
                    ToolTip = 'Specifies the value of the ReleasedBy field.';
                    ApplicationArea = All;
                }
                field(ReleasedDate; Rec.ReleasedDate)
                {
                    ToolTip = 'Specifies the value of the ReleasedDate field.';
                    ApplicationArea = All;
                }
                field(ReleasedTime; Rec.ReleasedTime)
                {
                    ToolTip = 'Specifies the value of the ReleasedTime field.';
                    ApplicationArea = All;
                }
                field(RequisitionDate; Rec.RequisitionDate)
                {
                    ToolTip = 'Specifies the value of the RequisitionDate field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
