using NootBook.Controllers;
using System;
using System.Web.UI;

namespace NootBook.Views.Login
{
    public partial class LoginForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("~/Views/Home/HomePage.aspx");
            }
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            string email = EmailTxt.Text;
            string password = PasswordTxt.Text;

            var response = UserController.LoginUser(email, password);

            if (!response.Success)
            {
                ErrorMessage.Text = response.Message;
                return;
            }
            Session["user"] = response.Payload;
            Response.Redirect("~/Views/Home/HomePage.aspx");
        }
    }
}
