<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="NootBook.Views.Login.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <!--Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unica+One&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,700;1,700&display=swap" rel="stylesheet">
    <!--Font-->
    <link href="LoginStyle.css" rel="stylesheet" />
</head>
<body>
    <section class="login">

        <div class="Gambar">
            <img src="LOGOLG-removebg-preview.png" />
        </div>

        <div class="TEXT">
             <h1 class="Firsttext">
                Write Your Own
             </h1>
            <h1 class="Secondtext">
                NOOTBOOK
            </h1>
        </div>
        <form id="Login-form">

            <div class="Form-Group">
                <asp:Label ID="InputId" runat="server" Text="Email"></asp:Label>
                <input id="EHPID" type="email" />
            </div>
            <div class="Form-Group">
                <asp:Label ID="PassId" runat="server" Text="Password"></asp:Label>
                <input id="InputPassID" type="password" />
            </div>

            <div class="Forgot">
                <button class="Fbut">
                    Forgot Password
                </button>
            </div>

            <div class="buttoncontainer">
                <a class="signin-button" href="../Register/RegisterForm.aspx">Sign In</a>
                <span class="separator">|</span>
                <a class="signup-button" href="../Register/RegisterForm.aspx">Sign Up</a>
            </div>
        </form>
    </section>
    <script>
        document.querySelector('.signup-button').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.Gambar img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Register/RegisterForm.aspx";
            }, 500);
        });

        document.querySelector('.signin-button').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.Gambar img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Register/RegisterForm.aspx";
            }, 500);
        });
    </script>
</body>
</html>
