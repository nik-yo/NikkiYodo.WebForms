<%@ Page Title="Remote Debugging" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemoteDebugging.aspx.cs" Inherits="NikkiYodo.Pages.Experience.TechnologyPages.RemoteDebugging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
    Technology
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <br />
    <h3>History</h3>
    <p>
        There was once we had problem in DCI on our test environment.
        The code works perfectly locally in our machine but when we deployed to test,
        it stopped working. So I tried to figure out to do remote debugging with Visual Studio.
        Although it is not to be separated from Visual Studio,
        it requires a separate setup to make sure that Visual Studio able to communicate with the server and
        allowed debugging to be performed remotely.
    </p>

    <br />
    <h3>Utilization</h3>
    <p>
        I used it rarely in DCI and one of our lead programmers was happy that I managed to get it working on our test environment.
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
