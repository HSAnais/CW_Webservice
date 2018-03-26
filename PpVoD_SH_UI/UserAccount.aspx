<%@ Register TagPrefix="cc1" Namespace="BunnyBear" Assembly="msgBox" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="PpVoD_SH_UI.UserAccount" Async="true"%>

<style type="text/css">
    div.container {
        margin-left: 25%;
        margin-right: 25%;   
        /*width: 1400px;*/ 
        /*margin:0 auto;*/ 
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
    .AddCreditsBtn {
        margin-top: 10px;
        text-align: center;
        background-color: #087f8c;
        border:none;
        font-size: 18px;
        border-radius: 2px;
        padding: 7px 14px;
        font-weight:bold;
    }
    .datalist{
        /*margin-left: 25%;
        margin-right: 25%;*/
        height: 350px;
        width: 900px;
        overflow:auto;
    }
    .selectItem{
        text-align:left;
        color: #73ab84;
    }
    .selectItem:hover{
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
    <!--Title-->
    <div class="container">
        <asp:Literal ID="lblWelcome" runat="server" Text="<span style='font-weight:bold; font-size:30px;'>Welcome back, [name]!</span>" ></asp:Literal>
        <br />
        <asp:Literal ID="lblAmount" runat="server" Text="You have <span style='color:#087f8c'>[credits]</span> credits." ></asp:Literal>
        <br/>
        <asp:Button ID="BtnAddCredits" runat="server" OnClick="BtnAddCredits_Click" Text="Top up" ForeColor="#283044" CssClass="AddCreditsBtn" />
        <br />
        <asp:Button ID="BtnEditAccount" runat="server" OnClick="BtnEditAccount_Click" Text="Edit your information" ForeColor="#283044" CssClass="AddCreditsBtn" />
        <br />
        <asp:Button ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="Log out" ForeColor="#283044" CssClass="AddCreditsBtn" />
    </div>

    <!--Rent History-->
    <div class="container" style="text-align:left">
        <asp:Literal ID="lblHistory" runat="server"><h3>Recently watched:</h3></asp:Literal>
        <br />
        <div class="datalist">
        <asp:DataList ID="dlHistory"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal" 
            OnItemDataBound="DL_ItemDataBound"
            OnItemCommand="DL_ItemCommand">

            <itemtemplate>
                <asp:LinkButton id="SelectButton" CommandName="Select" runat="server" CssClass="selectItem" >
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><asp:Literal ID="Literal1" runat="server" Text='<%#Eval("Title")%>'></asp:Literal></b>
                <br />
                <b>Year: </b><asp:Literal ID="Literal2" runat="server" Text='<%#Eval("Year") %>'></asp:Literal>
                <br />
                <b>Price: </b><asp:Literal ID="Literal3" runat="server" Text='<%#Eval("Price") %>'></asp:Literal>
                <br />
                <b>Rating: </b><asp:Literal ID="Literal4" runat="server" Text='<%#Eval("Rating") %>'></asp:Literal>
                <br />
                <b>Description: </b><asp:Literal ID="Literal5" runat="server" Text='<%#Eval("Plot") %>'></asp:Literal>
                </asp:LinkButton>
            </itemtemplate>
        </asp:DataList>
        </div>
    </div>
</body>
<cc1:msgBox ID="MsgBox1" runat="server"></cc1:msgBox>
</form>