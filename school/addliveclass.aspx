<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="addliveclass.aspx.cs" Inherits="school.addliveclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: 750px;
            margin-top: 70px;
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
    <main style="margin-top: 65px">
        <div class="container">
             <div class="row" style="background-color:cornflowerblue">
                 <h5>Live Class Rooms</h5></div>
            <br />
            <div class="row">
                
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnliveclasslist" CausesValidation="false" runat="server" Text="Liveclass list" Height="28px" Font-Size="10px" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnaddliveclass" runat="server" Text="Add live class" CssClass="form-control" Height="28px" Font-Size="10px" />
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
                    <asp:Label ID="lbltitle" runat="server" Text="Title:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblclass" runat="server" Text="Class:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>first select branch</asp:ListItem>
                        <asp:ListItem>nine</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsection" runat="server" Text="Section:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsection" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:CheckBox ID="cbselectall" Text="Select All" runat="server" CssClass="form-control" Height="25px" Width="110px" Font-Size="10px" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblliveclassmethod" runat="server" Text="Live Class Method:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtliveclassmethod" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbldate" runat="server" Text="Date:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltimeslot" runat="server" Text="Time Slot:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtfrom" runat="server" TextMode="Time" CssClass="form-control" Height="25px" Width="170px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtto" runat="server" TextMode="Time" CssClass="form-control" Height="25px" Width="170px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblduration" runat="server" Text="Duration" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtduration" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextArearemarks" cols="40" rows="2" class="form-control" height="25px" width="350px" font-size="10px"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Send Notification SMS" Height="25px" Width="150px" Font-Size="10px" />
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="80px" Font-Size="10px" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
