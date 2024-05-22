<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="school.branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 750px;
            height: 750px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color: white;
        }
 
    h5{
            color:white;
            font-size:large;
            margin-left:10px;
        }
    </style>


    <main style="margin-top: 15px">

        <div class="row">
            <div class="col-md-2">
                <asp:Button ID="btnbranchlist" runat="server" Text="Subject list" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px"  />
            </div>
            <div class="col-md-2">
                <asp:Button ID="btncreatebranch" runat="server" Text="Create Subject" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px"  />
            </div>
        </div>



        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
                <h5>Subject</h5>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranchname" runat="server" Text="Branch Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtbranchname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemain" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobileno" runat="server" Text="Mobile Number:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrency" runat="server" Text="Currency:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrency" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrencysymbol" runat="server" Text="Currency Symbol:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrencysymbol" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcity" runat="server" Text="City:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstate" runat="server" Text="State:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextAreaaddress" cols="59" rows="3" Class="form-control"></textarea>
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>

        </div>
        </main>
</asp:Content>
