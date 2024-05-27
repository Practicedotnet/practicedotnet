<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="bulk_sms_mail.aspx.cs" Inherits="school.bulk_sms_mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
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
        h5{
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 15px">
        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
                <h5>Bulk SMS and Email</h5>
            </div>
            <hr />
             <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsms" runat="server" Text="SMS" Height="28px"  CssClass="form-control"  OnClick="btnsms_Click" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnemail" runat="server" Text="EMail" CssClass="form-control" Height="28px" OnClick="btnemail_Click"  />
                </div>
            </div>
            <hr />
            
        <div  runat="server" id="divsms" visible="true">
            
          <div class="row">
              <div class="col-md-3">
                  <asp:Label ID="lblbranch" runat="server" Text="Branch" CssClass="Label"></asp:Label>
              </div>
              <div class="col-md-3">
                  <asp:Label ID="lblcampaignname" runat="server" Text="Campaign Name" CssClass="Label"></asp:Label>
              </div>
              <div class="col-md-3">
                  <asp:Label ID="lbltemplate" runat="server" Text="lbltemplate" CssClass="Label"></asp:Label>
              </div>
          </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="30px" Width="180px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcampaignname" runat="server" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="30px" Width="180px">
                        <asp:ListItem>No information available</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div><br />
           <div class="row">
               <div class="col-md-2">
                   <asp:Label ID="lblmessage" runat="server" Text="Message" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-5">
                   <textarea id="txtareamessage" cols="45" rows="2" class="form-control"></textarea>
               </div>
           </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:Label ID="lblsmsgateway" runat="server" Text="Message" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-3">
                   <asp:Label ID="lbldlttemplateid" runat="server" Text="Label" CssClass="Label"></asp:Label>
               </div>
                 <div class="col-md-3">
                   <asp:Label ID="lbltype" runat="server" Text="Label" CssClass="Label"></asp:Label>
               </div>
           </div><br />
             <div class="row">
               <div class="col-md-3">
                   <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="30px" Width="180px">
                       <asp:ListItem> No SMS gateway available</asp:ListItem>
                   </asp:DropDownList>
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txttmplateid" runat="server" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
                 <div class="col-md-3">
                     <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Height="30px" Width="180px">
                         <asp:ListItem> group</asp:ListItem>
                         <asp:ListItem>Individual</asp:ListItem>
                         <asp:ListItem>Class</asp:ListItem>
                     </asp:DropDownList>
               </div>
           </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:CheckBox ID="CheckBox1" Text="Send Later" runat="server" />
                   </div>
                </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:Label ID="lblscheduledate" runat="server" Text="Schedule Date" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-3">
                   <asp:Label ID="lblscheduletime" runat="server" Text="Schedule Time" CssClass="Label"></asp:Label>
               </div>
                </div>
            <div class="row">
               <div class="col-md-3">
                   <asp:TextBox ID="txtdate" runat="server" TextMode="Time" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="txttime" runat="server" TextMode="Date" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
                </div>
            
            </div>
               <div runat="server" id="divemail" visible="false">
                    
                           <div class="row">
              <div class="col-md-3">
                  <asp:Label ID="Label1" runat="server" Text="Branch" CssClass="Label"></asp:Label>
              </div>
              <div class="col-md-3">
                  <asp:Label ID="Label2" runat="server" Text="Campaign Name" CssClass="Label"></asp:Label>
              </div>
              <div class="col-md-3">
                  <asp:Label ID="Label3" runat="server" Text="lbltemplate" CssClass="Label"></asp:Label>
              </div>
          </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Height="30px" Width="180px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Height="30px" Width="180px">
                        <asp:ListItem>No information available</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div><br />
           <div class="row">
               <div class="col-md-2">
                   <asp:Label ID="lblmessagemail" runat="server" Text="Message" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-5">
                   <textarea id="txtareamessagemail" cols="45" rows="2" class="form-control"></textarea>
               </div>
           </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:Label ID="lblemailsubject" runat="server" Text="Email Subject" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-3">
                   <asp:Label ID="lblmailtype" runat="server" Text="Type" CssClass="Label"></asp:Label>
               </div>
                 
           </div>
             <div class="row">
         
               <div class="col-md-3">
                   <asp:TextBox ID="txtemailsubject" runat="server" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
                 <div class="col-md-3">
                     <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control" Height="30px" Width="180px">
                         <asp:ListItem> group</asp:ListItem>
                         <asp:ListItem>Individual</asp:ListItem>
                         <asp:ListItem>Class</asp:ListItem>
                     </asp:DropDownList>
               </div>
           </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:CheckBox ID="CheckBox2" Text="Send Later" runat="server" />
                   </div>
                </div><br />
            <div class="row">
               <div class="col-md-3">
                   <asp:Label ID="Label8" runat="server" Text="Schedule Date" CssClass="Label"></asp:Label>
               </div>
               <div class="col-md-3">
                   <asp:Label ID="Label9" runat="server" Text="Schedule Time" CssClass="Label"></asp:Label>
               </div>
                </div>
            <div class="row">
               <div class="col-md-3">
                   <asp:TextBox ID="TextBox3" runat="server" TextMode="Time" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
               <div class="col-md-3">
                   <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" CssClass="form-control" Height="30px" Width="180px"></asp:TextBox>
               </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
