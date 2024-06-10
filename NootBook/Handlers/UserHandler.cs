using NootBook.Factories;
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
                    Message = "There is no user with that email.",
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

        public static Response<User> RegisterUser(string name, string email, string password, string confirmPassword)
        {
            User searchedUser = UserRepository.GetUserByUsername(name);

            if (searchedUser != null)
            {
                return new Response<User>
                {
                    Success = false,
                    Message = "Username already exists.",
                    Payload = null
                };
            }

            User searchedEmail = UserRepository.GetUserByEmail(email);

            if (searchedEmail != null)
            {
                return new Response<User>
                {
                    Success = false,
                    Message = "Another user has already used that email.",
                    Payload = null
                };
            }

            User user = UserFactory.createUser(name, email, password, "Guest");
            bool isCreated = UserRepository.CreateUser(user);

            if (!isCreated)
            {
                return new Response<User>
                {
                    Success = false,
                    Message = "Failed to register user.",
                    Payload = null
                };
            }
            return new Response<User>
            {
                Success = true,
                Message = "Successfully register user.",
                Payload = user
            };
        }
    }
}