<%@ Register TagPrefix="cc1" Namespace="BunnyBear" Assembly="msgBox" %>
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
        <h2 style="text-align:center">Choose a movie to watch</h2>
    </div>        
     
    <%-- Action DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAction" runat="server"><h3>Action</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAction"  runat="server"
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
    
    <%-- Adventure DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAdventure" runat="server"><h3>Adventure</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAdventure"  runat="server"
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

    <%-- Animation DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblAnimation" runat="server"><h3>Animation</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlAnimation"  runat="server"
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

    <%-- Documentary DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblDocumentary" runat="server"><h3>Documentary</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlDocumentary"  runat="server"
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

    <%-- Drama DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblDrama" runat="server"><h3>Drama</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlDrama"  runat="server"
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

    <%-- Fantasy DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblFantasy" runat="server"><h3>Fantasy</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlFantasy"  runat="server"
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

    <%-- Horror DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblHorror" runat="server"><h3>Horror</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlHorror"  runat="server"
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

    <%-- Sci-fi DataList--%>
    <div style="margin-left: 26%"><asp:Literal ID="lblScifi" runat="server"><h3>Sci-fi</h3></asp:Literal></div>
    <div class="datalist">
        <asp:DataList ID="dlScifi"  runat="server"
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
</body>
<cc1:msgBox ID="MsgBox1" runat="server"></cc1:msgBox>
</form>