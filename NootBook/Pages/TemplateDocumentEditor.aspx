<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Master/Workspace.Master" AutoEventWireup="true" CodeBehind="TemplateDocumentEditor.aspx.cs" Inherits="NootBook.Pages.TemplateDocumentEditor" %>
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
                <button type="button" class="Toolbar-Button" id="BackButton" onclick="BackDocument()">Back</button>
                <button type="button" class="Toolbar-Button" id="TemplateButton" onclick="ApplyTemplate()">Apply Template</button>
                <button type="button" class="Toolbar-Button" id="FavoriteButton" onclick="FavoriteDocument()" style="display: none">Favorite</button>
            </div>
        </div>

        <!-- Editor -->
        <div class="Editor-Content">
            <div id="templateEditor">
                <h2 data-placeholder="Paste the content here to test the feature.">The three greatest things you learn from traveling</h2>
                <p>Like all the great things on earth traveling teaches us by example. Here are some of the most precious lessons I’ve learned over the years of traveling.</p>
                <figure class="image ck-widget image-style-side ck-widget_with-resizer ck-widget_selected" contenteditable="false"><img src="https://ckeditor.com/docs/ckeditor5/latest/assets/img/volcano.jpg" alt="A lone wanderer looking at Mount Bromo volcano in Indonesia." srcset="https://ckeditor.com/docs/ckeditor5/latest/assets/img/volcano.jpg, https://ckeditor.com/docs/ckeditor5/latest/assets/img/volcano_2x.jpg 2x" sizes="100vw" style="aspect-ratio:600/400;" width="600" height="400"><figcaption class="ck-editor__editable ck-editor__nested-editable" data-placeholder="Enter image caption" role="textbox" tabindex="-1" aria-label="Caption for image: A lone wanderer looking at Mount Bromo volcano in Indonesia." contenteditable="true">Leaving your comfort zone might lead you to such beautiful sceneries like this one.</figcaption><div class="ck ck-reset_all ck-widget__type-around"><div class="ck ck-widget__type-around__button ck-widget__type-around__button_before" title="Insert paragraph before block" aria-hidden="true"><svg viewBox="0 0 10 8" xmlns="http://www.w3.org/2000/svg"><path d="M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038"></path></svg></div><div class="ck ck-widget__type-around__button ck-widget__type-around__button_after" title="Insert paragraph after block" aria-hidden="true"><svg viewBox="0 0 10 8" xmlns="http://www.w3.org/2000/svg"><path d="M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038"></path></svg></div><div class="ck ck-widget__type-around__fake-caret"></div></div><div class="ck ck-reset_all ck-widget__resizer ck-hidden" style="height:236px;left:0px;top:0px;width:354px;"><div class="ck-widget__resizer__handle ck-widget__resizer__handle-top-left"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-top-right"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-bottom-right"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-bottom-left"></div><div class="ck ck-size-view" style="display: none;"></div></div></figure>
                <h3>Appreciation of diversity</h3>
                <p>Getting used to an entirely different culture can be challenging. While it’s also nice to learn about cultures online or from books, nothing comes close to experiencing cultural diversity in person. You learn to appreciate each and every single one of the differences while you become more culturally fluid.</p>
                <blockquote><p>The real voyage of discovery consists not in seeking new landscapes, but having new eyes.</p><p><strong>Marcel Proust</strong></p></blockquote>
                <h3>Improvisation</h3>
                <p>Life doesn't allow us to execute every single plan perfectly. This especially seems to be the case when you travel. You plan it down to every minute with a big checklist. But when it comes to executing it, something always comes up and you’re left with your improvising skills. You learn to adapt as you go. Here’s how my travel checklist looks now:</p>
                <ul><li><span class="ck-list-bogus-paragraph">buy the ticket</span></li><li><span class="ck-list-bogus-paragraph">start your adventure</span></li></ul>
                <figure class="image ck-widget image-style-side ck-widget_with-resizer ck-widget_selected" contenteditable="false"><img src="https://ckeditor.com/docs/ckeditor5/latest/assets/img/umbrellas.jpg" alt="Three monks ascending the stairs of an ancient temple." srcset="https://ckeditor.com/docs/ckeditor5/latest/assets/img/umbrellas.jpg, https://ckeditor.com/docs/ckeditor5/latest/assets/img/umbrellas_2x.jpg 2x" sizes="100vw" style="aspect-ratio:600/252;" width="600" height="252"><figcaption class="ck-editor__editable ck-editor__nested-editable" data-placeholder="Enter image caption" role="textbox" tabindex="-1" aria-label="Caption for image: Three monks ascending the stairs of an ancient temple." contenteditable="true">Three monks ascending the stairs of an ancient temple.</figcaption><div class="ck ck-reset_all ck-widget__type-around"><div class="ck ck-widget__type-around__button ck-widget__type-around__button_before" title="Insert paragraph before block" aria-hidden="true"><svg viewBox="0 0 10 8" xmlns="http://www.w3.org/2000/svg"><path d="M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038"></path></svg></div><div class="ck ck-widget__type-around__button ck-widget__type-around__button_after" title="Insert paragraph after block" aria-hidden="true"><svg viewBox="0 0 10 8" xmlns="http://www.w3.org/2000/svg"><path d="M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038"></path></svg></div><div class="ck ck-widget__type-around__fake-caret"></div></div><div class="ck ck-reset_all ck-widget__resizer ck-hidden" style="height:149px;left:0px;top:0px;width:354px;"><div class="ck-widget__resizer__handle ck-widget__resizer__handle-top-left"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-top-right"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-bottom-right"></div><div class="ck-widget__resizer__handle ck-widget__resizer__handle-bottom-left"></div><div class="ck ck-size-view" style="display: none;"></div></div></figure>
                <h3>Confidence</h3>
                <p>Going to a new place can be quite terrifying. While change and uncertainty make us scared, traveling teaches us how ridiculous it is to be afraid of something before it happens. The moment you face your fear and see there is nothing to be afraid of, is the moment you discover bliss.</p>
            </div>
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
            .create(document.querySelector('#templateEditor'), {
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

        function BackDocument() {
            window.location.href = "DocumentEditor.aspx";
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