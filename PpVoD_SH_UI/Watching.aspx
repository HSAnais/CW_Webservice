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

<header style="background-color: #73ab84;font-family:'Open Sans';">
    <ul>
        <li><a href="Homepage.aspx">Home</a></li>
        <li><a href="Browse.aspx">Browse</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <!-- if logged in, change the label text to: "welcome [name]" with link to account and "credit: [status]" with link to topup -->
        <li style="float:right;"><asp:Literal ID="lblRegister" runat="server" ><a href="UserAccount.aspx">Welcome</a></asp:Literal></li>
        <li style="float:right;"><asp:Literal ID="lblCredit" runat="server"><a href="TopUp.aspx">Credits: </a></asp:Literal></li>
    </ul> 
</header>

<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
<form id="form1" runat="server">
    <asp:Button ID="BtnFinish" runat="server" Text="Finish viewing" CssClass="rightBtn" OnClick="FinishVideoBtn_Click" />
    <br />
    <div class="container">        
        <img alt="Current video playing" src="Content/Jupiter_landscape.jpg" class="video" />
        <div class="description">
            <div class="right">
                <asp:Literal ID="lblRating" runat="server"><h3>Rating: [Rating]</h3></asp:Literal>
            </div>
        <asp:Literal ID="lblTitle" runat="server"><h2>[Title of movie will be here]</h2></asp:Literal>
        <asp:Literal ID="lblGenreYear" runat="server"><h3>Genres: [Genre list], Year: [Year]</h3></asp:Literal>
        <asp:Literal ID="lblPlot" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus in massa tempor nec feugiat nisl pretium fusce. Aliquam vestibulum morbi blandit cursus risus at ultrices. Tincidunt lobortis feugiat vivamus at augue. Dui sapien eget mi proin sed libero enim. Elit ullamcorper dignissim cras tincidunt lobortis. Lacinia at quis risus sed vulputate odio ut. Purus in massa tempor nec feugiat nisl pretium fusce.</asp:Literal>
    
        </div>
    </div>
    </form>
</body>