<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="school.branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <asp:Button ID="btnbranchlist" runat="server" Text="Branch List"  Height="25px" Width="80px" Font-Size="10px" OnClick="btnbranchlist_Click" Font-Bold="true"  class="btn btn-primary"/>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btncreatebranch" runat="server" Text="Create Branch" class="btn btn-primary" Height="25px" Width="100px" Font-Size="10px" OnClick="btncreatebranch_Click"  Font-Bold="true"  />
            </div>
        </div>
         <div class="container" id ="divlist" runat="server" visible="true">
            <h6>Branch List</h6>
        </div>
        <br />
        <br />
        <div class="container1" runat="server" id="divcreate" visible="false">
         <div class="row" style="background-color: cornflowerblue">
                <h5>Create Branch</h5>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranchname" runat="server" Text="Branch Name"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtbranchname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemain" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobileno" runat="server" Text="Mobile Number:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrency" runat="server" Text="Currency:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrency" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrencysymbol" runat="server" Text="Currency Symbol:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrencysymbol" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" TextMode="MultiLine"></asp:TextBox>   
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" OnClick="btnsave_Click1" />
                </div>
            </div>

        </div>
        </main>
</asp:Content>
