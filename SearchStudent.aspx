<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="SearchStudent.aspx.cs" Inherits="SearchStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
      <div class="form-group" style="text-align:left;width:35%">
                <label class="form-control-static">Search Key :</label>
                <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" />
            <label for="txt_search" id="txt_search_error" class="text-danger">*</label>
            </div>
            <div class="form-group">
                <asp:Button ID="btn_search" runat="server" Text="SearchBook" CssClass="btn-danger" OnClick="btn_search_Click"  />
            </div>
        <div class="form-group">
            <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" 
                OnSelectedIndexChanged="gv_books_SelectedIndexChanged"  OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5" >
                <Columns>

                    <asp:TemplateField HeaderText="Book ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bid" runat="server" Text='<% # Eval("BookID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Book Title" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_btitle" runat="server" Text='<% # Eval("BookTitle") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Book Author Name" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAuthor" runat="server" Text='<% # Eval("BookAuthorName") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Pages" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bPages" runat="server" Text='<% # Eval("BookPages") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Category" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bcategory" runat="server" Text='<% # Eval("BookCategory") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Book Image" >
                        <ItemTemplate>
                            <asp:Image ID="lbl_img" runat="server" Height="100px" Width="100px" ImageUrl='<% # Eval("BookImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" SelectText="Details" />


                </Columns>
            </asp:GridView>
        </div>
        </div>
</asp:Content>

