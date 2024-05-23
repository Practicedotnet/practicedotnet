<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createhostel.aspx.cs" Inherits="school.createhostel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: auto;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        h5 {
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 65px">
        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
<h5>Hostel Master</h5></div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <h5>Hostel Master</h5>
                </div>
                <div class="col-md-5"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnhostellist" runat="server" Text="Hostel list" Height="28px" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreatehostel" runat="server" Text="Create Hostel" CssClass="form-control" Height="28px"  />
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px"  color="yellow">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblhostelname" runat="server" Text="Hostel Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txthostelname" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcategory" runat="server" Text="Category:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>single</asp:ListItem>
                        <asp:ListItem>shared</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblwatchmanname" runat="server" Text="Watchman Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtwatchmanname" runat="server" CssClass="form-control" Height="25px" Width="350px" ></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblhosteladdress" runat="server" Text="Hostel Address:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextAreaaddress" cols="50" rows="2"  Class="form-control"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextArearemarks" cols="50" rows="1"  Class="form-control"></textarea>
                </div>
            </div>
            <br />
            <hr />
             <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
