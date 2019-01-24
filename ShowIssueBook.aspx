<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="ShowIssueBook.aspx.cs" Inherits="ShowIssueBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5" >
                <Columns>

                    <asp:TemplateField HeaderText="Issue ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueID" runat="server" Text='<% # Eval("IssueID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Student Email ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_StudentEmailID" runat="server" Text='<% # Eval("StudentEmailID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Issue Date" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueDate" runat="server" Text='<% # Eval("IssueDate") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Issue Status" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueStatus" runat="server" Text='<% # Eval("IssueStatus") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_BookID" runat="server" Text='<% # Eval("BookID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
		    <asp:TemplateField HeaderText="Book Title" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_BookTitle" runat="server" Text='<% # Eval("BookTitle") %>' />
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
</asp:Content>

