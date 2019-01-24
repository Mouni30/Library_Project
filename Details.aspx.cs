using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected override void OnPreInit(EventArgs e)
    {
        if (Session["type"].ToString() == "Admin")
        {
            this.MasterPageFile = "~/Admin.Master";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["bid"];
        int bid = Convert.ToInt32(id);

        LibraryDAL dal = new LibraryDAL();
        BookModel model = dal.FindBook(id);
        txt_Bookid.Text = model.BookID.ToString();
        txt_Booktitle.Text = model.BookTitle;
        txt_BookAuthorname.Text = model.BookAuthorName;
        txt_BookPages.Text = model.BookPages.ToString();
        txt_BookCategory.Text = model.BookCategory;
        img.ImageUrl = model.BookImage;
    }

    protected void btn_IssueBook_Click(object sender, EventArgs e)
    {
        if (Session["type"].ToString() == "Student")
        {
            int bid = Convert.ToInt32(txt_Bookid.Text);
            string sid = Session["loginid"].ToString();
            LibraryDAL dal = new LibraryDAL();
            int issueid = dal.IssueBook(bid,sid);
            Response.Redirect("~/IssueDone.aspx?issueid=" + issueid);
        }
        else
        {
            lbl_msg.Text = "Admin Cannot Issue Book";
        }

    }
}