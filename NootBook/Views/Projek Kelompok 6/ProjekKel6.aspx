<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProjekKel6.aspx.cs" Inherits="NootBook.Views.Projek_Kelompok_6.ProjekKel6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- CSS -->
    <link href="ProjekKel6.css" rel="stylesheet" />

    <section class="hero">
    <div class="doc-nav">
        <div class="header-doc">
            <input class="doc-folder" type="text" placeholder="Software Enginnering"/>
        </div>
        <div class="header-doc2">
            <p>edited</p>
            <asp:Button Id="share" runat="server" class="header2-share" data-feather="share-2" />
            <asp:Button ID="favorite" runat="server" class="header2-favorite" data-feather="star" />
        </div>
    </div>
    <div class="garis">
    </div>
    <div class="judul">
        <input class="doc-title" type="text" placeholder="Projek Kelompok 6"/>
        <div class="garis2"></div>
    </div>
    <div class="doc-isi">
        <textarea class="isi-note">
            Welcome To nootbook

            NootBook, aplikasi catatan digital yang dapat membantu menuangkan kreativitas dalam buku catatan serba digital yang sederhana.
        </textarea>
    </div>
    </section>
    <section class="tools">
        <div class="ToolBox">
            <asp:Button Id="KURSOR" runat="server" class="kursor" data-feather="mouse-pointer" />
            <asp:Button Id="TEXTBOX" runat="server" class="textbox" data-feather="type" />
            <asp:Button Id="PENCIL" runat="server" class="pencil" data-feather="edit-2" />
            <asp:Button Id="ERESER" runat="server" class="ereser" data-feather="x" />
            <asp:Button Id="CUT" runat="server" class="cut" data-feather="scissors" />
            <asp:Button Id="STICKER" runat="server" class="sticker" data-feather="image" />
            <asp:Button Id="SHAPE" runat="server" class="shape" data-feather="square" />
        </div>
    </section>
</asp:Content>
