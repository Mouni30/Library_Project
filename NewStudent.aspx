<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="NewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JS/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
    <script src="JS/jquery-ui.js"></script>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/jquery-ui.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $(".text-danger").hide();
            $("#btn_newstudent").click(function () {
                if ($("#txt_studentemailid").val().length == 0) {
                    $("#txt_studentemailid_error").show();
                    $("#txt_studentemailid").focus();
                    return false;
                }
                else
                {
                    $("#txt_studentemailid_error").hide();
                }
            if ($("#txt_studentname").val().length == 0)
            {
                $("#txt_studentname_error").show();
                $("#txt_studentname").focus();
                return false;
            }
            else
            {
                $("#txt_studentname_error").hide();
            }
            
            if ($("#txt_studentpassword").val().length == 0) {
                $("#txt_studentpassword_error").show();
                $("#txt_studentpassword").focus();
                return false;
            }
            else
            {
                $("#txt_studentpassword_error").hide();
            }
            
            if ($("#txt_studentContactNo").val().length == 0) {
                $("#txt_studentContactNo_error").show();
                $("#txt_studentContactNo").focus();
                return false;
            }
            else
            {
                $("#txt_studentContactNo_error").hide();
            }
            if ($("#file_StudentImage").val().length == 0) {
                $("#file_StudentImage_error").show();
                $("#file_StudentImage").focus();
                return false;
            }
            else {
                $("#file_StudentImage_error").hide();
            }
        });
     });
    </script>
</head>
<body>
    <div align="center">
    <form id="form1" runat="server" class="Container" style="text-align:left;width:25%">
    <div class="form-group">
        <label for="txt_studentemailid" class="form-control-plaintext">Student Email ID :</label>
        <asp:TextBox ID="txt_studentemailid" runat="server" CssClass="form-control" />
        <label for="txt_studentemailid" id="txt_studentemailid_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <label for="txt_studentname" class="form-control-plaintext">Student Name :</label>
        <asp:TextBox ID="txt_studentname" runat="server" CssClass="form-control" />
        <label for="txt_studentname" id="txt_studentname_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <label for="txt_studentpassword" class="form-control-plaintext">Student Password :</label>
        <asp:TextBox ID="txt_studentpassword" runat="server" CssClass="form-control"  />
        <label for="txt_studentpassword" id="txt_studentpassword_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <label for="txt_studentContactNo" class="form-control-plaintext">Student Contact No :</label>
        <asp:TextBox ID="txt_studentContactNo" runat="server" CssClass="form-control" />
        <label for="txt_studentContactNo" id="txt_studentContactNo_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
            <label class="form-control-plaintext">Gender :</label>
            <asp:RadioButton ID="rdb_male" Text="Male" runat="server" GroupName="gender" />
            <asp:RadioButton ID="rdb_female" Text="Female" runat="server" GroupName="gender" />
            <label id="txt_gender_error" class="text-danger">*</label> 
    </div>
    <div class="form-group">
        <label for="file_StudentImage" class="form-control-plaintext">Student Image</label>
        <asp:FileUpload ID="file_StudentImage" runat="server" CssClass="form-control" />
        <label for="file_StudentImage" id="file_StudentImage_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <asp:Button ID="btn_newstudent" runat="server" Text="NewStudent" CssClass="btn-danger" OnClick="btn_newstudent_Click" />
        <asp:Label ID="lbl_msg" runat="server"  />
        <br />
        <a href="Login.aspx" class="btn-link" style="width:200px">Login</a>
    </div>
    </form>
    </div>
</body>
</html>
