<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="studentidcardgenerator.aspx.cs" Inherits="school.studentidcardgenerator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 800px;
            height: auto;
            margin-top: 40px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        .container1 {
            width: 800px;
            height: 200px;
            margin-top: 20px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        hr {
            /*color:orange;*/
            /*/*border:solid;*/ */
        }

        h6 {
            color: gold;
        }
    </style>
    <main style="margin-top: 58px;">
        <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                    <div class="row">
                        <header>
                            <h6>Select Ground</h6>
                            <hr />

                        </header>
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label ID="lblclass" runat="server" Text="Class:"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label ID="lblsection" runat="server" Text="Section:"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:Label ID="lbltemplate" runat="server" Text="Template:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="150px" CssClass="Label">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="150px" CssClass="Label">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Nine</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="150px" CssClass="Label">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>All Sections</asp:ListItem>
                                    <asp:ListItem>A Section</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="150px" CssClass="Label">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>TEmplate 1</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <br />
                            <hr />
                            <div class="row">
                                <div class="col-md-10"></div>
                                <div class="col-md-2">
                                    <asp:Button runat="server" Text="Filter" CssClass="form-control" Height="28px" Width="80px" CssClass="Label" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="container1">
                    <h6>Student List</h6>
                    <hr />
                    <div class="row">
                        <div class="col-md-3">
                            <asp:Label ID="lblprintdate" runat="server" Text="Print Date"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="lblexpirydate" runat="server" Text="Expiry Date"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtprintdate" runat="server" TextMode="Date" CssClass="form-control" Height="28px" Width="150px" CssClass="Label"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtexpirydate" runat="server" TextMode="Date" CssClass="form-control" Height="28px" Width="150px" CssClass="Label"></asp:TextBox>
                        </div>
                    </div>
                </div>
    </main>
</asp:Content>
