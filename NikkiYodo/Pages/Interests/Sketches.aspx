<%@ Page Title="Sketches" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sketches.aspx.cs" Inherits="NikkiYodo.Pages.Interests.Sketches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Interests/Sketches.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        I love sketching since young. Some of the things I used to sketch was cartoon characters and aircrafts.
        Only much later, I'm interested in sketching anime characters.
        Here are some of them.
    </p>
    <asp:Repeater ID="rptSketches" runat="server">
        <ItemTemplate>
            <figure class="Sketch">
                <div class="SketchContainer">
                    <asp:Image ID="imgSketch" runat="server" ImageUrl='<%# Bind("filename","https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Sketches/{0}") %>'  AlternateText='<%# Bind("title") %>'/>
                </div>
                <figcaption><strong><asp:Literal ID="ltrCharacter" runat="server" Text='<%# Bind("title") %>' /></strong> [<asp:Literal ID="ltrAnime" runat="server" Text='<%# Bind("anime") %>' />]</figcaption>
            </figure>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
