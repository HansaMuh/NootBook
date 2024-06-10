using NootBook.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NootBook.Models;
using NootBook.Handlers;

namespace NootBook.Controllers
{
    public class UserController
    {
        public static Response<User> LoginUser(string email, string password)
        {
            if (email == string.Empty || password == string.Empty)
            {
                return new Response<User>()
                {
                    Success = false,
                    Message = "All fields is required to be filled.",
                    Payload = null
                };
            }

            if (!email.EndsWith(".com"))
            {
                return new Response<User>()
                {
                    Success = false,
                    Message = "Email must ends with '.com'.",
                    Payload = null
                };
            }


            return UserHandler.LoginUser(email, password);
        }

        public static Response<User> RegisterUser(string name, string email, string password, string confirmPassword)
        {
            string errorMsg = string.Empty;

            if (name == string.Empty || email == string.Empty || password == string.Empty || confirmPassword == string.Empty)
            {
                errorMsg = "All fields are required to befilled.";
            }
            else if (!email.EndsWith(".com"))
            {
                errorMsg = "Email must ends with '.com'.";
            }
            else if (password != confirmPassword)
            {
                errorMsg = "Password must be the same with the confirm password.";
            }

            if (!errorMsg.Equals(string.Empty))
            {
                return new Response<User>()
                {
                    Success = false,
                    Message = errorMsg,
                    Payload = null
                };
            }

            return UserHandler.RegisterUser(name, email, password, confirmPassword);
        }
    }
}