<%@ Page Title="Music" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Music.aspx.cs" Inherits="NikkiYodo.Pages.Interests.Music" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeadContent" runat="server">
    <link href="../../Styles/Interests/Music.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>
        For music, I'm into Celtic and Japanese/Anime songs.
        Although, I listened to other genre as well such as Christian, Pop, Classical, Indonesian, etc.
    </p>

    <div class="MusicAlbums">
        <asp:Repeater ID="rptMusicAlbums" runat="server">
            <ItemTemplate>
                <div class="MusicAlbumContainer">
                    <asp:Image ID="imgMusicAlbum" runat="server" ImageUrl='<%# Bind("filename", "https://s3.us-east-2.amazonaws.com/nikkiyodo/Images/Music/{0}") %>' AlternateText='<%# Bind("title") %>' />
                    <div class="MusicAlbumInfo">
                        <h5><strong><span class="MusicAlbumTitle"><asp:Literal ID="ltrTitle" runat="server" Text='<%# Bind("title") %>' /></span></strong></h5>
                        <h6><span class="MusicAlbumTitle"><asp:Literal ID="ltrArtist" runat="server" Text='<%# Bind("artist") %>' /></span></h6>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFootContent" runat="server">
</asp:Content>
