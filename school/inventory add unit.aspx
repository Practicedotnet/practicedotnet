<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="inventory add unit.aspx.cs" Inherits="school.inventory_add_unit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 300px;
            height: 260px;
            margin-top: auto;
            border: solid;
            border-color: lightgrey;
            margin-left: 40px;
        }

        .container1 {
            width: 300px;
            height: 260px;
            margin-top: auto;
            border: solid;
            border-color: lightgrey;
            margin-left: 300px;
        }
    </style>
    <main style="margin-top: 58px;">
        <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                    <div class="row">
                        <header>
                            <h5>Add Unit</h5>
                            <hr />

                        </header>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Label ID="lblunitname" runat="server" Text="Unit Name"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtunitname" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="form-control" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1">
                <div class="container1">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
