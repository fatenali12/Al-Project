page 51116 "Mobile Details"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Mobile List";


    layout
    {
        area(Content)
        {
            group("Mobile Picture")
            {
                field("Mobile Image"; Rec."Mobile Image")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mobile Image';
                    ShowCaption = false;


                }

                field("Mobile Name"; Rec."Mobile Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mobile Name';
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