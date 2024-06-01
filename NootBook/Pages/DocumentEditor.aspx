<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Master/Workspace.Master" AutoEventWireup="true" CodeBehind="DocumentEditor.aspx.cs" Inherits="NootBook.Pages.DocumentEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- Scripts -->
	<script src="Javascripts/CKEditor.js"></script>
	<!-- Styles -->
    <link rel="stylesheet" href="../Styles/DocumentEditor.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- This container will become the editable. -->
    <div id="editor">
        <p>This is the initial editor content.</p>
    </div>
    <script>
        BalloonEditor
            .create(document.querySelector('#editor'))
            .catch(error => {
                console.error(error);
            });
    </script>
    <style>
        :root {
            --main-content: #FEFFE5;
        }

        .ck-editor__editable_inline {
            /*background-color: var(--main-content);*/
            min-height: calc(100vh - (75px));
            max-height: calc(100vh - (75px));
        }
    </style>
</asp:Content>
