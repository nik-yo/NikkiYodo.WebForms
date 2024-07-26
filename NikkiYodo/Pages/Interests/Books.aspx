<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="NikkiYodo.Pages.Interests.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Interests/Books.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Reading has been one thing that I loved since young.
        I personally prefer non-fiction though I do read some fiction books.
        Some books that I have read are listed below.
    </p>

    <%--<asp:DropDownList ID="ddlAuthor"></asp:DropDownList>--%>
    <div class="Books">
        <asp:Repeater ID="rptBooks" runat="server">
            <ItemTemplate>
                <div class="BookContainer">
                    <figure>
                        <asp:Image ID="imgBook" runat="server" ImageUrl='<%# Bind("Filename", "https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Books/{0}") %>' AlternateText='<%# Bind("Title") %>' />
                    </figure>
                    <div class="BookInfo">
                        <h5><strong><span class="BookTitle"><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("title") %>' /></span></strong></h5>
                        <h6><span class="BookTitle"><asp:Literal ID="ltrSubtitle" runat="server" Text='<%# Bind("subtitle") %>' /></span></h6>
                        <h5><i><asp:Literal ID="ltrAuthor" runat="server" Text='<%# Bind("author") %>' /></i></h5>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
