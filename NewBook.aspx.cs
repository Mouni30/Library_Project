using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class NewBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_newBook_Click(object sender, EventArgs e)
    {
        LibraryDAL dal = new LibraryDAL();
        BookModel model = new BookModel();
        model.BookTitle = txt_BookTitle.Text;
        model.BookAuthorName = txt_BookAuthorName.Text;
        model.BookPages = Convert.ToInt32(txt_BookPages.Text);
        model.BookCategory = txt_BookCategory.Text;
        model.BookImage = "~/Images/" + Guid.NewGuid() + ".jpg";
        file_BookImage.SaveAs(Server.MapPath(model.BookImage));
        int id = dal.AddBook(model);
        lbl_msg.Text = "Books Added : " + id;

    }
}