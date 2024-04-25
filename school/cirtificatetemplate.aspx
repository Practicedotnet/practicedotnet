<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="cirtificatetemplate.aspx.cs" Inherits="school.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
        .container {
            width: 750px;
            height: auto;
            margin-top: 80px;
            border: solid;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgb(177, 172, 172);
            padding: 10px;
        }

        hr {
            color: orange;
            border: solid 1px;
        }
    </style>
    <main style="margin-top: 58px;">
        <div class="container">
            <h6>Cirtificate Template</h6><hr />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Font-Size="10px" Height="28px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lbladmitcardname" runat="server" Text="Cirtificate Name:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcirtificatename" runat="server" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblapplicableuser" runat="server" Text="applicable user:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Font-Size="10px" Height="28px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>student</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
            </div></div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblpagelayout" runat="server" Text="Page Layout:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Font-Size="10px" Height="28px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>A4(potrait)</asp:ListItem>
                        <asp:ListItem>A4(landScape)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lbluserphotostyle" runat="server" Text="User Photo Style" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtsquare" runat="server" placeholder="Square(round)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtphotosize" runat="server" placeholder="Photo Size(in px)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lbllayoutspacing" runat="server" Text="Layout Spacing:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txttop" runat="server" placeholder="Top Space(in px)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtbottom" runat="server" placeholder="Bottonm Space(in px)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtright" runat="server" placeholder="Right Space(in px)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtleft" runat="server" placeholder="Left Space(in px)" CssClass="form-control" Font-Size="10px" Height="28px"></asp:TextBox>
                </div>
            </div>
            <br />
           <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblsignatureimage" runat="server" Text="Signature Image:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="10px" Height="28px" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lbllogoimage" runat="server" Text="Logo Image:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload2" runat="server" Font-Size="10px" Height="28px" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblbackgroundimage" runat="server" Text="Background Image:" Font-Size="10px"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:FileUpload ID="FileUpload3" runat="server" Font-Size="10px" Height="28px" />
                </div>
            </div>
            <br />
        </div>
    </main>

</asp:Content>
