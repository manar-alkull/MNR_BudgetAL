page 9956002 MNR_Entities
{
    ApplicationArea = All;
    Caption = 'MNR_Entities';
    PageType = List;
    SourceTable = MNR_Entity;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
            }
        }
    }
}
