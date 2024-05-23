<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Addclassteacher.aspx.cs" Inherits="school.Addclassteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 300px;
            height: 400px;
            margin-top: 10px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
            padding-left:15px;
            background-color:white;
        }

        .container1 {
            width: 400px;
            height: 200px;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }
        h6{
           font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 15px">
        <div class="row">
            <div class="col-md-5">
                <div class="container">
                    <div class="row" style="background-color:cornflowerblue">
                    <h6>Class Teacher Allocation</h6></div>
                    <hr />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:DropDownList runat="server" CssClass="form-control" Height="25px" Width="250px" CssClass="Label">
                                <asp:ListItem>select</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                        <asp:Label ID="lblclass" runat="server" Text="class"></asp:Label>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtleavecategory" runat="server" CssClass="form-control" Height="25px" Width="250px" CssClass="Label"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="lblsection" runat="server" Text="Section:"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TextBox ID="txtclassnumeric" runat="server" CssClass="form-control" Height="25px" Width="250px" CssClass="Label"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                        <asp:Label ID="lblclassteacher" runat="server" Text="Class Teacher"></asp:Label>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <asp:TextBox ID="txtsection" runat="server" CssClass="form-control" Height="25px" Width="250px" CssClass="Label"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <hr />
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" CssClass="Label" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="container1">
                     <div class="row" style="background-color:cornflowerblue; margin-left:0px ; margin-right:0px " >
                    <h6>class list</h6></div>
                    <hr />
                    <asp:GridView runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
