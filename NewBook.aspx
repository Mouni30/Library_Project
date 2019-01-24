<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook" %>

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
        <label for="txt_BookTitle" class="form-control-plaintext">Book Title :</label>
        <asp:TextBox ID="txt_BookTitle" runat="server" CssClass="form-control" />
        <label for="txt_BookTitle" id="txt_BookTitle_error" class="text-danger">*</label>
    </div>

   <div class="form-group">
        <label for="txt_BookAuthorName" class="form-control-plaintext">Book Author Name :</label>
        <asp:TextBox ID="txt_BookAuthorName" runat="server" CssClass="form-control" />
        <label for="txt_BookAuthorName" id="txt_BookAuthorName_error" class="text-danger">*</label>
    </div>
    
   <div class="form-group">
        <label for="txt_BookPages" class="form-control-plaintext">Book Pages :</label>
        <asp:TextBox ID="txt_BookPages" runat="server" CssClass="form-control" />
        <label for="txt_BookPages" id="txt_BookPages_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <label for="txt_BookCategory" class="form-control-plaintext">Book Category :</label>
        <asp:TextBox ID="txt_BookCategory" runat="server" CssClass="form-control" />
        <label for="txt_BookCategory" id="txt_BookCategory_error" class="text-danger">*</label>
    </div>
         <div class="form-group">
        <label for="file_BookImage" class="form-control-plaintext">Book Image</label>
        <asp:FileUpload ID="file_BookImage" runat="server" CssClass="form-control" />
        <label for="file_BookImage" id="file_BookImage_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <asp:Button ID="btn_newBook" runat="server" Text="NewBook" CssClass="btn-danger" OnClick="btn_newBook_Click" />
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-danger" />
        <br />
        <a href="Login.aspx" class="btn-link" style="width:200px">Login</a>
    </div>
    </form> 
</div>
</body>
</html>
