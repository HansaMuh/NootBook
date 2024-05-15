<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="IntroductionPage.aspx.cs" Inherits="NootBook.Views.IntroductionPage.IntroductionPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Introduction</title>
        <link href="IntroductionStyle.css" rel="stylesheet" />
    </head>
    <body>
        <section class="intro">
            <h1>
                Welcome To  nootbook
            </h1>
            <p class="pendahuluan">
                NootBook, aplikasi catatan digital yang dapat membantu Anda menuangkan kreativitas dalam buku catatan serba digital yang sederhana.
            </p>
            <img src="../Booting/LOGOLG-removebg-preview.png" />
            <div class="awal">
                <p>
                    Start With
                </p>
                <div class="button-awal">
                    <a class="doc" href="DocumentPage.aspx">Document</a>
                    <asp:Button class="jurnal" runat="server" Text="Jurnal" />
                    <a class="sticky" href="StickyNotesPage.aspx">StickyNotes</a>
                </div>
            </div>
        </section>
    </body>
    </html>
</asp:Content>
