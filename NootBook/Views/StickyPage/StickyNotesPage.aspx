<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="StickyNotesPage.aspx.cs" Inherits="NootBook.Views.StickyPage.StickyNotesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>StickyNotes</title>
        <link href="StickyStyle.css" rel="stylesheet" />
    </head>
    <body>
        <div class="header-doc2">
            <p>edited</p>
            <asp:Button Id="share" runat="server" class="header2-share" data-feather="share-2" />
            <asp:Button ID="favorite" runat="server" class="header2-favorite" data-feather="star" />
        </div>
        <section class="stickynote">
            <button class="tambah" onclick="addNote()" type="button">
               +
            </button>
        </section> 
        <section class="note-container">

        </section>
        <script src="StickyScript.js"></script>
    </body>
    </html>
</asp:Content>
