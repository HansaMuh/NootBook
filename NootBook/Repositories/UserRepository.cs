using NootBook.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NootBook.Repositories
{
    public class UserRepository
    {
        public static User GetUserByEmail(string email)
        {
            DatabaseEntities db = DatabaseSingleton.GetInstance();
            return db.Users.Where(x => x.Email == email).FirstOrDefault();
        }
    }
}