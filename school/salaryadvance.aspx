<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="salaryadvance.aspx.cs" Inherits="school.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 750px;
            height: 200px;
            margin-top: 40px;
            border: solid;
            border-color: lightgrey;
            margin-left: 20px;
            box-shadow: 0px 0px 1px 0px rgb(177, 172, 172);
        }

        .container1 {
            width: 750px;
            height: 200px;
            margin-top: 40px;
            border: solid;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgb(177, 172, 172);
        }

        hr {
            color: orange;
            border: solid 1px;
        }
    </style>
    <main style="margin-top: 58px;">
        <%--<div class="container pt-4"></div>--%>

        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                    <div class="row">
                        <header>
                            <h5>Select Ground</h5>
                            <hr />

                        </header>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblclass" runat="server" Text="Class:"></asp:Label>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="25px" CssClass="Label">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="form-control" Height="25px" CssClass="Label"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <hr />
                            <div class="row">
                                <div class="col-md-10"></div>
                                <div class="col-md-2">
                                    <asp:Button runat="server" Text="Filter" CssClass="form-control" Height="25px" CssClass="Label" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="container1">
                        <h6>Advance Salary</h6>
                        <hr />
                    </div>
    </main>
</asp:Content>
