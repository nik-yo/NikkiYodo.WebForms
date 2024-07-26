<%@ Page Title="Windows Service" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WindowsService.aspx.cs" Inherits="NikkiYodo.Pages.Experience.TechnologyPages.WindowsService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
    Technology
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <br />
    <h3>History</h3>
    <p>
        When I worked for Envision, I did not have access to the main database,
        but I was given read access. Sometimes I need to update our application data with data from the database.
        That is when I explored Windows Service. I created a service which ran nightly to retrieve data from the main database
        and update the backend data storage for our application.
    </p>

    <br />
    <h3>Utilization</h3>
    <p>
        The only time I created a Windows Service was when I was with Envision to sync data.
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
