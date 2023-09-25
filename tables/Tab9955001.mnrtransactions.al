table 9955001 MNR_Transactions
{
    Caption = 'mnr_transactions';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Entity; Text[100])
        {
            NotBlank = true;
            Caption = 'entity ID';
            DataClassification = CustomerContent;
            TableRelation = MNR_Entity.Name;
        }

        field(2; currency; Code[50])
        {
            NotBlank = true;
            Caption = 'currency';
            DataClassification = CustomerContent;
            TableRelation = Currency.Code;
        }
        field(3; "datet"; DateTime)
        {
            NotBlank = true;
            Caption = 'date';
        }
        field(4; reason; Text[100])
        {
            Caption = 'reason';
        }
        field(5; amount; Decimal)
        {
            NotBlank = true;
            Caption = 'amount';
        }
    }
    keys
    {
        key(PK; datet)
        {
            Clustered = true;
        }

    }
}
