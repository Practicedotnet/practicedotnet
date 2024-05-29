<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="accountdeposit.aspx.cs" Inherits="school.accountdeposit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .container {
            width: 1000px;
            height: auto;
            margin-top: 10px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            background-color: white;
            padding-left: 15px;
            background-color: white;
        }

        h5 {
            font-size: large;
            color: white;
            padding-left: 5px;
        }
    </style>
    <main style="margin-top: 15px">
        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
                <h5>Office Accounting</h5>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnaccountlist" runat="server" Text="Account List" Height="28px" CssClass="form-control" OnClick="btnaccountlist_Click"   />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreateaccont" runat="server" Text="Create Account" CssClass="form-control" Height="28px" OnClick="btncreateaccont_Click"  />
                </div>
            </div>
            <hr />
            <div runat="server" id="divaccountlist" visible="true">
                <h6>Account list</h6>
            </div>
            <div runat="server" id="divcreateaccount" visible="false">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Test</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblaccountname" runat="server" Text=" Account Name:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtaccountname" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblaccountnumber" runat="server" Text="Account Number:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtaccountnumber" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldescription" runat="server" Text="Description:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <textarea id="TextArea1" cols="20" rows="2" class="form-control"></textarea>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblopeningbalance" runat="server" Text="Opening Balance:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtopeningbalance" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
