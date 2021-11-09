table 51107 "Mobile Customer Purchase"
{
    DataClassification = ToBeClassified;
    Caption = 'Customers Purchases';

    fields
    {
        field(1; "Customer ID"; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer ID';
            TableRelation = "Mobile Customer";


            trigger OnValidate()
            var
                myInt: Integer;

                RecMobileCustomer: Record "Mobile Customer";
            begin
                RecMobileCustomer.Get(Rec."Customer ID");
                "customer Name" := RecMobileCustomer."Customer Name";

            end;

            trigger onlookup()
            var
                myInt: Integer;
                RecMobileCustomer: Record "Mobile Customer";
            begin

                RecMobileCustomer.Reset();
                RecMobileCustomer.FindSet();
                if Page.RunModal(0, RecMobileCustomer) = Action::LookupOK then begin
                    "Customer ID" := RecMobileCustomer."Customer ID";
                    "Customer Name" := RecMobileCustomer."Customer Name";
                    "Phone No." := RecMobileCustomer."Phone No.";
                    "Email" := RecMobileCustomer."Email";
                end;

            end;

        }

        field(2; "Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }

        field(3; "Mobile ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Mobile ID';
            TableRelation = "Mobile List";

            trigger OnValidate()
            var
                myInt: Integer;

                RecMobile: Record "Mobile List";
            begin

                RecMobile.Get(Rec."Mobile ID");
                "Mobile Name" := RecMobile."Mobile Name";
            end;



            trigger OnLookup()
            var
                myInt: Integer;

                RecMobile: Record "Mobile List";
            begin
                RecMobile.Reset();
                RecMobile.FindSet();

                if Page.RunModal(0, RecMobile) = Action::LookupOK then begin
                    "Mobile ID" := RecMobile."Mobile ID";
                    "Mobile Name" := RecMobile."Mobile Name";

                end;

            end;

        }

        field(4; "Mobile Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Mobile Name';
        }

        field(5; "Order Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Date';
        }

        field(6; "Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone No.';
        }

        field(7; "Email"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email';
        }

    }

    keys
    {
        key(PK; "Customer ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
