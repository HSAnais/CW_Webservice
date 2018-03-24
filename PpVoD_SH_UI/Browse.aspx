<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="PpVoD_SH_UI.Browse" Async="true" %>

<style type="text/css">
    div.container {
        margin-left: 40%;
        margin-right: 25%;   
        width: 1400px; 
        margin:0 auto; 
        margin-top:70px;
        text-align: left;
    }
    .datalist{
        margin-left: 25%;
        margin-right: 25%;
        text-align:center;
        height: 350px;
        width: 900px;
        overflow:auto;
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
        <li style="float:right;"><asp:Literal ID="lblRegister" runat="server" ><a href="UserAccount.aspx">Welcome</a></asp:Literal></li>
        <li style="float:right;"><asp:Literal ID="lblCredit" runat="server"><a href="TopUp.aspx">Credits: </a></asp:Literal></li>
    </ul> 
</header>

<body style="background-color:#283044; color:#73ab84; font-family:'Open Sans';">
<form id="form1" runat="server">

    <div class="container">
        <h2 style="text-align:center">Choose a movie to watch</h2>
    </div>        
     
    <%-- Action DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAction" runat="server"><h3>Action</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAction"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year")%>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>
    
    <%-- Adventure DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAdventure" runat="server"><h3>Adventure</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAdventure"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Animation DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAnimation" runat="server"><h3>Animation</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAnimation"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Documentary DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblDocumentary" runat="server"><h3>Documentary</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlDocumentary"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Drama DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblDrama" runat="server"><h3>Drama</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlDrama"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Fantasy DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblFantasy" runat="server"><h3>Fantasy</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlFantasy"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Horror DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblHorror" runat="server"><h3>Horror</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlHorror"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>

    <%-- Sci-fi DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblScifi" runat="server"><h3>Sci-fi</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlScifi"  runat="server"
            RepeatColumns="0" 
            CellSpacing="20" 
            RepeatDirection="Horizontal">

            <itemtemplate>
<%--            <a href="Watching.aspx?ID=<%#:Item.VideoID%>">--%>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>'/>
                <br />
                <b><%#Eval("Title")%></b>
                <br />
                Year: <%#Eval("Year") %>
                <br />
                <b>Price: </b><%#Eval("Price") %>
                <br />
                <b>Rating: </b><%#Eval("Rating") %>
                <br />
                Description:<%#Eval("Plot") %>
            </itemtemplate>
        </asp:DataList>
        </div>
</form>
</body>
