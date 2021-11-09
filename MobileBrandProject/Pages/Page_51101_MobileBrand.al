page 51101 "Mobile Brand"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Mobile Brand";
    Caption = 'Mobile Brand';
    CardPageId = 51109;

    layout
    {
        area(Content)
        {
            repeater("Mobile Brand Info")
            {
                field("Brand ID"; Rec."Brand ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fill In With Brand ID. Should Be Unique ..';

                }

                field("Brand Name"; Rec."Brand Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fill In With Brand Name';
                }
                field("Number Of Mobiles"; Rec."Number Of Mobiles")
                {
                    ApplicationArea = All;
                    ToolTip = 'Fill In With Number Of Mobiles';
                }

                field("Created Date"; Rec."Created Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'The Created Date';
                }

                field("Last Modified Date"; rec."Last Modified Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Last Modified Date';
                }
            }
        }
    }





    actions
    {
        area(Processing)
        {
            action("Show Mobile List")
            {
                ApplicationArea = All;
                RunObject = page "Mobile List";
                RunPageLink = "Mobile Brand ID" = field("Brand ID");
                Image = ShowList;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                end;
            }
        }
    }


    var
        myInt: Integer;


}

