page 51111 "Mobile Customer Purchases List"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Mobile Customer Purchase";
    CardPageId = "Mobile Customer Purchase Card";

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

                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Order Date';
                }


                field("Confirmed"; ConfirmedRequest)
                {
                    ApplicationArea = All;

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
                // RunPageLink = "Customer ID" = field("Customer ID");
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
        WelcomeMsg: Label 'Welcome to Customer Purchase List';

    trigger OnOpenPage();
    begin

        Message(WelcomeMsg);
    end;




    trigger OnAfterGetRecord()
    var
        myInt: Integer;
        RecConfirmedRequest: Record "Confirmed Customer Request";

    begin


        ConfirmedRequest := '';
        RecConfirmedRequest.SetRange("Customer ID", Rec."Customer ID");
        if RecConfirmedRequest.FindSet() then begin
            ConfirmedRequest := RecConfirmedRequest."Confirmed";

        end
        else
            ConfirmedRequest := 'Not Confirmed';

    end;

    var

        ConfirmedRequest: Text[50];
}