<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="controlclasses.aspx.cs" Inherits="school.controlclasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 300px;
            height: 370px;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            padding-left:40px;
            margin-left:15px;
            background-color:white;
        }

        .container1 {
            width: 400px;
            height: 200px;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 0px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        .container2 {
            width: 800px;
            height: 915px; 
            margin-top: 0px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 15px;
            margin-right: 20px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        h6 {
            font-size:large;
            margin-left:10px;
            color: white;
        }
    </style>
    <main style="margin-top: 10px">
        <div class="container2">
            <div class="row" style="background-color:cornflowerblue; width:800px; margin-left:0px">
            <h6>Control Classes</h6></div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button ID="btnclass" runat="server" Text="Class" CssClass="form-control" Height="28px" Font-Size="10px" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnsection" runat="server" Text="Section" CssClass="form-control" Height="28px" Font-Size="10px" Border="0px" />
                </div>
            </div><br />
            <div class="row">
                <div class="col-md-5">
                    <div class="container">
                        <h6>Create Class</h6>
                        <hr />
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
                        <br />
                        <div class="row">
                            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col-md-10">
                                <asp:TextBox ID="txtleavecategory" runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="lblclassnumeric" runat="server" Text="Class Numeric:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:TextBox ID="txtclassnumeric" runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <asp:Label ID="lblsection" runat="server" Text="Section"></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col-md-10">
                                <asp:TextBox ID="txtsection" runat="server" CssClass="form-control" Height="25px" Width="250px" Font-Size="10px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <hr />
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <asp:Button runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="container1">
                        <h6>class list</h6>
                        <hr />
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
