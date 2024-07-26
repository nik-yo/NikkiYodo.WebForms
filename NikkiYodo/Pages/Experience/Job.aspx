<%@ Page Title="Job History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="NikkiYodo.Pages.Experience.Job" %>
<asp:Content ID="cntHeadContent" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Experience/Job.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="cntMainContent" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>I started working when I entered college in Malaysia. 
        Until now, I am grateful to a friend of mine who hooked me up with my first job ever.
        Listed below are my work history starting from the most recent.</p>
    <asp:Repeater ID="rptJobs" runat="server" OnItemDataBound="rptJobs_ItemDataBound">
        <ItemTemplate>
            <div class="JobContainer">
                <asp:Panel ID="pnlJob" runat="server" CssClass="JobHeader">
                    <h3><asp:Literal ID="ltrPosition" runat="server" Text='<%# Bind("title") %>' /></h3>
                    <div><asp:Literal ID="ltrEmployer" runat="server" Text='<%# Bind("employer") %>' /> (<asp:Literal ID="ltrPeriod" runat="server" Text='<%# Bind("period") %>' />)</div>
                </asp:Panel>
                
                <asp:Panel ID="pnlJobDetails" runat="server">
                    <asp:Repeater ID="rptJobDetails" runat="server">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <li><asp:Literal ID="ltrDetails" runat="server" Text='<%# Bind("content") %>'/></li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </asp:Panel>               

                <ajaxToolkit:CollapsiblePanelExtender
                    ID="cpeJob"
                    runat="server"
                    TargetControlID="pnlJobDetails"
                    Collapsed="False"
                    ExpandControlID="pnlJob"
                    CollapseControlID="pnlJob" />
            </div>
        </ItemTemplate>
    </asp:Repeater>    
</asp:Content>
