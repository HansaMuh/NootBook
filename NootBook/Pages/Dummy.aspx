<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Master/Home.Master" AutoEventWireup="true" CodeBehind="Dummy.aspx.cs" Inherits="NootBook.Pages.Dummy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    Unlucky, you are not allowed to access this page.

    <!-- Introduction Section -->
    <section class="Introduction-Section">
        <!-- Image Background -->
        <div class="Introduction-Section-Background">
            <asp:Image runat="server" ImageUrl="../Images/NootBook_Logo.png" alt="NootBook Logo" class="Introduction-Section-Image" />
        </div>
        <!-- Main Content -->
        <div class="Introduction-Section-Content">
            <h1 class="Introduction-Section-Content-Caption">
                The online notebook for your usual activities. Every day.
            </h1>
            <p class="Introduction-Section-Content-Description">
                NootBook is a simple-yet-modern workspace that guides you in writing for your documents and databases. 
                Get things done in a more organized way.
            </p>
            <a href="Workspace.aspx" class="Section-Button-Link">Get Started</a>
        </div>
    </section>


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
                <a class="doc" href="../Project%20Page/ProjectPage.aspx">Document</a>
                <asp:Button class="jurnal" runat="server" Text="Jurnal" />
                <a class="sticky" href="../StickyPage/StickyNotesPage.aspx">StickyNotes</a>
            </div>
        </div>
    </section>
</asp:Content>
