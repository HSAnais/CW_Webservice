<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PpVoD_SH_UI.Contact" Title="Contact" Async="true" %>

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
        <p>This project belongs to Stefania Anais Hristea, as part of the Distributed Interactive Application Development course at University of Greenwich.</p>
        <br />
        <p><b>Credits: </b>Ning Liao, Liang Yang, 3 Sep 2004, "A Simple ASP.NET Server Control: Message Box & Confirmation Box", Available at: <a style="display:inline; text-align:left; padding:0; color:#73ab84; " href="https://www.codeproject.com/Articles/8173/A-Simple-ASP-NET-Server-Control-Message-Box-Confir">CodeProject</a> </p>
        <p><b>March 2018</b></p>
    </div>
</body>    
</form>