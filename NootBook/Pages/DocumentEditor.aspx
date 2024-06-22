<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Master/Workspace.Master" AutoEventWireup="true" CodeBehind="DocumentEditor.aspx.cs" Inherits="NootBook.Pages.DocumentEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Document Editor | NootBook</title>
	<!-- Scripts -->
	<script src="Javascripts/CKEditor.js"></script>
	<!-- Styles -->
    <link rel="stylesheet" href="../Styles/DocumentEditor.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Editor-Box">
        <!-- Header -->
        <div class="Editor-Header">
            <div class="Document-Path" style="display: none">
                <span id="DocumentPath">All Documents / Document</span>
            </div>
            <div class="Document-Word-Count">
                <div id="WordCount"></div>
            </div>
            <div class="Toolbar-Items">
                <button type="button" class="Toolbar-Button" id="TemplateButton" onclick="ApplyTemplate()">Apply Template</button>
                <button type="button" class="Toolbar-Button" id="SaveButton" onclick="SaveDocument()" style="display: none">Save</button>
                <button type="button" class="Toolbar-Button" id="FavoriteButton" onclick="FavoriteDocument()" style="display: none">Favorite</button>
            </div>
        </div>

        <!-- Editor -->
        <div class="Editor-Content">
            <div id="Editor"></div>
        </div>

        <!-- Footer -->
        <div class="Editor-Footer">
        </div>
    </div>
    <script>
        const watchdog = new CKSource.EditorWatchdog();

        window.watchdog = watchdog;

        watchdog.setCreator((element, config) => {
            return CKSource.Editor
                .create(element, config)
                .then(editor => {
                    const wordCountPlugin = editor.plugins.get('WordCount');
                    const wordCountWrapper = document.getElementById('WordCount');

                    wordCountWrapper.appendChild(wordCountPlugin.wordCountContainer);
                    return editor;
                });
        });

        watchdog.setDestructor(editor => {
            return editor.destroy();
        });

        watchdog
            .create(document.querySelector('#Editor'), {
                ui: {
                    poweredBy: {
                        position: 'inside',
                        side: 'right',
                        label: null,
                        horizontalOffset: 30,
                        verticalOffset: 0
                    }
                }
            })
            .catch();

        function ApplyTemplate() {
            window.location.href = "TemplateDocumentEditor.aspx";
        }
    </script>
    <style>
        :root {
            --ck-color-focus-border: transparent;
            --ck-color-shadow-drop: none;
            --ck-color-shadow-inner: none;
        }

        body {
            overflow:hidden;
        }

        .Editor-Box {
            position: relative;
            border: 0.5px solid #9ACF91;
            box-shadow: inset 0px 0px 7.5px #CCCCCC;
            min-height: calc(100vh - (67px));
            max-height: calc(100vh - (67px));
        }

        .Document-Word-Count {
            display: flex;
            align-items: center;
        }

        .Toolbar-Button {
            align-items: center;
            border-radius: 5px;
            border: 0.5px solid rgba(0, 0, 0, 0.1);
            background-color: #A9D6A1;
            font-family: 'Cambria Math';
            font-size: 1rem;
            color: #FEFFDE;
            padding: 0.25rem 1rem;
            transition: 0.3s ease;
        }

        .Toolbar-Button:hover {
            opacity: 0.75;
        }

        .Toolbar-Button:active {
            opacity: 0.50;
        }

        .Editor-Box {
        }

        .Editor-Header {
            display: flex;
            justify-content: space-between;
            padding: 0.5rem 1rem;
            border-bottom: 0.5px solid #CCCCCC;
            background-color: #9acf91;
        }

        .Editor-Content {
            padding-left: 2rem;
        }

        .Editor-Footer {
            left: 0;
        }

        .ck-word-count {
            display: flex;
            gap: 2rem;
            font-family: 'Cambria Math';
            font-size: 1rem;
            color: #FEFFDE;
        }

        .ck-editor__editable_inline {
            overflow: hidden;
            min-height: calc(100vh - (117px));
            max-height: calc(100vh - (117px));
        }

        .ck-editor__editable_inline h1 {
            line-height: 1.68em;
            margin-bottom: .4em;
            padding-bottom: .2em;
            border-bottom: 10px solid #9ACF91;
        }

        .ck.ck-editor__editable_inline > :first-child {
            margin-top: .2em;
        }
    </style>
</asp:Content>