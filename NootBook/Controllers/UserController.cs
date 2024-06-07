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
            return UserHandler.LoginUser(email, password);
        }
    }
}