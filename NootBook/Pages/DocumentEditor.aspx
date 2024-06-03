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
    </div>
    <script>
        const watchdog = new CKSource.EditorWatchdog();

        window.watchdog = watchdog;

        watchdog.setCreator((element, config) => {
            return CKSource.Editor
                .create(element, config)
                .then(editor => {
                    return editor;
                });
        });

        watchdog.setDestructor(editor => {
            return editor.destroy();
        });

        watchdog.on('error', handleSampleError);

        watchdog
            .create(document.querySelector('#editor'), {
                // Editor configuration.
            })
            .catch(handleSampleError);

        function handleSampleError(error) {
            const issueUrl = 'https://github.com/ckeditor/ckeditor5/issues';

            const message = [
                'Oops, something went wrong!',
                `Please, report the following error on ${issueUrl} with the build id "kwo0o5ym9g06-j6ea40dvugnf" and the error stack trace:`
            ].join('\n');

            console.error(message);
            console.error(error);
        }


        //ClassicEditor
        //    .create(document.querySelector('#editor'))
        //    .catch(error => {
        //        console.error(error);
        //    });
        //BalloonEditor
        //    .create(document.querySelector('#editor'))
        //    .catch(error => {
        //        console.error(error);
        //    });
    </script>
    <style>
        :root {
            --main-content: #FEFFE5;
        }

        .ck-editor__editable_inline {
            /*background-color: var(--main-content);*/
            min-height: calc(100vh - (150px));
            max-height: calc(100vh - (150px));
        }
    </style>
</asp:Content>
