<%@ Register TagPrefix="cc1" Namespace="BunnyBear" Assembly="msgBox" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Watching.aspx.cs" Inherits="PpVoD_SH_UI.Watching" Async="true" Title="Streaming" %>

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
    .rightBtn {
        float: right;
        margin-top: 2.5%;
        text-align: center;
        margin-right: 20.5%;
        background-color: #950952;
        border:none;
        font-size: 18px;
        border-radius: 3px;
        padding: 10px 28px;
    }
    .video{
        text-align:center;
        margin-top: 1.5%;
        width: 80%;
    }
    .right{
        float: right;
    }
    .description{
        text-align:left;
        margin-left:15%;
        margin-right:15%;
        margin-top:2%;
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
    <asp:Button ID="BtnFinish" runat="server" Text="Finish viewing" CssClass="rightBtn" OnClick="FinishVideoBtn_Click" />
    <br />
    <div class="container">        
        <img alt="Current video playing" src="Content/Jupiter_landscape.jpg" class="video" />
        <div class="description">
            <div class="right">
                <asp:Literal ID="lblRating" runat="server"><h3>Rating: [Rating]</h3></asp:Literal>
            </div>
        <asp:Literal ID="lblTitle"  runat="server" Text="<span style='font-weight:bold; font-size:20px;'>[Title of movie will be here]</span>"></asp:Literal>
        <br />
        <asp:Literal ID="lblYear" runat="server" Text="<span style='font-weight:bold;'>Year: [Year]</span>"></asp:Literal>
        <br />
        <asp:Literal ID="lblPlot" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec feugiat nisl pretium fusce. Aliquam vestibulum morbi blandit cursus risus at ultrices. Tincidunt lobortis feugiat vivamus at augue. Dui sapien eget mi proin sed libero enim. Elit ullamcorper dignissim cras tincidunt lobortis. Lacinia at quis risus sed vulputate odio ut. Purus in massa tempor nec feugiat nisl pretium fusce."></asp:Literal>
        </div>
    </div>
    <cc1:msgBox ID="MsgBox1" runat="server"></cc1:msgBox>
</body>    
</form>