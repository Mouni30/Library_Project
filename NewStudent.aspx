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
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-danger" />
        <br />
        <a href="Login.aspx" class="btn-link" style="width:200px">Login</a>
    </div>
    </form>
    </div>
</body>
</html>
