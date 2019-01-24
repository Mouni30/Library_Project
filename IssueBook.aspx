<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="IssueBook.aspx.cs" Inherits="IssueBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
            <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" >
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
                            <asp:Image ID="lbl_img" runat="server" ImageUrl='<% # Eval("BookImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" SelectText="Details" />


                </Columns>
            </asp:GridView>
        
</asp:Content>

