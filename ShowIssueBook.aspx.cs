using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowIssueBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sid = Session["loginid"].ToString();
        LibraryDAL dal = new LibraryDAL();
        gv_books.DataSource = dal.ShowBook(sid);
        gv_books.DataBind();
    }

    protected void gv_books_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_books.PageIndex = e.NewPageIndex;
        string sid = Session["loginid"].ToString();
        LibraryDAL dal = new LibraryDAL();
        gv_books.DataSource = dal.ShowBook(sid);
        gv_books.DataBind();
    }
}