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
                    <asp:Button ID="btndepositlist" runat="server" Text="Deposit List" Height="28px" CssClass="form-control" OnClick="btndepositlist_Click" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreatedeposit" runat="server" Text="Create Deposit" CssClass="form-control" Height="28px" OnClick="btncreatedeposit_Click" />
                </div>
            </div>
            <hr />
            <div runat="server" id="divdepositlist" visible="true">
                <h6>Account list</h6>
            </div>
            <div runat="server" id="divcreatedeposit" visible="false">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlbranch" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Test</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblaccount" runat="server" Text=" Account:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlaccount" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>first select the branch</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblvoucherhead" runat="server" Text="Voucher Head:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlvoucherhead" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>first select the branch</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblref" runat="server" Text=" Ref:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlref" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>first select the branch</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblamount" runat="server" Text="Amount:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtamount" runat="server" CssClass="form-control" Height="25px" Width="350px" ></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldate" runat="server" Text="Date:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtdate" TextMode="Date" runat="server" CssClass="form-control" Height="25px" Width="350px" ></asp:TextBox>
                    </div>
                </div>
                <br />
                   <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblpayvia" runat="server" Text="Pay Via:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlpayvia" runat="server" CssClass="form-control" Height="25px" Width="350px">
                        <asp:ListItem>cash</asp:ListItem>
                            <asp:ListItem>card</asp:ListItem>
                            <asp:ListItem>cheque</asp:ListItem>
                            <asp:ListItem>bank transfer</asp:ListItem>
                            <asp:ListItem>others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />          

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldescription" runat="server" Text="Description:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <textarea id="TextAreadescription" runat="server" cols="20" rows="2" class="form-control"></textarea>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblattachment" runat="server" Text="Attachment:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:FileUpload ID="fileuploadattachment" runat="server" CssClass="form-control" Height="25px" Width="350px" />
                    </div>
                </div>
                <br />
                <br />
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" OnClick="btnsave_Click" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
