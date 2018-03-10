<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="PpVoD_SH_UI.Homepage" Async="true" Title="Homepage"%>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>

<style type="text/css">
    div.container {
        margin-left: auto;
        margin-right: auto;   
        width: 1400px; 
        margin:0 auto; 
    }
    div.left {
        float: left;
        width: 700px;
        position: absolute;
        margin-top: 60px;
    }
    div.right {
        float: right;
        width: 700px;
        margin-top: 60px;
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
</style>

<body>
    <form id="form1" runat="server">
<div class="container" style="margin-top:70px;">    
    <!--Header-->    
    <h1 style="text-align:center; width: 600px; margin-left:30%">Test Pay-per-view on demand App</h1>
    <br />
    <p class="title">This is a test Application for communicating with a Webservice.</p>
    
    <!--Get video by id-->
    <div class="left">
        <asp:Textbox ID="tbxVideoNumber" runat="server" ToolTip="Video Number"></asp:TextBox>
        <asp:Button ID="BtunGetVideobyNumber" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="BtnGetVideobyNumber_Click" />
        <p>
            <asp:Literal ID="ltlResult" runat="server"></asp:Literal>
        </p>
        <h3 style="text-align:center;"> Show Videos by ID</h3>
        <p class="description"> Enter the video number you'd like to check.</p>
    </div>

    <!--Get all videos-->
    <div class="right">
        <asp:Button ID="Button1" runat="server" Text="Get All Videos" class="btn btn-primary btn-lg" OnClick="btnAllVideos_Click" />
        <p>
             <asp:Literal ID="ltlAllResults" runat="server"></asp:Literal>
        </p>
        <h3 style="text-align:center;"> Show All Videos </h3>
        <p class="description">Press the button below to get all the videos shown here.</p>
    </div>
</div>
</form>
</body>
