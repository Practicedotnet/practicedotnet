<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="leaverequest.aspx.cs" Inherits="school.leaverequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height:500px ;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 13px;
            background-color:white;
            font-family: Helvetica ;
        }

        h6 {
             font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 5px">
        <div class="container">
            <div class="row" style="background-color:cornflowerblue">
            <h6>Leaves</h6></div>
            <div class="row">
                <br />
                <div class="col-md-3"> <h6>Leave Request</h6>
            </div>
                <div class="col-md-5"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnleavelist" runat="server" Text="leave list" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnleaverequest" runat="server" Text="leave request" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" />
                </div>
            </div>
           <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblleavetype" runat="server" Text="Leave Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>sick leave</asp:ListItem>
                        <asp:ListItem>meternity leave</asp:ListItem>
                        <asp:ListItem>peternity leave</asp:ListItem>
                        <asp:ListItem>casual leave</asp:ListItem>
                        <asp:ListItem>marriage leave</asp:ListItem>
                        <asp:ListItem>earned leave</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbldate" runat="server" Text="Date:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblreason" runat="server" Text="Reason:"></asp:Label>
                </div>
                <div class="col-md-5">
                    <textarea id="TextAreareason" cols="25" rows="2" class="form-control" font-size="10px"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblattachment" runat="server" Text="Attachment:"></asp:Label>
                </div>
                <div class="col-md-7">
                    <asp:FileUpload ID="FileUpload1" placeholder="drag&drop files here" runat="server" CssClass="form-control" Height="45px" Width="350px" Font-Size="10px" />
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="30px" Width="100px" Font-Size="10px" />
                </div>
                <br />
            </div>
            </div>
    </main>
</asp:Content>
