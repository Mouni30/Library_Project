<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_Bookid" class="form-control-plaintext">Book ID :</label>
        <asp:Label ID="txt_Bookid" runat="server" CssClass="form-control" />
    </div>
             
    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_Booktitle" class="form-control-plaintext">Book title :</label>
        <asp:Label ID="txt_Booktitle" runat="server" CssClass="form-control" />
    </div>

   <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookAuthorname" class="form-control-plaintext">Book Author Name :</label>
        <asp:Label ID="txt_BookAuthorname" runat="server" CssClass="form-control" />
    </div>

       

         <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookPages" class="form-control-plaintext">Book Pages :</label>
        <asp:Label ID="txt_BookPages" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookCategory" class="form-control-plaintext">Book Category :</label>
        <asp:Label ID="txt_BookCategory" runat="server" CssClass="form-control" />
    </div>
   
         <div class="form-group" style="text-align:left;width:35%">
        <label for="file_BookImage" class="form-control-plaintext">Book Image</label>
       <asp:Image ID="img" Width="100px" Height="150px" runat="server" />
        <label for="file_BookImage" id="file_BookImage_error" class="text-danger">*</label>
    </div>
     <div class="form-group" style="text-align:left;width:35%">
        <asp:Button ID="btn_IssueBook" runat="server" Text="IssueBook" CssClass="btn-danger" OnClick="btn_IssueBook_Click" />
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-danger" />
        <br />
        
    </div>
      </div>      
</asp:Content>

