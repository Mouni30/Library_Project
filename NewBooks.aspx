<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="NewBooks.aspx.cs" Inherits="NewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JS/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
    <script src="JS/jquery-ui.js"></script>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/jquery-ui.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $(".text-danger").hide();
            $("#btn_newBook").click(function () {
                if ($("#txt_BookTitle").val().length == 0) {
                    $("#txt_BookTitle_error").show();
                    $("#txt_BookTitle").focus();
                    return false;
                }
                else
                {
                    $("#txt_BookTitle_error").hide();
                }
                if ($("#txt_BookAuthorName").val().length == 0)
            {
                $("#txt_BookAuthorName_error").show();
                $("#txt_BookAuthorName").focus();
                return false;
            }
            else
            {
                    $("#txt_BookAuthorName_error").hide();
            }
            
                if ($("#txt_BookPages").val().length == 0) {
                    $("#txt_BookPages_error").show();
                    $("#txt_BookPages").focus();
                return false;
            }
            else
            {
                    $("#txt_BookPages_error").hide();
            }
            
                if ($("#txt_BookCategory").val().length == 0) {
                    $("#txt_BookCategory_error").show();
                    $("#txt_BookCategory").focus();
                return false;
            }
            else
            {
                    $("#txt_BookCategory_error").hide();
            }
                if ($("#file_BookImage").val().length == 0) {
                    $("#file_BookImage_error").show();
                    $("#file_BookImage").focus();
                return false;
            }
            else {
                    $("#file_BookImage_error").hide();
            }
        });
     });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
     
     
     <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookTitle" class="form-control-plaintext">Book Title :</label>
        <asp:TextBox ID="txt_BookTitle" runat="server" CssClass="form-control" />
        <label for="txt_BookTitle" id="txt_BookTitle_error" class="text-danger">*</label>
    </div>

   <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookAuthorName" class="form-control-plaintext">Book Author Name :</label>
        <asp:TextBox ID="txt_BookAuthorName" runat="server" CssClass="form-control" />
        <label for="txt_BookAuthorName" id="txt_BookAuthorName_error" class="text-danger">*</label>
    </div>
    
   <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookPages" class="form-control-plaintext">Book Pages :</label>
        <asp:TextBox ID="txt_BookPages" runat="server" CssClass="form-control" />
        <label for="txt_BookPages" id="txt_BookPages_error" class="text-danger">*</label>
    </div>
    <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookCategory" class="form-control-plaintext">Book Category :</label>
        <asp:TextBox ID="txt_BookCategory" runat="server" CssClass="form-control" />
        <label for="txt_BookCategory" id="txt_BookCategory_error" class="text-danger">*</label>
    </div>
         <div class="form-group" style="text-align:left;width:35%;">
        <label for="file_BookImage" class="form-control-plaintext">Book Image</label>
        <asp:FileUpload ID="file_BookImage" runat="server" CssClass="form-control" />
        <label for="file_BookImage" id="file_BookImage_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <asp:Button ID="btn_newBook" runat="server" Text="NewBooks" CssClass="btn-danger" OnClick="btn_newBook_Click" />
        <asp:Label ID="lbl_msg" runat="server" />
        <br />
       
    </div>
  
</div>
</asp:Content>

