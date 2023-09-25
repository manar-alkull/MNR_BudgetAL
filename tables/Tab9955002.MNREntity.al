table 9955002 MNR_Entity
{
    Caption = 'MNR_Entity';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Name; Text[100])
        {
            Caption = 'Name';
        }
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}
