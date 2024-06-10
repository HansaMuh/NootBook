<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="NootBook.Views.Register.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RegisterPage</title>
    <!--Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unica+One&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,700;1,700&display=swap" rel="stylesheet">
    <!--Font-->
    <link href="StyleRegis.css" rel="stylesheet" />
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
            Nootbook
        </h1>
    </div>
    <form runat="server">

        <div class="Form-Group">
            <asp:Label ID="NameLbl" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="NameTxt" runat="server" required="required"></asp:TextBox>
        </div>

        <div class="Form-Group">
            <asp:Label ID="EmailLbl" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="EmailTxt" runat="server" TextMode="Email" required="required"></asp:TextBox>
        </div>

        <div class="Form-Group">
            <asp:Label ID="PassLbl" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" required="required"></asp:TextBox>
        </div>

         <div class="Form-Group">
            <asp:Label ID="ConfirmPassLbl" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="ConfirmPassTxt" runat="server" TextMode="Password" required="required"></asp:TextBox>
        </div>

        <div class="buttoncontainer">
             <asp:Button ID="SignUpButton" CssClass="signin-button" runat="server" Text="Sign Up" OnClientClick="return onSignUpClick();" OnClick="SignUpButton_Click" />
        </div>
        <div class="buttoncontainer">
            <a class="signin-button" href="../Login/LoginForm.aspx">Return to Sign In</a>
        </div>
        <asp:Label ID="ErrorMessage" ForeColor="Red" runat="server" Text=""></asp:Label>
    </form>
</section>
<script>
    let shouldSubmitForm = false;

    function onSignUpClick() {
        if (shouldSubmitForm) {
            return true; // Allow form submission
        }

        // Check if the email and password fields are valid using HTML5 validation
        var usernameInput = document.getElementById('<%= NameTxt.ClientID %>');
        var emailInput = document.getElementById('<%= EmailTxt.ClientID %>');
        var passwordInput = document.getElementById('<%= PasswordTxt.ClientID %>');
        var confirmPasswordInput = document.getElementById('<%= ConfirmPassTxt.ClientID %>');

        if (!usernameInput.checkValidity() || !emailInput.checkValidity() || !passwordInput.checkValidity() || !confirmPasswordInput.checkValidity() {
            // If email or password is invalid, show the browser's built-in validation message
            usernameInput.reportValidity();
            emailInput.reportValidity();
            passwordInput.reportValidity();
            confirmPasswordInput.reportValidity();
            return false; // Prevent form submission
        }

        var gambar = document.querySelector('.Gambar img');
        gambar.classList.add('move-out');
        document.body.classList.add('fade-out');

        setTimeout(function () {
            shouldSubmitForm = true;
            document.getElementById('<%= SignUpButton.ClientID %>').click();
        }, 500);

        return false; // Prevent immediate form submission to allow animations
    }
</script>
</body>
</html>
