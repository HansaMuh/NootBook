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
        <form id="LoginForm" runat="server">

            <div class="Form-Group">
                <asp:Label ID="InputId" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="EmailTxt" runat="server" TextMode="Email" required="required"></asp:TextBox>
            </div>
            <div class="Form-Group">
                <asp:Label ID="PassId" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" required="required"></asp:TextBox>
            </div>

            <div class="Forgot">
                <button class="Fbut" type="button">
                    Forgot Password
                </button>
            </div>

            <div class="buttoncontainer">
                <asp:Button ID="SignInButton" CssClass="signin-button" runat="server" Text="Sign In" OnClientClick="return onSignInClick();" OnClick="SignInButton_Click" />
                <span class="separator">|</span>
                <a class="signup-button" href="#" onclick="return onSignUpClick();">Sign Up</a>
            </div>
            <asp:Label ID="ErrorMessage" ForeColor="Red" runat="server" Text=""></asp:Label>
        </form>
    </section>
    <script>
        let shouldSubmitForm = false;

        function onSignInClick() {
            if (shouldSubmitForm) {
                return true; // Allow form submission
            }

            // Check if the email and password fields are valid using HTML5 validation
            var emailInput = document.getElementById('<%= EmailTxt.ClientID %>');
            var passwordInput = document.getElementById('<%= PasswordTxt.ClientID %>');

            if (!emailInput.checkValidity() || !passwordInput.checkValidity()) {
                // If email or password is invalid, show the browser's built-in validation message
                emailInput.reportValidity();
                passwordInput.reportValidity();
                return false; // Prevent form submission
            }

            var gambar = document.querySelector('.Gambar img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                shouldSubmitForm = true;
                document.getElementById('<%= SignInButton.ClientID %>').click();
            }, 500);

            return false; // Prevent immediate form submission to allow animations
        }

        function onSignUpClick() {
            var gambar = document.querySelector('.Gambar img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Register/RegisterForm.aspx";
            }, 500);

            return false; // Prevent immediate navigation to allow animations
        }
    </script>
</body>
</html>
