<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="uploadcontent.aspx.cs" Inherits="school.uploadcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 700px;
            height: 660px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        h5 {
            color: white;
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 65px">
        <div class="container">
             <div class="row" style="background-color:cornflowerblue">
                   <h5>Upload Content</h5></div>
            <br />
            <div class="row">
               
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnattachments" runat="server" Text="Attachments" Height="28px" CssClass="Label" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreateattachments" runat="server" Text="Create Attachments" CssClass="form-control" Height="28px" CssClass="Label" />
                </div>
            </div>

            <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltitle" runat="server" Text="Title:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbltype" runat="server" Text="Type:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>first select branch</asp:ListItem>
                        <asp:ListItem>nine</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <asp:CheckBox ID="cbforallclasses" Text="Available for all classes" runat="server" CssClass="form-control" Height="25px" Width="180px" CssClass="Label" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblclass" runat="server" Text="Class:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>first select branch</asp:ListItem>
                        <asp:ListItem>nine</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-5">
                    <asp:CheckBox ID="cbnotsubject" Text="Notaccording to Subject" runat="server" CssClass="form-control" Height="25px" Width="180px" CssClass="Label" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblsubject" runat="server" Text="Subject:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label"></asp:TextBox>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblpublishdate" runat="server" Text="Publish Date:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtpubleshdate" TextMode="Date" runat="server" CssClass="form-control" Height="25px" Width="350px" CssClass="Label"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <textarea id="TextArearemarks" cols="40" rows="2" class="form-control" height="25px" width="350px" CssClass="Label"></textarea>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblattachfile" runat="server" Text="Attach File"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" Height="25px" Width="350px" CssClass="Label" />
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="form-control" Height="25px" Width="80px" CssClass="Label" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
