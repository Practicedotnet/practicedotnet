<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createsubject.aspx.cs" Inherits="school.createsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: 370px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        .container1 {
            width: 700px;
            height: 370px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }
        h5{
            color:gold;
        }
    </style>
    <main style="margin-top: 65px">
        <div class="container">
            <div class="row" style="background-color:cornflowerblue">
            <h5>Subject</h5></div><hr />
            <div class="row">
                <div class="col-md-2">
                    <asp:Button ID="btnsubjectlist" runat="server" Text="Subject list" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreatesubject" runat="server" Text="Create Subject" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" />
                </div>
            </div>

            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectname" runat="server" Text="Subject Name:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectcode" runat="server" Text="Subject Code:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectcode" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectauthor" runat="server" Text="Subject Author:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectauthor" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjecttype" runat="server" Text="Subject Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>theory</asp:ListItem>
                        <asp:ListItem>practical</asp:ListItem>
                        <asp:ListItem>optional</asp:ListItem>
                        <asp:ListItem>mandatory</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>
        </div>
        <div class="container1">
            <h6>subject list</h6>
        </div>
    </main>
</asp:Content>
