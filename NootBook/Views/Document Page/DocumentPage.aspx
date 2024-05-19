﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="DocumentPage.aspx.cs" Inherits="NootBook.Views.Document_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Css -->
    <link href="DocumentPage.css" rel="stylesheet" />

    <section class="hero">
        <div class="title-nav">
                <h1>All Document</h1>
            <div class="addBtn">
                <asp:Button Id="add" runat="server" CssClass="addDoc" data-feather="plus" />
            </div>
        </div>
        <div class="garis">
        </div>

        <div class="mini-nav">
            <div class="miniLeft">
                <i class="bi bi-list-ul"></i>
                <span>Title</span>
            </div>
            <div class="miniRight">
                <span>Tags</span>
                <span>Created</span>
                <span>Updated</span>
            </div>
        </div>

        <div class="doc-info">
            <div class="docDate">
                Today
            </div>
            <div class="doc-item">
                <i class="bi bi-file-earmark-text-fill"></i>
                <div  class="doc-item-title">
                    <a href="#">The Placement Of Method in the Structure {Software Engineering}</a>
                    <asp:Label ID="note" CssClass="doc-item-mini" runat="server" Text="https://......"></asp:Label>
                </div>
                <div class="doc-item-right">
                    <div class="doc-item-tag">
                        <i class="bi bi-dot"></i>
                        <div class="tag-name">
                            Software Engi...
                        </div>
                    </div>
                    <div class="doc-item-date">
                        <asp:Label ID="CreateDate" CssClass="doc-item-mini" runat="server" Text="3-22 17:30"></asp:Label>
                    </div>
                    <div class="doc-item-update">
                        <asp:Label ID="UpdateDate" CssClass="doc-item-mini" runat="server" Text="17:00"></asp:Label>
                    </div>
                </div>
                
            </div>
            <div class="doc-item">
                <i class="bi bi-file-earmark-text-fill"></i>
                <div  class="doc-item-title">
                    <a href="../Projek%20Kelompok%206/ProjekKel6.aspx">Projek Kelompok 6</a>
                    <asp:Label ID="note2" runat="server" CssClass="doc-item-mini" Text="Welcome To Nootbook"></asp:Label>
                </div>
                <div class="doc-item-right">
                    <div class="doc-item-tag">
                        <i class="bi bi-dot"></i>
                        <div class="tag-name">
                            Software Engi...
                        </div>
                    </div>
                    <div class="doc-item-date">
                        <asp:Label ID="CreateDate2" CssClass="doc-item-mini" runat="server" Text="3-22 22:30"></asp:Label>
                    </div>
                    <div class="doc-item-update">
                        <asp:Label ID="UpdateDate2" CssClass="doc-item-mini" runat="server" Text="Mar 4"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <div class="doc-info">
            <div class="docDate">
                Last 7 Days
            </div>
            <div class="doc-item">
                <i class="bi bi-file-earmark-text-fill"></i>
                <div  class="doc-item-title">
                    <a href="#">The Function Of Refactory</a>
                    <asp:Label ID="note3" runat="server" CssClass="doc-item-mini" Text="https://......"></asp:Label>
                </div>
                <div class="doc-item-right">
                    <div class="doc-item-tag">
                        <i class="bi bi-dot"></i>
                        <div class="tag-name">
                            Code Reengin...
                        </div>
                    </div>
                    <div class="doc-item-date">
                        <asp:Label ID="CreateDate3" CssClass="doc-item-mini" runat="server" Text="3-11 12:30"></asp:Label>
                    </div>
                    <div class="doc-item-update">
                        <asp:Label ID="UpdateDate3" CssClass="doc-item-mini" runat="server" Text="Mar 15"></asp:Label>
                    </div>
                </div>

            </div>
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
