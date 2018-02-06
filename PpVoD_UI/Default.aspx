<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PpVoD_UI._Default" Async="true"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Test Pay-per-view on demand App</h1>
        <p class="lead">This is a test Application for communicating with a Webservice.</p>
        <p><a href="" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Show Videos by ID</h2>
            <p>
                Enter the video number you'd like to check.</p>
            <p>
                <asp:TextBox ID="tbxVideoNumber" runat="server" ToolTip="Video Number"></asp:TextBox><asp:Button ID="BtunGetVideobyNumber" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="BtunGetVideobyNumber_Click" />
            </p>
            <p>
                <asp:Literal ID="ltlResult" runat="server"></asp:Literal>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Show All Videos</h2>
            <p>
                Press the button below to get all the videos shown here.
            </p>
            <p>
                <asp:Button ID="btnAllVideos" runat="server" Text="Get All Videos" class="btn btn-primary btn-lg" OnClick="btnAllVideos_Click" />
            </p>
            <p>
                <asp:Literal ID="ltlAllResults" runat="server"></asp:Literal>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Editing Videos can also be added here</h2>
            <p>
                We can start adding more abilities here for updating/inserting data to the Webservice.
            </p>
            <p>
                
            </p>
        </div>
    </div>

</asp:Content>
