<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="NootBook.Views.Profile.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unica+One&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link href="Profile.css" rel="stylesheet" />
    <!-- icon -->
    <script src="https://unpkg.com/feather-icons"></script>
    <link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />

    <div class="containerP">
        <div class="profileP">
            <div class="prof-left">
                <div class="profileImgP">
                    <img src="../../Picture/Profile%20Picture.jpeg" />
                    <asp:Button CssClass="chooseBtn" ID="PictBtn" runat="server" Text="Choose Picture" />
                </div>
                <div class="profile-bottom">
                    <asp:Button CssClass="botBtn" ID="changeBtn" runat="server" Text="Change Password" />
                    <asp:Button CssClass="botBtn" ID="logoutBtn" runat="server" Text="Log Out" OnClick="logoutBtn_Click"/>
                </div>
            </div>

            <div class="profileInfoP">
                <h2>Information</h2>
                <div class="Name-prof"">
                   <span>name</span>
                   <span>: </span>
                   <asp:Label ID="NameLbl" runat="server" Text="Name"></asp:Label>
                   <i class="bi bi-pencil-square"></i>
                </div>
                <div class="Email-prof">
                    <span>Email</span>
                    <span>: </span>
                    <asp:Label ID="EmailLbl" runat="server" Text=""></asp:Label>
                    <i class="bi bi-pencil-square"></i>
                </div>
                <div class="Age-prof">
                    <span>age</span>
                    <span>: </span>
                    <asp:Label ID="Label2" runat="server" Text="21"></asp:Label>
                    <i class="bi bi-pencil-square"></i>                
                </div>
                <div class="Phone-prof">
                    <span>Phone</span>
                    <span>: </span>
                    <asp:Label ID="Label3" runat="server" Text="+62 82910938187"></asp:Label>
                    <i class="bi bi-pencil-square"></i>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
