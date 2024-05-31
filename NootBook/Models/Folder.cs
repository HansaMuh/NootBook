using System.Collections.Generic;

namespace NootBook.Models
{

    public class Folder
    {

        #region Constructors
        public Folder(string owner = "Guest", string name = "Unnamed")
        {
            Owner = owner;
            Name = name;
            Documents = new List<Document>();
        }
        #endregion

        #region Properties
        public string Owner
        {
            get;
            set;
        }

        public string Name
        {
            get;
            set;
        }

        public List<Document> Documents
        {
            get;
            set;
        }
        #endregion

    }

}