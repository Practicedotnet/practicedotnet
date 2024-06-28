<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="officeaccount.aspx.cs" Inherits="school.officeaccount" %>
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
                <h5>Office Accounting</h5>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnaccountlist" runat="server" Text="Account List" Height="28px" CssClass="form-control" OnClick="btnaccountlist_Click"   />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btncreateaccont" runat="server" Text="Create Account" CssClass="form-control" Height="28px" OnClick="btncreateaccont_Click"  />
                </div>
            </div>
            <hr />
            <div runat="server" id="divaccountlist" visible="true">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="126px" Width="958px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                        <asp:BoundField DataField="account_name" HeaderText="account_name" SortExpression="account_name" />
                        <asp:BoundField DataField="account_number" HeaderText="account_number" SortExpression="account_number" />
                        <asp:BoundField DataField="desciption" HeaderText="desciption" SortExpression="desciption" />
                        <asp:BoundField DataField="opening_balance" HeaderText="opening_balance" SortExpression="opening_balance" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString %>" SelectCommand="SELECT * FROM [office_account]"></asp:SqlDataSource>
            </div>
            <div runat="server" id="divcreateaccount" visible="false">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="ddlbranch" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Test</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblaccountname" runat="server" Text=" Account Name:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtaccountname" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblaccountnumber" runat="server" Text="Account Number:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtaccountnumber" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldescription" runat="server" Text="Description:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <textarea id="TxtDescription" runat="server" cols="20" rows="2" class="form-control"></textarea>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblopeningbalance" runat="server" Text="Opening Balance:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtopeningbalance" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" OnClick="btnsave_Click" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
