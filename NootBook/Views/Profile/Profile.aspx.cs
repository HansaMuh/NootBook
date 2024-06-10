using NootBook.Models;
using NootBook.Views.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NootBook.Views.Profile
{
    public partial class WebForm1 : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User user = Session["user"] as User;
                NameLbl.Text = user.Name;
                EmailLbl.Text = user.Email;
            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("~/Views/Login/LoginForm.aspx");
        }
    }
}