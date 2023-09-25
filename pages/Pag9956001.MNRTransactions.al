page 9956001 MNR_Transactions
{
    ApplicationArea = All;
    Caption = 'MNR_Transactions';
    PageType = List;
    SourceTable = MNR_Transactions;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(datet; Rec.datet)
                {
                    ShowMandatory = true;
                    Caption = 'date';
                    ToolTip = 'Specifies the value of the date field.';
                }
                field(Entity; Rec.Entity)
                {
                    ShowMandatory = true;
                    Caption = 'Entity';
                    ToolTip = 'Specifies the value of the entity ID field.';
                }
                field(amount; Rec.amount)
                {
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the amount field.';
                }
                field(currency; Rec.currency)
                {
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the entity ID field.';
                }
                field(reason; Rec.reason)
                {
                    ToolTip = 'Specifies the value of the reason field.';
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        myInt: Integer;
    begin
        Rec.datet := CURRENTDATETIME;
        Rec.currency := 'USD';

    end;
}
