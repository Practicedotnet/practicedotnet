<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="examsetup.aspx.cs" Inherits="school.examsetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height: 525px;
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
            <div class="row" style="background-color: cornflowerblue; margin-top:auto" >
            <h5>Exam Setup</h5></div><br />
            <div class="row">
               
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnexamlist" runat="server" Text="Exam list" Height="28px" Font-Size="10px" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreateexam" runat="server" Text="Create Exam" CssClass="form-control" Height="28px" Font-Size="10px" />
                </div>
            </div>

            <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
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
                    <asp:Label ID="lblname" runat="server" Text="Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblterm" runat="server" Text="Term:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>first select branch</asp:ListItem>
                        <asp:ListItem>term A</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />

            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblexamtype" runat="server" Text="Exam Type:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Marks</asp:ListItem>
                        <asp:ListItem>grade</asp:ListItem>
                        <asp:ListItem>marks and Grade</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />

            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmarkdistribution" runat="server" Text="Marks distribution:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmarksdistribution" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />


            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextArearemarks" cols="40" rows="2" class="form-control" height="25px" width="350px" font-size="10px"></textarea>
                </div>
            </div>
            <br />

            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="80px" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
