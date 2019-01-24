<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="SearchAdmin.aspx.cs" Inherits="SearchAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script>
        $(document).ready(function () {
            $("#main_btn_search").click(function () {
                if ($("#main_txt_search").val().length == 0) {
                    $("#main_txt_search_error").show();
                    $("#main_txt_search").focus();
                    return false;
                }
                else {
                    $("#main_txt_search_error").hide();
                }

            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-success" />
      <div class="form-group" style="text-align:left;width:35%">
                <label class="form-control-static">Search Key :</label>
                <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" />
            <label for="txt_search" id="txt_search_error" class="text-danger">*</label>
            </div>
            <div class="form-group">
                <asp:Button ID="btn_search" runat="server" Text="SearchStudent" CssClass="btn-danger" OnClick="btn_search_Click"  />
            </div>
        <div class="form-group">
        
            <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" OnRowEditing="gv_books_RowEditing" OnRowUpdating="gv_books_RowUpdating" OnRowCancelingEdit="gv_books_RowCancelingEdit" OnSelectedIndexChanged="gv_books_SelectedIndexChanged" OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5"  >
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
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_btitle" runat="server" Text='<% # Eval("BookTitle") %>' />
                       <asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_btitle" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Book Author Name" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAuthor" runat="server" Text='<% # Eval("BookAuthorName") %>' />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txt_bAuthor" runat="server" Text='<% # Eval("BookAuthorName") %>' />
                            <asp:RequiredFieldValidator ID="r2" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bAuthor" />

                               </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Pages" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bPages" runat="server" Text='<% # Eval("BookPages") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_bPages" runat="server" Text='<% # Eval("BookPages") %>' />
                            <asp:RequiredFieldValidator ID="r3" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bPages" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Category" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bcategory" runat="server" Text='<% # Eval("BookCategory") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="txt_bcategory" runat="server" Value='<% # Eval("BookCategory") %>'>
                                <asp:ListItem Text="Select" Value="" />
                                <asp:ListItem Text="Coding" Value="Coding" />
                                <asp:ListItem Text="Testing" Value="Testing" />
                                <asp:ListItem Text="Analyst" Value="Analyst" />
                                <asp:ListItem Text="Programming" Value="Programming" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="r4" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bcategory" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Book Image" >
                        <ItemTemplate>
                            <asp:Image ID="lbl_img" runat="server" Height="100px" Width="100px" ImageUrl='<% # Eval("BookImage") %>' />
                        </ItemTemplate>
                          <EditItemTemplate>
                              <asp:FileUpload ID="txt_img" runat="server" Height="100px" Width="100px"  />
                              <asp:RequiredFieldValidator ID="r5" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_img" />
                          </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" SelectText="Details" />
                     <asp:CommandField ShowEditButton="true" SelectText="Details" ValidationGroup="Update" />

                </Columns>
            </asp:GridView>
        </div>
        </div>
</asp:Content>

