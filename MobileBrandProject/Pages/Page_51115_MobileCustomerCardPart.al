page 51115 "Mobile Customer Details"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Mobile Customer";


    layout
    {
        area(Content)
        {
            group("Customer Picture")
            {
                field("Avatar"; Rec.Avatar)
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Picture';
                    ShowCaption = false;


                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Name';
                    ShowCaption = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}