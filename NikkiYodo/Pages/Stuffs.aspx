<%@ Page Title="Stuffs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stuffs.aspx.cs" Inherits="NikkiYodo.Pages.Stuffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../Styles/Stuffs.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        Hello, I'm giving away these stuffs to people who actually need them.
        Jesus has taught us that "It is more blessed to give than to receive" (Acts 20:35).
        However, the most valuable thing is free salvation that comes from Jesus alone, because these things will eventually perish.
        "If you declare with your mouth, 'Jesus is Lord,' and believe in your heart that God raised him from the dead, you will be saved." (Romans 10:9).
    </p>
    <p>
        If you know someone who needs items below or if you would like to know who Jesus is, 
        please send me email at <a href="mailto:nik85yo@gmail.com">nik85yo@gmail.com</a> or 
        text me at <a href="tel:913-229-6185">(913) 229-6185</a>.
        However, if you would like to purchase them, I included asking price and they are negotiable. :)
    </p>
    <asp:Repeater ID="rptStuffs" runat="server">
        <ItemTemplate>
            <div class="Stuff">
                <asp:Image ID="imgStuff" runat="server" ImageUrl='<%# Bind("Filename","~/Images/Stuffs/{0}") %>' CssClass="StuffImage" AlternateText='<%# Bind("Title") %>' />
                <div class="StuffInfo">
                    <div><strong><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Literal></strong></div>
                    <div><asp:Literal ID="ltrDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Literal></div>

                    <br>
                    <div><strong>Model: </strong><asp:Literal ID="ltrModel" runat="server" Text='<%# Bind("Model") %>'></asp:Literal></div>
                    <div><strong>Condition: </strong><asp:Literal ID="ltrCondition" runat="server" Text='<%# Bind("Condition") %>'></asp:Literal></div>
                    <div><strong>Asking price: </strong>$<asp:Literal ID="ltrPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Literal></div>
                </div>
            </div>            
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
