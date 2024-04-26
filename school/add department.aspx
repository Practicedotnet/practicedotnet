<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="add department.aspx.cs" Inherits="school.add_department" %>
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
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
          font-size:10px;
        }
        .container1{
            width:300px;
            height:260px;
            margin-top: auto;
            border:solid;
            border-color: lightgrey;
            margin-left:300px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            textbox
        }
        .textbox{
           font-size:15px;
        }
        .main{
            background-color: aquamarine;
            font-size:8px;
        }
    </style>
    <main style="margin-top:65px">
  <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">    
 <div class="container">
        <div class="row">   
            <header>
        <h5>Add Department</h5><hr />
            
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
              <asp:label id="lblunitname" runat="server" text="Department Name"></asp:label>
          </div>
          <div class="row">
              <div class="col-md-10">
              <asp:textbox id="txtdepartmentname" runat="server" CssClass="form-control" Height="25px" Width="150px"></asp:textbox>
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
               <asp:gridview runat="server"></asp:gridview>
           </div>
        </div>
      </div>  
              </div>
        </main>

</asp:Content>
