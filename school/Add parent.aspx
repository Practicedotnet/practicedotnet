<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Add parent.aspx.cs" Inherits="school.Add_parent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: auto;
            height: 800px; 
            margin-top: 0px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 20px;
            margin-right: 20px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
        }
        h6{
            color:gold;
        }
    </style>
    <main style="margin-top: auto 0px;">
        <div class="container">
            <div class="row">
                <h6>Add Parent</h6>
                <hr />
            </div>
            <h6>Academic Details</h6><br />
            <div class="row">
                <div class="col-md-2">
                <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownListbranch" runat="server" CssClass="form-control" placeholder="select" Height="28px" Font-Size="10px">
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <h6>Parent Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblrelation" runat="server" Text="Relation"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtrelation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="lblfathername" runat="server" Text=" Father Name"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblmothername" runat="server" Text="Mother Name"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmothername" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lbloccupation" runat="server" Text=" Occupation"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblincome" runat="server" Text="Income"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbleducation" runat="server" Text="Education"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtoccupation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtincome" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txteducation" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblcity" runat="server" Text=" City"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblmobile" runat="server" Text="Mobile"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="150px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="150px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" Height="25px" Width="150px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="25px" Width="150px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="25px" Width="500px"></asp:TextBox>
                </div>
                <div class="col-md-10">
                    <asp:Label ID="lblprofile" runat="server" Text="Profile Picture"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Font-Size="10px" Width="780px" Height="180px" placeholder="drag and drop your files here" />
                </div>
            </div>
            <h6>Social Links</h6>
            <hr />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblfacebook" runat="server" Text=" Facebook"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbltwitter" runat="server" Text="Twitter"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbllinkedin" runat="server" Text="LinkedIn"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtfacebook" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txttwitter" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtlinkedin" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" OnClick="btnsave_Click" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
