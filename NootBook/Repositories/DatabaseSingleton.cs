using NootBook.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NootBook.Repositories
{
    public class DatabaseSingleton
    {
        private static DatabaseEntities instance;

        public static DatabaseEntities GetInstance()
        {
            if (instance == null)
            {
                instance = new DatabaseEntities();
            }
            return instance;
        }
    }
}