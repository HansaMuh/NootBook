using NootBook.Models;
using NootBook.Modules;
using NootBook.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NootBook.Handlers
{
    public class UserHandler
    {
        public static Response<User> LoginUser(string email, string password)
        {
            User user = UserRepository.GetUserByEmail(email);

            if (user == null)
            {
                return new Response<User>
                {
                    Success = false,
                    Message = "There is no user with that username.",
                    Payload = null
                };
            }

            if (user.Password != password)
            {
                return new Response<User>
                {
                    Success = false,
                    Message = "Invalid credentials.",
                    Payload = null
                };
            }

            return new Response<User>
            {
                Success = true,
                Message = "Successfully login.",
                Payload = user
            };
        }
    }
}