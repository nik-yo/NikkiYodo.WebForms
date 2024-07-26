<%@ Page Title="Earphones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Earphones.aspx.cs" Inherits="NikkiYodo.Pages.Interest.Earphones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Interests/Earphones.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        When I first tried Monoprice 8320, I was surprised on how some cheap earphones can sound really good.
        Since then, I tried many different earphones.
        The following list are earphones that I have tried.
    </p>
    <div class="Earphones">
        <asp:Repeater ID="rptEarphones" runat="server">
            <ItemTemplate>
                <div class="EarphoneContainer">
                    <asp:Image ID="imgEarphone" runat="server" ImageUrl='<%# Bind("filename", "https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Earphones/{0}") %>' AlternateText='<%# Bind("name") %>' />
                    <div class="EarphoneInfo">
                        <h5><span class="EarphoneName"><asp:Literal ID="ltrName" runat="server" Text='<%# Bind("name") %>' /></strong></h5>
                    </div>              
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
