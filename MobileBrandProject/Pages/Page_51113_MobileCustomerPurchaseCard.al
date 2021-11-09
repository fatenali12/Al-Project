page 51113 "Mobile Customer Purchase Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Mobile Customer Purchase";

    layout
    {
        area(Content)
        {
            group(Details)
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

                field("Order Date"; rec."Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Order Date';
                }

                field("Phone No"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Created By ...';
                }

                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Created Date';
                }
            }

            part("Customer Purchases Lines"; "Customer Purchase Line")
            {

                ApplicationArea = All;
                SubPageLink = "Customer ID" = field("Customer ID");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Confirmed Requests")
            {
                ApplicationArea = All;
                Image = Process;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    RecCustPurchasesLines: Record "Customer Purchase Line";
                    RecConfirmedCustRequests: Record "Confirmed Customer Request";
                    ConfirmedMessage: label 'Request Confirmed';

                begin
                    RecCustPurchasesLines.Reset();
                    RecCustPurchasesLines.SetRange("Customer ID", Rec."Customer ID");
                    RecCustPurchasesLines.SetRange("Confirme Request", true);

                    if RecCustPurchasesLines.FindSet() then
                        repeat

                            RecConfirmedCustRequests.Init();
                            RecConfirmedCustRequests."Customer ID" := RecCustPurchasesLines."Customer ID";
                            RecConfirmedCustRequests."Customer Name" := RecCustPurchasesLines."Customer Name";
                            RecConfirmedCustRequests."Mobile Name" := RecCustPurchasesLines."Mobile Name";
                            RecConfirmedCustRequests."Quantity" := RecCustPurchasesLines."Quantity";
                            RecConfirmedCustRequests."Mobile Amount" := RecCustPurchasesLines."Mobile Amount";
                            RecConfirmedCustRequests."Confirmed" := 'Confirmed';

                            RecConfirmedCustRequests."Entity No." := 0;
                            RecConfirmedCustRequests.Insert();
                            RecCustPurchasesLines."Confirme Request" := false;
                            RecCustPurchasesLines.Modify();

                            Message(ConfirmedMessage);

                        until RecCustPurchasesLines.Next() = 0;



                end;
            }

            action("Show Confirmed Requests")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = GoTo;
                RunObject = page "Confirmed Customer Request";
                RunPageLink = "Customer ID" = field("Customer ID");


                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;



}