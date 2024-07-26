<%@ Page Title="Badges" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Badges.aspx.cs" Inherits="NikkiYodo.Pages.Achievements.Badges" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Achievements/Badge.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Apart from certificates, sometimes badges are given.
        The following are some badges that I received.
    </p>

    <div class="Badges">
        <asp:Repeater ID="rptBadges" runat="server">
            <ItemTemplate>
                <div class="BadgeContainer">
                    <asp:Image ID="imgBadge" runat="server" ImageUrl='<%# Bind("filename", "https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Badges/{0}") %>' AlternateText='<%# Bind("title") %>' />
                    <div class="BadgeInfo">
                        <h5><strong><span class="BadgeTitle"><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("title") %>' /></span></strong></h5>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
