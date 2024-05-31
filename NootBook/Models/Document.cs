using System;

namespace NootBook.Models
{

    public class Document
    {

        #region Constructors
        public Document(string author = "Guest", string title = "Untitled", string content = "", bool isFavorite = false)
        {
            Author = author;
            Title = title;
            Content = content;
            CreationDate = DateTime.Now;
            UpdationDate = DateTime.Now;
            IsFavorite = isFavorite;
        }
        #endregion

        #region Properties
        public string Author
        {
            get;
            set;
        }

        public string Title
        {
            get;
            set;
        }

        public string Content
        {
            get;
            set;
        }

        public DateTime CreationDate
        {
            get;
            set;
        }

        public DateTime UpdationDate
        {
            get;
            set;
        }

        public bool IsFavorite
        {
            get;
            set;
        }
        #endregion

    }

}