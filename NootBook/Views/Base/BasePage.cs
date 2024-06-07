using NootBook.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace NootBook.Views.Base
{
    public class BasePage : Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            // Perform the authorization check early in the lifecycle
            PerformAuthorizationCheck();
        }

        private void PerformAuthorizationCheck()
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/Views/Login/LoginForm.aspx");
                return;
            }
        }
    }
}