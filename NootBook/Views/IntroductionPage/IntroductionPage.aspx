<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IntroductionPage.aspx.cs" Inherits="NootBook.Views.IntroductionPage.IntroductionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IntroductionPage</title>
    <link href="IntroductionStyle.css" rel="stylesheet" />
        <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unica+One&display=swap" rel="stylesheet">
    <!-- icon -->
    <script src="https://unpkg.com/feather-icons"></script>
    <link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
</head>
<body>
    <form id="form2" runat="server">
        <nav class="navbar">
            <a href="#" class="logo">
                <img src="../../Picture/Logo%20Image.png" width="186" height="48"/>
            </a>
    
            <div class="searchbar">
                <a href="#"><i class="icon" data-feather="search"></i></a>
                <input type="search" placeholder="Search your note..."/>
            </div>
    
            <div class="log-sign-Button">  
                <div class="log-but">
                    <a href="../Login/LoginForm.aspx">Login</a>
                </div>
                <div class="sign-but">
                    <a href="../Register/RegisterForm.aspx">Signup</a>
                </div>
            </div>
        </nav>
        <section class="intro">
            <h1>
                Welcome To  nootbook
            </h1>
            <p class="pendahuluan">
                NootBook, aplikasi catatan digital yang dapat membantu Anda menuangkan kreativitas dalam buku catatan serba digital yang sederhana.
            </p>
            <img src="../Booting/LOGOLG-removebg-preview.png" />
            <div class="awal">
                <p>
                    Start With
                </p>
                <div class="button-awal">
                    <a class="doc" href="../Project%20Page/ProjectPage.aspx">Document</a>
                    <asp:Button class="jurnal" runat="server" Text="Jurnal" />
                    <a class="sticky" href="../StickyPage/StickyNotesPage.aspx">StickyNotes</a>
                </div>
            </div>

    </section>

    </form>
    <script>
        feather.replace();
        document.querySelector('.doc').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.intro img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Project%20Page/ProjectPage.aspx";
            }, 500);
        });

        document.querySelector('.sticky').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.intro img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../StickyPage/StickyNotesPage.aspx";
            }, 500);
        });

        document.querySelector('.log-but').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.intro img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Login/LoginForm.aspx";
            }, 500);
        });

        document.querySelector('.sign-but').addEventListener('click', function (event) {
            event.preventDefault();
            var gambar = document.querySelector('.intro img');
            gambar.classList.add('move-out');
            document.body.classList.add('fade-out');

            setTimeout(function () {
                window.location.href = "../Register/RegisterForm.aspx";
            }, 500);
        });

    </script>
</body>
</html>
