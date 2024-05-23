  <%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="createsubject.aspx.cs" Inherits="school.createsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height: 400px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        .container1 {
            width: 1000px;
            height: 370px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }
        h5{
            color:white;
            font-size:large;
            margin-left:10px;
        }
    </style>


    <main style="margin-top: 65px">
       
            <div class="row">
                <div class="col-md-2">
                    <asp:Button ID="btnsubjectlist" runat="server" Text="Subject list" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" OnClick="btnsubjectlist_Click" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreatesubject" runat="server" Text="Create Subject" CssClass="form-control" Height="25px" Width="80px" Font-Size="10px" OnClick="btncreatesubject_Click" />
                </div>
            </div>
        


        <div class="container" runat="server" id="divcreate" visible="true">
            <div class="row" style="background-color:cornflowerblue">
            <h5>Subject</h5></div><hr />
            

            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectname" runat="server" Text="Subject Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectcode" runat="server" Text="Subject Code:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectcode" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjectauthor" runat="server" Text="Subject Author:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubjectauthor" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubjecttype" runat="server" Text="Subject Type:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>theory</asp:ListItem>
                        <asp:ListItem>practical</asp:ListItem>
                        <asp:ListItem>optional</asp:ListItem>
                        <asp:ListItem>mandatory</asp:ListItem>
                    </asp:DropDownList>
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
     
        
          <div class="container1" id ="divlist" runat="server" visible="false">
            <h6>subject list</h6>
        </div>

    </main>
</asp:Content>
