<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="deactivatereason.aspx.cs" Inherits="school.deactivatereason" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 300px;
            height: 260px;
            margin-top: 40px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 40px;
            box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        .container1 {
            width: 300px;
            height: 260px;
            margin-top: 40px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 300px;
            box-shadow: 0px 0px 3px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        h5 {
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
                            <h5>Deactivate Reason</h5>
                            <hr />

                        </header>
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:DropDownList runat="server" CssClass="form-control" Font-Size="10px" Height="25px" Width="250px">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label ID="lblunitname" runat="server" Text="Reason"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtunitname" runat="server" CssClass="form-control" Font-Size="10px" Height="25px" Width="250px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <hr />

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="form-control" Font-Size="10px" Height="25px" Width="80px" />
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
