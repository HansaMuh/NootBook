<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booting.aspx.cs" Inherits="NootBook.Views.Booting.Booting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BootingPage</title>
        <!--Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unica+One&display=swap" rel="stylesheet">
    <!--Font-->
    <link href="StyleBooting.css" rel="stylesheet" />
</head>
<body>
    <section class="Boot">
        <div class="Gambar">
            <img src="LOGOLG-removebg-preview.png" /> 
        </div>
        <div class="TEXT">
            <h1>
                NootBook
            </h1>
        </div>
    </section>
    <script>
        setTimeout(function () {
            document.body.classList.add('fade-out');
            setTimeout(function () {
                window.location.href = '../IntroductionPage/IntroductionPage.aspx';
            }, 1000);
        }, 12000);
    </script>
</body>
</html>