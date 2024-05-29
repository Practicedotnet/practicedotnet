<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="feesremainder.aspx.cs" Inherits="school.feesremainder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

        h5 {
            font-size: large;
            color: white;
            padding-left: 5px;
        }
    </style>
    <main style="margin-top: 15px">
        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
                <h5>Fees Remainder</h5>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnremainderlist" runat="server" Text="Remainder List" Height="28px" CssClass="form-control" OnClick="btnfinelist_Click"  />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnaddremainder" runat="server" Text="Add Remainder" CssClass="form-control" Height="28px" OnClick="btncreatefine_Click" />
                </div>
            </div>
            <hr />
            <div runat="server" id="divremainderlist" visible="true">
                <h6>fine list</h6>

            </div>
            <div runat="server" id="divaddremainder" visible="false">

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Test</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblgroupname" runat="server" Text=" Group Name:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtgroupname" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblfeestype" runat="server" Text="Fees Type:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>normal</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblfinetype" runat="server" Text="Fine Type:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Fixed amount</asp:ListItem>
                            <asp:ListItem>Percentage</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblfinevalue" runat="server" Text="Fine Value:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtfinevalue" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbllatefine" runat="server" Text=" Late Fine Frequency:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Height="25px" Width="350px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>daily</asp:ListItem>
                            <asp:ListItem>weekly</asp:ListItem>
                            <asp:ListItem>fixed</asp:ListItem>
                            <asp:ListItem>monthly</asp:ListItem>
                            <asp:ListItem>annually</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
