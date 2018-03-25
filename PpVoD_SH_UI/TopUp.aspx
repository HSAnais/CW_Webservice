<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopUp.aspx.cs" Inherits="PpVoD_SH_UI.TopUp" Async="true" Title="Top up your credits" %>

<style type="text/css">
    div.container {
        margin-left: 20%;
        margin-right: auto;   
        width: 1400px; 
        margin:0 auto; 
        margin-top:70px;
        text-align: center;
    }
    ul{
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        color: #283044;
        margin-left: 25%;
        margin-right: 25%;
    }
    li{
        display: inline;
        float: left;
        text-align:center;
        font-size: 20px;
    }
    a{
        display: block;
        padding: 8px;
        text-align: center;
        color: #283044;
        text-decoration: none;
    }
    a:hover{
        background-color: #950952;
    }
    .active{
        background-color: #087f8c;
    }
</style>

<form id="form1" runat="server">
<header style="background-color: #73ab84;font-family:'Open Sans';">
    <ul>
        <li><a href="Homepage.aspx">Home</a></li>
        <li><a href="Browse.aspx">Browse</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <li style="float:right;"><asp:LinkButton runat="server" OnClick="NavbarClick"><asp:Literal ID="lblRegister" runat="server" Text="Register/Login" ></asp:Literal></asp:LinkButton></li>
        <li style="float:right; margin-right:7%;"><a href="TopUp.aspx"><asp:Literal ID="lblCredit" runat="server" Text="Credits: xxx" Visible="false" ></asp:Literal></a></li>
    </ul> 
</header>

<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
    <div class="container">
        <h2>Top up your credits</h2>
            <asp:Literal ID="lblAmount" runat="server">Amount</asp:Literal>
            <asp:TextBox ID="tbxAmount" runat="server"></asp:TextBox>
            <asp:Button ID="BtnAddCredits" runat="server" OnClick="BtnAddCredits_Click" Text="Add to account"/>
    </div>
</body>
</form>