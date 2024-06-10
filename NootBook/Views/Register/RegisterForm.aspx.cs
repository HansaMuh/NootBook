using NootBook.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NootBook.Views.Register
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("~/Views/Home/HomePage.aspx");
            }
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            string name = NameTxt.Text;
            string email = EmailTxt.Text;
            string password = PasswordTxt.Text;
            string confirmPassword = ConfirmPassTxt.Text;

            var response = UserController.RegisterUser(name, email, password, confirmPassword);

            if (!response.Success)
            {
                ErrorMessage.Text = response.Message;
                return;
            }
            Response.Redirect("~/Views/Login/LoginForm.aspx");
        }
    }
}