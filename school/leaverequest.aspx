<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="leaverequest.aspx.cs" Inherits="school.leaverequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: 400px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;

        }
    </style>
     <main style="margin-top: 65px">
         <div class="container">
             <div class="row">
                 <div class="col-md-2">
                     <asp:Button ID="btnleavelist" runat="server" Text="leave list" />
                 </div>
                 <div class="col-md-2">
                     <asp:Button ID="btnleaverequest" runat="server" Text="leave request" />
                 </div>
             </div>
             <h5>Leave Request</h5><hr /><br /><br />
             <div class="row">
                 <div  class="col-md-2"></div>
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
             </div><br />
             <div class="row">
                 <div  class="col-md-2"></div>
                 <div class="col-md-2">
                     <asp:Label ID="lbldate" runat="server" Text="Date:"></asp:Label>
                 </div>
                 <div class="col-md-6">
                     <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" ></asp:TextBox>
                 </div>
             </div><br />
              <div class="row">
                 <div  class="col-md-2"></div>
                 <div class="col-md-2">
                     <asp:Label ID="lblreason" runat="server" Text="Reason:"></asp:Label>
                 </div>
                 <div class="col-md-7">
                     <textarea id="TextAreareason" cols="25" rows="2" Class="form-control" Font-Size="10px"></textarea>
                 </div>
             </div><br />
               <div class="row">
                 <div  class="col-md-2"></div>
                 <div class="col-md-2">
                     <asp:Label ID="lblattachment" runat="server" Text="Attachment:"></asp:Label>
                 </div>
                 <div class="col-md-7">
                     <asp:FileUpload ID="FileUpload1" placeholder="drag&drop files here" runat="server" CssClass="form-control" Height="45px" Width="350px" Font-Size="10px" />
                 </div>
             </div><br /><hr />
             <div class="row">
                 <div  class="col-md-2"></div>
                 <div class="col-md-2">
                     <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="30px" Width="100px" Font-Size="10px"/>
                 </div>
         </div>
     </main>
</asp:Content>
