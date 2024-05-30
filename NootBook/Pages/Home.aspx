<%@ Page Title="NootBook - Online Workspace" Language="C#" MasterPageFile="~/Pages/Master/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NootBook.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Styles -->
    <link rel="stylesheet" href="Styles/Home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Introduction Section -->
    <section class="Introduction-Section">
        <!-- Image Background -->
        <div class="Introduction-Section-Background">
            <asp:Image runat="server" ImageUrl="Images/NootBook_Logo.png" alt="NootBook Logo" class="Introduction-Section-Image" />
        </div>
        <!-- Main Content -->
        <div class="Introduction-Section-Content">
            <h1 class="Introduction-Section-Content-Caption">
                <!-- The online notebook for your usual activities. Every day. -->
                <span style="font-family: Arial;">The</span>
                <span style="font-family: Times New Roman;">online</span>
                <span style="font-family: Verdana;">notebook</span>
                <span style="font-family: Courier New;">for</span>
                <span style="font-family: Impact;">your</span>
                <span style="font-family: Georgia;">usual</span>
                <span style="font-family: Comic Sans MS;">activities.</span>
                <span style="font-family: Tahoma;">Every</span>
                <span style="font-family: Calibri;">day.</span>
            </h1>
            <p class="Introduction-Section-Content-Description">
                NootBook is a simple-yet-modern workspace that guides you in writing for your documents and databases. 
                Get things done in a more organized way.
            </p>
            <div class="Introduction-Section-Button">
                <a href="Workspace.aspx" class="Introduction-Section-Button-Link">Get Started</a>
            </div>
        </div>
    </section>
</asp:Content>
