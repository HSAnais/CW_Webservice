<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="PpVoD_SH_UI.Homepage" Async="true" Title="Homepage"%>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>

<style type="text/css">
    div.container {
        margin-left: 20%;
        margin-right: auto;   
        width: 1400px; 
        margin:0 auto; 
        margin-top:70px;
    }
    div.left {
        float: left;
        width: 700px;
        position: absolute;
        margin-top: 60px;
        text-align: center;
    }
    div.right {
        float: right;
        width: 700px;
        margin-top: 60px;
        text-align: center;
    }
    .ImageButton{
        display:block;
        margin:0 auto;
        height : 80px;
    }
    .description{
        text-align: center;
        font-size: 20px;
        width: 300px;
        margin-left: 29%;
    }
    .title{
        text-align: center;
        font-size: 20px;
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
        <li><a href="Browse.aspx">Browse</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <!-- if logged in, change the label text to: "welcome [name]" with link to account and "credit: [status]" with link to topup -->
        <li style="float:right;"><asp:Literal ID="lblRegister" runat="server" ><a href="">Register/Login</a></asp:Literal></li>
        <li style="float:right;"><asp:Literal ID="lblCredit" runat="server" Visible="False"><a href="TopUp.aspx">Credits: </a></asp:Literal></li>
    </ul> 
</header>

<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
<form id="form1" runat="server">
    
    <div class="container">    
        <!--Headline-->    
        <h1 class="title" style="font-size:45;">Welcome to Pay-per-view on demand App</h1>
        <p class="title">Register for the service, top up your account and choose from the library the video you want to watch!</p>
    
        <!--Get video by id-->
        <div class="left">
            <h3 style="text-align:center;"> Show Videos by ID</h3>
            <p class="description"> Enter the video number you'd like to check.</p>

            <asp:Textbox ID="tbxVideoNumber" runat="server" ToolTip="Video Number"></asp:TextBox>
            <asp:Button ID="BtunGetVideobyNumber" runat="server" Text="Submit" OnClick="BtnGetVideobyNumber_Click" />
            <br /><asp:Literal ID="ltlResult" runat="server"></asp:Literal>
        </div>

        <!--Get all videos-->
        <div class="right">
            <h3 style="text-align:center;"> Show All Videos </h3>
            <p class="description">Press the button below to get all the videos shown here.</p>

            <asp:Button ID="Button1" runat="server" Text="Get All Videos" class="btn btn-primary btn-lg" OnClick="btnAllVideos_Click" />
            <br /><asp:Literal ID="ltlAllResults" runat="server"></asp:Literal>            
        </div>
    </div>
</form>
</body>
