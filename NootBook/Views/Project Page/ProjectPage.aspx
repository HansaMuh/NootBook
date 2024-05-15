<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectPage.aspx.cs" Inherits="NootBook.Views.Project_Page.ProjectPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Document</title>
        <link href="ProjectPage.css" rel="stylesheet" />
    </head>
    <body>
        <section class="hero">
            <div class="doc-nav">
                <div class="header-doc">
                    <input class="doc-folder" type="text" placeholder="Software Engineering /"/>
                    <input class="name-folder" type="text" placeholder="Projek Kelompok 6"/>
                </div>
                <div class="header-doc2">
                    <p>edited Mar 4</p>
                    <asp:Button Id="share" runat="server" class="header2-share" data-feather="share-2" />
                    <asp:Button ID="favorite" runat="server" class="header2-favorite" data-feather="star" />
                </div>
            </div>
            <div class="garis">
            </div>
            <div class="judul">
                <input class="doc-title" type="text" placeholder="NootBook"/>
                <div class="garis2"></div>
            </div>

            <div class="doc-isi">
                <textarea class="isi-note">Wellcome To NOOTBOOK</textarea>
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
    </body>
    </html>

</asp:Content>
