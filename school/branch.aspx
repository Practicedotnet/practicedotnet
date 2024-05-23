<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="school.branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 750px;
            height: 750px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color: white;
        }
 
    h5{
            color:white;
            font-size:large;
            margin-left:10px;
        }
    </style>


    <main style="margin-top: 15px">

        <div class="row">
            <div class="col-md-2">
                <asp:Button ID="btnbranchlist" runat="server" Text="Branch List"  Height="25px" Width="80px" Font-Size="10px" OnClick="btnbranchlist_Click" Font-Bold="true"  class="btn btn-primary"/>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btncreatebranch" runat="server" Text="Create Branch" class="btn btn-primary" Height="25px" Width="100px" Font-Size="10px" OnClick="btncreatebranch_Click"  Font-Bold="true"  />
            </div>
        </div>
         <div class="container" id ="divlist" runat="server" visible="true">
             <div class="row" style="background-color: cornflowerblue">
            <h5>Branch List</h5>
        </div>
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" DataKeyNames="Branchid" DataSourceID="SqlDataSource1" Height="153px" Width="700px" ForeColor="#333333" GridLines="None" RowHeaderColumn="Address">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="Branchid" HeaderText="Branchid" InsertVisible="False" ReadOnly="True" SortExpression="Branchid" />
                     <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                     <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                     <asp:BoundField DataField="Currency" HeaderText="Currency" SortExpression="Currency" />
                     <asp:BoundField DataField="CurrencySymbol" HeaderText="CurrencySymbol" SortExpression="CurrencySymbol" />
                     <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                     <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                     <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton ="true"
            ItemStyle-Width="150" DeleteImageUrl="~/images/Delete.png" HeaderText="Action" >
                     
<ItemStyle Width="150px"></ItemStyle>
                     </asp:CommandField>
                     
                 </Columns>
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderColor="#CCCCFF" BorderStyle="Solid" Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Bottom" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle ForeColor="#333333" BackColor="#F7F6F3" HorizontalAlign="Center" VerticalAlign="Middle" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" HorizontalAlign="Center" VerticalAlign="Middle" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Branch]"></asp:SqlDataSource>
             </div>
        <br />
        <br />
        <div class="container1" runat="server" id="divcreate" visible="false">
         <div class="row" style="background-color: cornflowerblue">
                <h5>Create Branch</h5>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranchname" runat="server" Text="Branch Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtbranchname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemain" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobileno" runat="server" Text="Mobile Number:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrency" runat="server" Text="Currency:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrency" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrencysymbol" runat="server" Text="Currency Symbol:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrencysymbol" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcity" runat="server" Text="City:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstate" runat="server" Text="State:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" TextMode="MultiLine"></asp:TextBox>   
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" OnClick="btnsave_Click1" />
                </div>
            </div>

        </div>
        </main>
</asp:Content>
