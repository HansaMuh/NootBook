using NootBook.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NootBook.Repositories
{
    public class UserRepository
    {
        public static User GetUserByUsername(string username)
        {
            DatabaseEntities db = DatabaseSingleton.GetInstance();
            return db.Users.Where(x => x.Name == username).FirstOrDefault();
        }
        public static User GetUserByEmail(string email)
        {
            DatabaseEntities db = DatabaseSingleton.GetInstance();
            return db.Users.Where(x => x.Email == email).FirstOrDefault();
        }

        public static bool CreateUser(User user)
        {
            DatabaseEntities db = DatabaseSingleton.GetInstance();
            db.Users.Add(user);
            return db.SaveChanges() > 0;
        }
    }
}