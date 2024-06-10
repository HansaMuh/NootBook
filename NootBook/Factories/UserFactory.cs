using NootBook.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NootBook.Factories
{
    public class UserFactory
    {
        public static User createUser(string name, string email, string password, string role)
        {
            User user = new User()
            {
                Role = role,
                Name = name,
                Email = email,
                Password = password
            };
            return user;
        }
    }
}