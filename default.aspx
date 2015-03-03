<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>

    <link rel="stylesheet" type="text/css" href="style.css"/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="appborder">
    

   <h1 style="text-align:center;">Austin's Awesome Mortgage Calulator</h1>
        
        <br /><br />
     
        Loan Amount*:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
         <span class="emessage">
                <asp:RequiredFieldValidator ID="tbLoanAmount" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Loan Amount">
                    
                </asp:RequiredFieldValidator>
                  
            </span>
                  
        <br /><br />      
        
        Annual Interest %*: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
            <span class="emessage">
                <asp:RequiredFieldValidator ID="tbAnnInt" runat="server"
                    ControltoValidate ="tbAnnualInterest"
                    ErrorMessage ="Please enter a valid Annual Interest %">

                </asp:RequiredFieldValidator>
                  
            </span>


        
        <br /><br />

        Loan Term (Yrs)*: <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
            <span class="emessage">
                <asp:RequiredFieldValidator ID="tbTerm" runat="server"
                    ControltoValidate ="tbLoanTerm"
                    ErrorMessage ="Please enter a valid Loan Term">

                </asp:RequiredFieldValidator>
                  
            </span>


        <br /> <br />
        
       <div style="color:yellow;">*Required Fields</div>

        <br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" EnableTheming="True" Width="100px" CssClass="button" />
        &nbsp
        &nbsp
        &nbsp


        <asp:Button ID="btnClear" runat="server" Text="Clear" EnableTheming="True" Width="100px" CssClass="button" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" CssClass="bold"> Welcome to my mortgage calculator.  Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</asp:Label></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#00FF7F" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
           </asp:GridView>   
            
        </div>
    </form>
</body>
</html>
