<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createevents.aspx.cs" Inherits="school.crea_teevents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <style>
        .container {
            width: 1000px;
            height: auto;
            margin-top: 10px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        h5 {
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 10px">
        <div class="container">
           
              <div class="row" style="background-color: cornflowerblue; margin-top:auto" >
                <h5>Events</h5></div><br />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btneventlist" runat="server" Text="Event list" Height="28px"  CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreateevent" runat="server" Text="Create Event" CssClass="form-control" Height="28px"  />
                </div>
            </div>

            <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px"  >
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltitle" runat="server" Text=" Title:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Height="25px" Width="350px"  ></asp:TextBox>
                </div>
            </div>
            <br />
             <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:CheckBox ID="CheckBox1" Text="Holidays" runat="server" />
                    </div>
                 </div><br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltype" runat="server" Text="Type:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px">
                        <asp:ListItem>no information Available</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
              <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblaudience" runat="server" Text="Type:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px">
                        <asp:ListItem>Everybody</asp:ListItem>
                        <asp:ListItem>selected classes</asp:ListItem>
                         <asp:ListItem>selected sections</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbldate" runat="server" Text="Date:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                   <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px"  ></asp:TextBox>
                </div>
            </div>
            <br />
             <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbldescription" runat="server" Text="Description:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-5">
                    <textarea id="TextArea1" cols="45" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br />
             <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblimage" runat="server" Text="Image:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Height="25px" Width="350px" />
                </div>
            </div>
            <br />
                   <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
