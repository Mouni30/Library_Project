using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookModel
/// </summary>
public class BookModel
{
    public int BookID { get; set; }
    public string BookTitle { get; set; }
    public string BookAuthorName { get; set; }
    public int BookPages { get; set; }
    public string BookCategory { get; set; }
    public string BookImage { get; set; }
}