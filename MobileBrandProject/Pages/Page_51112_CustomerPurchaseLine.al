page 51112 "Customer Purchase Line"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Purchase Line";
    AutoSplitKey = true;


    layout
    {
        area(Content)
        {
            repeater("Customer Info")
            {


                field("Confirme Request"; Rec."Confirme Request")
                {
                    ApplicationArea = All;
                    ToolTip = 'Confirme Request';

                }
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile ID';

                }


                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Customer Name';
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Line No.';

                }

                field("Mobile ID"; Rec."Mobile ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile ID';
                }

                field("Mobile Name"; Rec."Mobile Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile Name';
                }

                field("Quantity"; Rec."Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile Quantity';
                }

                field("Mobile Type"; Rec."Mobile Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile Status';
                }
                field("Mobile Amount"; Rec."Mobile Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mobile Amount';
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
