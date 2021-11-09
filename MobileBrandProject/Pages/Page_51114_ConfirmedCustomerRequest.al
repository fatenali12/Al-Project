page 51114 "Confirmed Customer Request"

{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Confirmed Customer Request";


    layout
    {
        area(Content)
        {
            repeater("Customer Purchase Info")
            {
                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Customer ID';

                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Customer Name';
                }

                field("Entity No."; Rec."Entity No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Entity No.';
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

                field("Mobile Amount"; Rec."Mobile Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mobile Amount';
                }



                field("Confirmed"; Rec.Confirmed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Confirmed';

                }



            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Go To Customers")
            {
                ApplicationArea = All;
                RunObject = page "Mobile Customer List";
                RunPageLink = "Customer Id" = field("Customer ID");
                RunPageMode = View;
                Promoted = true;
                Image = GoTo;
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