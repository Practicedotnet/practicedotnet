<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="deactivateaccount.aspx.cs" Inherits="school.deactivateaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .container{
            width:800px;
            height:200px;
            margin-top:auto;
            border:solid;
            border-color: lightgrey;
            margin-left:40px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
        }
    .container1{
            width:800px;
            height:200px;
            margin-top:40px;
            border:solid;
            border-color: lightgrey;
            margin-left:40px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
        }
    </style>
     <main style="margin-top: 58px;">
  <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">    
 <div class="container">
        <div class="row">   
            <header>
        <h5>Deactivate Account</h5><hr />
            
                </header>
            <div class="row">
                <div class="col-md-6">
                    <asp:label id="lblbranch" runat="server" text="Branch:"></asp:label>
                </div>
                <div class="col-md-6">
                  <asp:Label ID="lblrole" runat="server" Text="Role:"></asp:Label>
              </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                <asp:dropdownlist runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Test</asp:ListItem>
                </asp:dropdownlist>
                    </div>
                 <div class="col-md-6">
                  <asp:TextBox ID="txtrole" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
            </div>
          </div>
          <br />
          <div class="row">
              <div class="col-md-10"></div>
               <div class="col-md-2">
                    <asp:button runat="server" text="Filter" CssClass="form-control" />
                </div>
            </div>
    </div>
      </div><br /><br /><br />
       <div class="container1">
           <h6>Employee List</h6><hr />
       </div>
              </main>
</asp:Content>
