using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        LibraryDAL dal = new LibraryDAL();
        List<BookModel> list = dal.SearchBook(txt_search.Text);
        gv_books.DataSource = list;
        gv_books.DataBind();
    }

    protected void gv_books_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = (gv_books.SelectedRow.FindControl("lbl_bid") as Label).Text;
        Response.Redirect("~/Details.aspx?bid=" + id);
    }

    protected void gv_books_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_books.EditIndex = e.NewEditIndex;
        LibraryDAL dal = new LibraryDAL();
        List<BookModel> list = dal.SearchBook(txt_search.Text);
        gv_books.DataSource = list;
        gv_books.DataBind();
    }

    protected void gv_books_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_books.EditIndex = -1;
        LibraryDAL dal = new LibraryDAL();
        List<BookModel> list = dal.SearchBook(txt_search.Text);
        gv_books.DataSource = list;
        gv_books.DataBind();
    }

    protected void gv_books_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string bid = (gv_books.Rows[e.RowIndex].FindControl("lbl_bid") as Label).Text;
        string btitle = (gv_books.Rows[e.RowIndex].FindControl("txt_btitle") as TextBox).Text;
        string bauthorname = (gv_books.Rows[e.RowIndex].FindControl("txt_bAuthor") as TextBox).Text;
        string bpages = (gv_books.Rows[e.RowIndex].FindControl("txt_bPages") as TextBox).Text;
        string bcategory = (gv_books.Rows[e.RowIndex].FindControl("txt_bcategory") as DropDownList).Text;
        FileUpload bimage = (gv_books.Rows[e.RowIndex].FindControl("txt_img") as FileUpload);
        string address = "~/Images/" + Guid.NewGuid() + ".jpg";
        bimage.SaveAs(Server.MapPath(address));
        LibraryDAL dal = new LibraryDAL();
        dal.Update(Convert.ToInt32(bid), btitle, bauthorname, Convert.ToInt32(bpages), bcategory, address);
        gv_books.EditIndex = -1;
       
        List<BookModel> list = dal.SearchBook(txt_search.Text);
        gv_books.DataSource = list;
        gv_books.DataBind();
        lbl_msg.Text = "Updated Successfully...";
    }

    protected void gv_books_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_books.PageIndex = e.NewPageIndex;
        LibraryDAL dal = new LibraryDAL();
        List<BookModel> list = dal.SearchBook(txt_search.Text);
        gv_books.DataSource = list;
        gv_books.DataBind();
    }
}