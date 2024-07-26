<%@ Page Title="ezRETS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ezRETS.aspx.cs" Inherits="NikkiYodo.Pages.Experience.TechnologyPages.ezRETS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
    Technology
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <br />
    <h3>History</h3>
    <p>
        One of the projects during my time as Graduate Assistant was 
        trying to figure out how to get the data from real estate databases all over Kansas.
        I learned about SQL but realize the databases were using DMQL.
        Fortunately, there is ezRETS which acts as both driver/connector and translator.
        Basically, we can connect and query using SQL and ezRETS will handle the rest.
    </p>

    <br />
    <h3>Utilization</h3>
    <p>
        We used ezRETS as our choice ODBC driver to retrieve data from real estate databases.
        The only contribution we gave back to ezRETS was a bug report in one of the versions 
        long time ago.
    </p>

    <br />
    <h3>Projects</h3>
    <ul>
        <li>Real Estate reports generator</li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
