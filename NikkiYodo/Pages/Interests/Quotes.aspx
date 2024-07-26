<%@ Page Title="Quotes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quotes.aspx.cs" Inherits="NikkiYodo.Pages.Interests.Quotes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Interests/Quotes.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        The following are some of my favorite quotes.
    </p>
    
    <div class="Quotes">
        <asp:Repeater ID="rptQuotes" runat="server">
            <ItemTemplate>
                <div class="QuoteContainer">
                    <div>
                        <blockquote><p><asp:Literal ID="ltrQuote" runat="server" Text='<%# Bind("quote") %>'/></p></blockquote>
                        <div class="Cite"><cite>- <asp:Literal ID="ltrCite" runat="server" Text='<%# Bind("cite") %>' /></cite></div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
