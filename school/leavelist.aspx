<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="leavelist.aspx.cs" Inherits="school.leavelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: 200px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        .container1 {
            width: 700px;
            height: 180px;
            margin-top: 40px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }

        hr {
            color: gold;
            border: solid 2px;
        }
    </style>
    <main style="margin-top: 65px">
        <div class="container">
            <h6>Select Ground</h6>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblrole" runat="server" Text="Role:"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="300px" Font-Size="10px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="300px" Font-Size="10px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>Librarian</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnfilter" runat="server" Text="Filter" CssClass="form-control" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>
        </div>
        <div class="container1">
            <h6>Leave List: </h6>
            <hr />
        </div>
    </main>

</asp:Content>
