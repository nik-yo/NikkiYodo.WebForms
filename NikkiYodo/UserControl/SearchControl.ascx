<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchControl.ascx.cs" Inherits="NikkiYodo.UserControl.SearchControl" %>
<div class="UCSearchContainer <%= CssClass %>">
    <asp:TextBox ID="txtSearch" runat="server" TextMode="Search" CssClass="UCSearchBox" onclick="this.select();"/>
    <asp:ImageButton ID="btnSearch" runat="server" 
        ImageUrl="~/Assets/search_icon.png" CssClass="UCSearchButton" 
        OnClick="btnSearch_Click"/>
</div>