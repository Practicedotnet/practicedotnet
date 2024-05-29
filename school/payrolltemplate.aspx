<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="payrolltemplate.aspx.cs" Inherits="school.payrolltemplate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
    <style>
        .container {
            width: 970px;
            height: auto;
            margin-top: auto;
            border: solid;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 5px 0px rgba(252, 250, 250, 0.23);
            font-size: 12px;
            background-color:white;
        }

        .container1 {
            width: 350px;
            height: 150px;
            margin-top: 50px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 5px;
            box-shadow: 0px 0px 5px 0px rgba(252, 250, 250, 0.23);
            font-size: 12px;
        }

        .container2 {
            width: 300px;
            height: 150px;
            margin-top: 50px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 350px;
            box-shadow: 0px 0px 5px 0px rgba(252, 250, 250, 0.23);
            font-size: 12px;
        }

        .container3 {
            width: 300px;
            height: auto;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 415px;
            box-shadow: 0px 0px 5px 0px rgba(252, 250, 250, 0.23);
            font-size: 12px;
        }

        h6 {
            color: gold;
            font-size:18px;
        }
        h5{
             font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 58px;">
        <div class="container">
            <div class="row" style="background-color:cornflowerblue">
            <h5>Payroll</h5></div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="lbltemplatelist" runat="server" Text="Template List"  CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblcreatetemplate" runat="server" Text="Create Template" CssClass="Label"></asp:Label>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Font-Size="10px">
                        <asp:ListItem Text="12px">Select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsalarygrade" runat="server" Text="Salary Grade" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtsalarygrade" runat="server" CssClass="form-control" placeholder="Grade name here" Height="25px" Font-Size="11px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbasicsalary" runat="server" Text="Basic Salary" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtbasicsalary" runat="server" CssClass="form-control" placeholder="Basic Salary Here" Height="25px" Font-Size="11px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblovertimerate" runat="server" Text="Overtime Rate(per hour)" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtovertimerate" runat="server" CssClass="form-control" placeholder="Overtime Rate here" Height="25px" Font-Size="11px"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-md-1">
                    <div class="container1">
                        <h6>Allowances</h6>
                        <hr />
                        <div class="row">


                            <div class="col-md-6">
                                <asp:TextBox ID="txtallowancename" runat="server" CssClass="form-control" placeholder="Name Of Allowance" Height="25px" Font-Size="11px"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtamount" runat="server" CssClass="form-control" placeholder="Amount" Height="25px" Font-Size="11px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:Button ID="btnaddrows" runat="server" Text="Add Rows+" CssClass="form-control" Height="25px" Font-Size="11px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="container2">
                        <h6>Deductions</h6>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox ID="txtdeductions" runat="server" CssClass="form-control" placeholder="Name Of deductions" Height="25px" Font-Size="11px"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtamountd" runat="server" CssClass="form-control" placeholder="Amount" Height="25px" Font-Size="11px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <asp:Button ID="btnaddrowsd" runat="server" Text="Add Rows+" CssClass="form-control" Height="25px" Font-Size="11px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container3">
                <h6>Salary Details</h6>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="lblbasicsalary1" runat="server" Text="Basic Salary" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtbasicsalary1" runat="server" CssClass="form-control" placeholder="0" Height="25px" Font-Size="11px"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="lbltotalallowance" runat="server" Text="Total Allowance" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txttotalallowance" runat="server" CssClass="form-control" placeholder="0" Height="25px" Font-Size="11px"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="lbltotaldeductions" runat="server" Text="Total Deductions" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txttotaldeductions" runat="server" CssClass="form-control" placeholder="0" Height="25px" Font-Size="11px"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="lblnetsalary" runat="server" Text="Net Salary"  CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtnetsalary" runat="server" CssClass="form-control" placeholder="0" Height="25px" Font-Size="11px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Font-Size="11px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
