<%@ Page Title="Certificates" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Certificates.Mobile.aspx.cs" Inherits="NikkiYodo.Pages.CertificatesMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Achievements/Certificates.Mobile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Thanks to one of my high school teachers that encouraged us to collect certificates and 
        a good friend of mine who encouraged me to be a go-getter. 
        I have been collecting several certificates over the years and they are listed below by categories.
    </p>    
    <asp:UpdatePanel ID="updCertificates" runat="server"><%-- Consider using AJAX instead --%>
        <ContentTemplate>
            <section class="FilterSection">
                <label>Category: </label>
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" />
            </section>
            <asp:HiddenField ID="hfRepeaterState" runat="server" />
            <asp:Repeater ID="rptCertificates" runat="server">
                <ItemTemplate>
                    <figure class="Certificate">
                        <div class="CertificateContainer">
                            <asp:Image ID="imgCertificate" runat="server" ImageUrl='<%# Bind("filename","https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Certificates/{0}") %>' AlternateText='<%# Bind("title") %>' />
                        </div>
                        <figcaption><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("title") %>' /></figcaption>                      
                    </figure>
                </ItemTemplate>
            </asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFootContent" runat="server">
    <script src="../Scripts/Achievements/Certificates.js"></script>
</asp:Content>
