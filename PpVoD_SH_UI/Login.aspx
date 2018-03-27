<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PpVoD_SH_UI.Login" Async="true" %>

<style type="text/css">
    div.container {
        margin-left: 20%;
        margin-right: 20%;   
        text-align: center;
        display: inline;
    }
    div.left {
        float: left;
        text-align: left;
        margin-left: 25%;
        margin-top: 3.5%;
        width: 300px;
        position: absolute;
    }
    div.right {
        float: right;
        text-align: right;
        margin-right: 30%;
        margin-top: 5%;
        width: 300px;
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
    .verticalLine {
        border-left: thick solid #73ab84;
        display: inline-block;
        height: 200px;
        width: 3px;
        margin-top: 100px;
        position: absolute;
        margin-left: 27%;
    }   
    .button {
        text-align: center;
        margin-top: 10px;
        background-color: #73ab84 ;
        border:none;
        font-size: 18px;
        border-radius: 3px;
        padding: 7px 20px;
    }
</style>

<header style="background-color: #73ab84;font-family:'Open Sans';">
    <ul>
        <li><a href="Homepage.aspx">Home</a></li>
        <li><a href="Browse.aspx">Browse</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
    </ul> 
</header>

<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
<form id="form1" runat="server">
    <div class="container">
        <div class="left">
            <h2>Register a new account</h2>
            <asp:Literal ID="lblName" runat="server">Name: </asp:Literal>
            <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
            <br/>
            <asp:Literal ID="lblEmail" runat="server">Email: </asp:Literal>
            <asp:TextBox ID="tbxEmail" TextMode="Email" runat="server"></asp:TextBox>
            <br/>
            <asp:Literal ID="lblPassword" runat="server">Password: </asp:Literal>
            <asp:TextBox ID="tbxPassword" TextMode="Password" runat="server"></asp:TextBox>
            <br/>
            <asp:Literal ID="lblCreditCard" runat="server">Credit card: </asp:Literal>
            <asp:TextBox ID="tbxCreditCard" runat="server"></asp:TextBox>
            <br/>
            <asp:Literal ID="lblRegisterErrors" runat="server" Visible="false"></asp:Literal>
            <br />
            <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" CssClass="button" Text="Register"/>
        </div>

        <div class="verticalLine">
        </div>

        <div class="right">
            <h2>Login into your account</h2>
            <asp:Literal ID="lblUsername" runat="server">Email: </asp:Literal>
            <asp:TextBox ID="tbxUsername" TextMode="Email" runat="server"></asp:TextBox>
            <br/>
            <asp:Literal ID="lblPass" runat="server">Password: </asp:Literal>
            <asp:TextBox ID="tbxPass" TextMode="Password" runat="server"></asp:TextBox>
            <br/>
            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" CssClass="button" Text="Login"/>
            <br />
            <asp:Literal ID="lblLoginErrors" runat="server" Visible="false"></asp:Literal>
        </div>
    </div>
</form>
</body>