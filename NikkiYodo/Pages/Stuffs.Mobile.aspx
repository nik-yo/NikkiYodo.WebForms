<%@ Page Title="Stuffs for Sale" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stuffs.Mobile.aspx.cs" Inherits="NikkiYodo.Pages.StuffsMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../Styles/Stuffs.Mobile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Hello, I have some stuffs that I would like to sell.
        If there is anything interests you, please email me at <a href="mailto:nik85yo@gmail.com">nik85yo@gmail.com</a> or text me at <a href="tel:913-229-6185">(913) 229-6185</a>.
        I can only sell to those in Wichita and Kansas City area.
    </p>
    <asp:Repeater ID="rptStuffs" runat="server">
        <ItemTemplate>
            <div class="Stuff">
                <asp:Image ID="imgStuff" runat="server" ImageUrl='<%# Bind("Filename","~/Images/Stuffs/{0}") %>' CssClass="StuffImage" AlternateText='<%# Bind("Title") %>' />
                <div class="StuffInfo">
                    <div><strong><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Literal></strong></div>
                    <div><asp:Literal ID="ltrDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Literal></div>
                    <div><strong>Model: </strong><asp:Literal ID="ltrModel" runat="server" Text='<%# Bind("Model") %>'></asp:Literal></div>
                    <div><strong>Condition: </strong><asp:Literal ID="Literal1" runat="server" Text='<%# Bind("Condition") %>'></asp:Literal></div>
                    <div><strong>Asking price: </strong>$<asp:Literal ID="ltrCondition" runat="server" Text='<%# Bind("Price") %>'></asp:Literal></div>
                </div>
            </div>            
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
