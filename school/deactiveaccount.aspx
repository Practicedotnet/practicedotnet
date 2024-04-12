<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="deactiveaccount.aspx.cs" Inherits="school.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container{
            width:800px;
            height: 200px;
            margin-top:auto;
            border:solid;
            border-color: lightgrey;
            margin-left:10px;
        }
    </style>
    <main style="margin-top: 58px;">
        <div class="container">
            <div class="row">
                <h6>Select Ground</h6><hr />
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblclass" runat="server" Text="Class"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblsection" runat="server" Text="Section"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass ="form-control">
                        <asp:ListItem>First select the class </asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass ="form-control">
                        <asp:ListItem>First Select the Branch</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div><br />
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnfilter" runat="server" Text="Filter" CssClass ="form-control" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
