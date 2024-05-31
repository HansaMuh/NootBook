using NootBook.Utility.Enumerations;
using System.Collections.Generic;

namespace NootBook.Models
{

    public class User
    {

        #region Constructors
        public User(UserRoleType role = UserRoleType.Guest, string name = "Guest", string email = "", string password = "")
        {
            Role = role;
            Name = name;
            Email = email;
            Password = password;
            Folders = new List<Folder>();
            ExistingDocuments = new List<Document>();
        }
        #endregion

        #region Properties
        public UserRoleType Role
        {
            get;
            set;
        }

        public string Name
        {
            get;
            set;
        }

        public string Email
        {
            get;
            set;
        }

        public string Password
        {
            get;
            set;
        }

        public List<Folder> Folders
        {
            get;
            set;
        }

        public List<Document> ExistingDocuments
        {
            get;
            set;
        }
        #endregion

    }

}