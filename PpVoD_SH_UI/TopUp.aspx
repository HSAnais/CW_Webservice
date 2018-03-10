﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopUp.aspx.cs" Inherits="PpVoD_SH_UI.TopUp" Async="true" Title="Top up your credits" %>

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

<header style="background-color: #73ab84;font-family:'Open Sans';">
    <ul>
        <li><a href="Homepage.aspx">Home</a></li>
        <li><a href="news.asp">Browse</a></li>
        <li><a href="contact.asp">Contact</a></li>
        <!-- if logged in, change the label text to: "welcome [name]" with link to account and "credit: [status]" with link to topup -->
        <li style="float:right;"><asp:Literal ID="lblRegister" runat="server" ><a href="">Welcome</a></asp:Literal></li>
        <li style="float:right;"><asp:Literal ID="lblCredit" runat="server"><a href="TopUp.aspx">Credits: </a></asp:Literal></li>
    </ul> 
</header>
<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
<form id="form1" runat="server">
    <div class="container">
        <h2>Top up your credits</h2>
            <asp:Literal ID="lblAmount" runat="server">Amount</asp:Literal>
            <asp:TextBox ID="tbxAmount" runat="server"></asp:TextBox>
            <asp:Button ID="BtnAddCredits" runat="server" OnClick="BtnAddCredits_Click" Text="Add to account"/>
    </div>
</form>
</body>