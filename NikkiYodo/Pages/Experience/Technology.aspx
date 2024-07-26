<%@ Page Title="Technology" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Technology.aspx.cs" Inherits="NikkiYodo.Pages.Experience.Technology" %>
<%@ Register Src="~/UserControl/SearchControl.ascx" TagPrefix="uc1" TagName="SearchControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">    
    <link href="../../Styles/Experience/Technology.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        As expected, I'm very fascinated with Technology and attempt to learn as much as I can. 
        The following are some technology that I ever interact with.
    </p>
    <%--<uc1:SearchControl runat="server" ID="ucSearchControl" Placeholder="Enter name of a technology" 
        CssClass="SearchContainer" OnKeyUp="TechnologyJS.filter(this.value);" />--%>
    <asp:Repeater ID="rptTechnology" runat="server" OnItemDataBound="rptTechnology_ItemDataBound">
        <ItemTemplate>
            <div class="TechnologyContainer" runat="server">                
                <asp:Label ID="lblCategory" runat="server" Text='<%# Bind("name") %>' CssClass="TechnologyCategory"></asp:Label>
                <asp:Panel ID="pnlTechnologyDetails" runat="server" CssClass="TechnologyDetails" Visible="False">
                    <asp:DataList ID="dlTechnology" runat="server" RepeatColumns="3" CssClass="TechnologyList">
                        <ItemTemplate>
                            <asp:Literal ID="ltrTechnology" runat="server" Text='<%# Eval("name") %>'/>
                        </ItemTemplate>
                    </asp:DataList>                    
                </asp:Panel>                
            </div>
            <ajaxToolkit:CollapsiblePanelExtender ID="cpe" runat="server"
                TargetControlID="pnlTechnologyDetails"
                ExpandControlID="btnCategory"
                CollapseControlID="btnCategory"
                SuppressPostBack="true"
                Collapsed="true"/>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFootContent" runat="server">
    <script src="../../Scripts/Experience/Technology.js"></script>
</asp:Content>
