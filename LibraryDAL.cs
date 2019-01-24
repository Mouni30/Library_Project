using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for LibraryDAL
/// </summary>
public class LibraryDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

    public bool Login(LoginModel model)
    {
        SqlCommand com_login = new SqlCommand("proc_Login", con);
        com_login.Parameters.AddWithValue("@id", model.LoginId);
        com_login.Parameters.AddWithValue("@password", model.Password);
        com_login.CommandType = CommandType.StoredProcedure;
        SqlParameter para_ret = new SqlParameter();
        para_ret.Direction = ParameterDirection.ReturnValue;
        com_login.Parameters.Add(para_ret);
        con.Open();
        com_login.ExecuteNonQuery();
        con.Close();
        int count = Convert.ToInt32(para_ret.Value);
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public int AddStudent(StudentModel model)
    {
        SqlCommand com_addstudent = new SqlCommand("proc_AddStudent", con);
        com_addstudent.Parameters.AddWithValue("@emailid", model.StudentEmailId);
        com_addstudent.Parameters.AddWithValue("@name", model.StudentName);
        com_addstudent.Parameters.AddWithValue("@password", model.StudentPassword);
        com_addstudent.Parameters.AddWithValue("@contactno", model.StudentContactNo);
        com_addstudent.Parameters.AddWithValue("@gender", model.StudentGender);
        com_addstudent.Parameters.AddWithValue("@image", model.StudentImage);
        com_addstudent.CommandType = CommandType.StoredProcedure;
        SqlParameter para_ret = new SqlParameter();
        para_ret.Direction = ParameterDirection.ReturnValue;
        com_addstudent.Parameters.Add(para_ret);
        con.Open();
        com_addstudent.ExecuteNonQuery();
        con.Close();
        int count = Convert.ToInt32(para_ret.Value);
        return count;
    }
    public List<StudentModel> search(string key)
    {
        SqlCommand com_search = new SqlCommand("proc_searchstudent", con);
        com_search.Parameters.AddWithValue("@key", key);
        com_search.CommandType = CommandType.StoredProcedure;
        con.Open();
        SqlDataReader dr = com_search.ExecuteReader();
        List<StudentModel> list = new List<StudentModel>();
        while (dr.Read())
        {
            StudentModel model = new StudentModel();
            model.StudentEmailId = dr.GetString(0);
            model.StudentName = dr.GetString(1);
            model.StudentPassword = dr.GetString(2);
            model.StudentContactNo = dr.GetString(3);
            model.StudentGender = dr.GetString(4);
            model.StudentImage = dr.GetString(5);
            list.Add(model);
        }
        con.Close();
        return list;
    }
    public int AddBook(BookModel model)
    {
        SqlCommand com_addAdmin = new SqlCommand("proc_AddBook", con);
        com_addAdmin.Parameters.AddWithValue("@title", model.BookTitle);
        com_addAdmin.Parameters.AddWithValue("@author", model.BookAuthorName);
        com_addAdmin.Parameters.AddWithValue("@pages", model.BookPages);
        com_addAdmin.Parameters.AddWithValue("@category", model.BookCategory);
        com_addAdmin.Parameters.AddWithValue("@image", model.BookImage);
        com_addAdmin.CommandType = CommandType.StoredProcedure;
        SqlParameter para_ret = new SqlParameter();
        para_ret.Direction = ParameterDirection.ReturnValue;
        com_addAdmin.Parameters.Add(para_ret);
        con.Open();
        com_addAdmin.ExecuteNonQuery();
        con.Close();
        int id = Convert.ToInt32(para_ret.Value);
        return id;
    }
    public List<BookModel> SearchBook(string key)
    {
        SqlCommand com_search = new SqlCommand("proc_searchbook", con);
        com_search.Parameters.AddWithValue("@key", key);
        com_search.CommandType = CommandType.StoredProcedure;
        con.Open();
        SqlDataReader dr = com_search.ExecuteReader();

        List<BookModel> list = new List<BookModel>();
        while (dr.Read())
        {
            BookModel model = new BookModel();
            model.BookID = dr.GetInt32(0);
            model.BookTitle = dr.GetString(1);
            model.BookAuthorName = dr.GetString(2);
            model.BookPages = dr.GetInt32(3);
            model.BookCategory = dr.GetString(4);
            model.BookImage = dr.GetString(5);
            list.Add(model);
        }
        con.Close();
        return list;
    }
    public BookModel FindBook(string id)
    {
        SqlCommand com_find = new SqlCommand("proc_FindBook", con);
        com_find.Parameters.AddWithValue("@id", id);
        com_find.CommandType = CommandType.StoredProcedure;
        con.Open();
        SqlDataReader dr = com_find.ExecuteReader();
        if (dr.Read())
        {
            BookModel model = new BookModel();
            model.BookID = dr.GetInt32(0);
            model.BookTitle = dr.GetString(1);
            model.BookAuthorName = dr.GetString(2);
            model.BookPages = dr.GetInt32(3);
            model.BookCategory = dr.GetString(4);
            model.BookImage = dr.GetString(5);
            con.Close();
            return model;

        }
        con.Close();
        return null;


    }
    public bool Update(int id, string title, string authorname, int pages, string category)
    {
        SqlCommand com_update = new SqlCommand("proc_update", con);
        com_update.Parameters.AddWithValue("@id", id);
        com_update.Parameters.AddWithValue("@title", title);
        com_update.Parameters.AddWithValue("@authorname", authorname);
        com_update.Parameters.AddWithValue("@pages", pages);
        com_update.Parameters.AddWithValue("@category", category);
        com_update.CommandType = CommandType.StoredProcedure;
        SqlParameter para_return = new SqlParameter();
        para_return.Direction = ParameterDirection.ReturnValue;
        com_update.Parameters.Add(para_return);
        con.Open();
        com_update.ExecuteNonQuery();
        con.Close();
        int count = Convert.ToInt32(para_return.Value);
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public List<BookModel> ShowBook(int Sid)
    {
        SqlCommand com_Show = new SqlCommand("proc_ShowBook", con);
        com_Show.Parameters.AddWithValue("@Sid", Sid);
        com_Show.CommandType = CommandType.StoredProcedure;
        con.Open();
        SqlDataReader dr = com_Show.ExecuteReader();

        List<BookModel> list = new List<BookModel>();
        while (dr.Read())
        {
            BookModel model = new BookModel();
            model.BookID = dr.GetInt32(0);
            model.BookTitle = dr.GetString(1);
            model.BookAuthorName = dr.GetString(2);
            model.BookPages = dr.GetInt32(3);
            model.BookCategory = dr.GetString(4);
            model.BookImage = dr.GetString(5);
            list.Add(model);
        }
        con.Close();
        return list;

    }
    public int IssueBook(int BID, int SID)
    {
        SqlCommand com_IssueBook = new SqlCommand("proc_IssueBook", con);
        com_IssueBook.Parameters.AddWithValue("@bid", BID);
        com_IssueBook.Parameters.AddWithValue("@sid", SID);
        com_IssueBook.CommandType = CommandType.StoredProcedure;
        SqlParameter para_ret = new SqlParameter();
        para_ret.Direction = ParameterDirection.ReturnValue;
        com_IssueBook.Parameters.Add(para_ret);
        con.Open();
        com_IssueBook.ExecuteNonQuery();
        con.Close();
        int id = Convert.ToInt32(para_ret.Value);
        return id;
    }

}