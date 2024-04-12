<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="deactivatereason.aspx.cs" Inherits="school.deactivatereason" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .container{
            width:300px;
            height:260px;
            margin-top:auto;
            border:solid;
            border-color: lightgrey;
            margin-left:40px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.5);
          
        }
        .container1{
            width:300px;
            height:260px;
            margin-top: auto;
            border:solid;
            border-color: lightgrey;
            margin-left:300px;
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
        <h5>Deactivate Reason</h5><hr />
            
                </header>
            <div class="row">
                <div class="col-md-2">
                    <asp:label id="lblbranch" runat="server" text="Branch:"></asp:label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                <asp:dropdownlist runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Test</asp:ListItem>
                </asp:dropdownlist>
                    </div>
            </div>
          </div>
          <div class="row">
              <asp:label id="lblunitname" runat="server" text="Reason"></asp:label>
          </div>
          <div class="row">
              <div class="col-md-10">
              <asp:textbox id="txtunitname" runat="server" CssClass="form-control"></asp:textbox>
               </div>
              </div><hr />
         
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-4">
                    <asp:button runat="server" text="Save" CssClass="form-control" />
                </div>
            </div>
    </div>
      </div>
  <div class="col-sm-1">
        <div class="container1">
           <div class="row">
               <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
           </div>
        </div>
      </div>
              </div>
        </main>
</asp:Content>
