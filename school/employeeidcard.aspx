<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="employeeidcard.aspx.cs" Inherits="school.employeeidcard" %>
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
            margin-left:1px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
        }
    hr{
        color:orange;
        border:solid;
    }
    </style>
     <main style="margin-top: 58px;">
  <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">    
 <div class="container">
        <div class="row">   
            <header>
        <h5>Select Ground</h5><hr />
            
                </header>
            <div class="row">
                <div class="col-md-3">
                    <asp:label id="lblbranch" runat="server" text="Branch:"></asp:label>
                </div>
                <div class="col-md-3">
                  <asp:Label ID="lblrole" runat="server" Text="Role:"></asp:Label>
              </div>
                <div class="col-md-3">
                  <asp:Label ID="lbltemplate" runat="server" Text="Template:"></asp:Label>
              </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                <asp:dropdownlist runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Test</asp:ListItem>
                </asp:dropdownlist>
                    </div>
                 <div class="col-md-3">
                <asp:dropdownlist runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                     <asp:ListItem>Teacher</asp:ListItem>
                     <asp:ListItem>Accountant</asp:ListItem>
                     <asp:ListItem>Library</asp:ListItem>
                     <asp:ListItem>Receptionist</asp:ListItem>
                     <asp:ListItem>Test</asp:ListItem>
                </asp:dropdownlist>
                    </div>
                <div class="col-md-3">
                <asp:dropdownlist runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>test</asp:ListItem>
                    <asp:ListItem>No information selected</asp:ListItem>
                </asp:dropdownlist>
                    </div>
          <br /><br /><hr />
          <div class="row">
              <div class="col-md-10"></div>
               <div class="col-md-2">
                    <asp:button runat="server" text="Filter" CssClass="form-control" />
                </div>
            </div>
    </div>
      </div><br /><br /><br />
       <div class="container1">
           <h6>Student List</h6><hr />
           <div class="row">
               <div class="col-md-2">
                   <asp:Label ID="lblprintdate" runat="server" Text="Print Date"></asp:Label>
               </div>
               <div class="col-md-2">
                   <asp:Label ID="lblexpirydate" runat="server" Text="Expiry Date"></asp:Label>
               </div>
           </div>
           <div class="row">
               <div class="col-md-2">
                   <asp:TextBox ID="txtprintdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
               </div>
               <div class="col-md-2">
                   <asp:TextBox ID="txtexpirydate" runat="server" TextMode="Date" CssClass ="form-control"></asp:TextBox>
               </div>
           </div>
       </div>
              </main>
</asp:Content>
