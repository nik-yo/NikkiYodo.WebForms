<%@ Page Title="Society" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Society.Mobile.aspx.cs" Inherits="NikkiYodo.Pages.Experience.SocietyMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Experience/Society.Mobile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Here are some societies that I am a member of. 
        Some of the societies are invite-only, 
        so I thank God for the opportunity to be part of.
    </p>
    <asp:Repeater ID="rptSocieties" runat="server">
        <ItemTemplate>
            <div class="SocietyContainer">
                <h3><strong><asp:Literal ID="ltrSociety" runat="server" Text='<%# Bind("name") %>'/></strong></h3>
                <h4><asp:Literal ID="ltrPeriod" runat="server" Text='<%# Bind("period") %>' /></h4>                
                <asp:HyperLink ID="hlCertificate" runat="server" Text="Certificate" Class="SocietyCertificateTrigger" Visible="false"/>

                <br /><br />
                <asp:Panel ID="pnlSocietyCertificate" runat="server" CssClass="SocietyCertificateContainer" Visible="false">
                    <asp:Image ID="imgSocietyCertificate" runat="server" CssClass="SocietyCertificate" ImageUrl='<%# Bind("filename","~/Images/Certificates/{0}") %>' AlternateText='<%# Bind("name") %>' />
                </asp:Panel>

                <ajaxToolkit:CollapsiblePanelExtender
                    ID="cpeSocietyCertificate"
                    runat="server"
                    TargetControlID="pnlSocietyCertificate"
                    Collapsed="True"
                    ExpandControlID="hlCertificate"
                    CollapseControlID="hlCertificate" />
            </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
            <hr />
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
