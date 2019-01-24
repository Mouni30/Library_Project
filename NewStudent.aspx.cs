using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_newstudent_Click(object sender, EventArgs e)
    {
        LibraryDAL dal = new LibraryDAL();
        StudentModel model = new StudentModel();
        model.StudentEmailId = txt_studentemailid.Text;
        model.StudentName = txt_studentname.Text;
        model.StudentPassword = txt_studentpassword.Text;
        model.StudentContactNo = txt_studentContactNo.Text;
        
        if (rdb_male.Checked == true)
        {
            model.StudentGender = "Male";
        }
        else
        {
            model.StudentGender = "Female";
        }
        model.StudentImage = "~/Images/" + Guid.NewGuid() + ".jpg";
        file_StudentImage.SaveAs(Server.MapPath(model.StudentImage));
        dal.AddStudent(model);
        lbl_msg.Text = "Student Added";
    }
}