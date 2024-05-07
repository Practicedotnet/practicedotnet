<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Addleavecategory.aspx.cs" Inherits="school.Addleavecategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 300px;
            height: 350px;
            margin-top: auto;
            border: solid;
            border-color: lightgrey;
            margin-left: 40px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        .container1 {
            width: 450px;
            height: 180px;
            margin-top: auto;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 300px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
        }

        hr {
            color: gold;
            border: solid 2px;
        }

        .textbox {
            font-size: 15px;
        }

        .main {
            background-color: aquamarine;
            font-size: 8px;
        }
    </style>
    <main style="margin-top: 65px">
        <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                    <div class="row">
                        <header>
                            <h5>Add Leave Category</h5>
                            <hr />

                        </header>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label ID="lblleavecategory" runat="server" Text="Leave Category Name"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtleavecategory" runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="lblrole" runat="server" Text="Role:"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:DropDownList runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px">
                                <asp:ListItem>select</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Teacher</asp:ListItem>
                                <asp:ListItem>Accountant</asp:ListItem>
                                <asp:ListItem>librarian</asp:ListItem>
                                <asp:ListItem>student</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label ID="lbldays" runat="server" Text="Days"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtdays" runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <hr />
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="form-control" Height="25px" Width="100px" Font-Size="10px" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-1">
                <div class="container1">
                    <h5>Leave category List</h5>
                    <hr />
                    <div class="row">
                        <div class="col-md-6"></div>
                        <asp:GridView runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
