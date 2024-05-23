    <%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="add department.aspx.cs" Inherits="school.add_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 350px;
            height: 270px;
            margin-top: auto;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 40px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 15px;
            background-color:white;
        }

        .container1 {
            width: 350px;
            height: 270px;
            margin-top: auto;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 400px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            background-color:white;
        }

        .textbox {
            font-size: 15px;
        }

        .main {
            background-color: aquamarine;
            font-size: 8px;
        }

        h5 {
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 65px">
        <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                      <div class="row" style="background-color: cornflowerblue">
 <h5>Add Department</h5></div>
                    <div class="row">
                   <br /><br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <asp:Label ID="lblbranch" runat="server" CssClass="Label" Text="Branch:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                  <div class="col-md-1"></div>
                        <div class="col-md-2">
                        <asp:Label ID="lblunitname" runat="server" Text="Department Name" CssClass="Label"></asp:Label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtdepartmentname" runat="server" CssClass="form-control" Height="25px" Width="250px"></asp:TextBox>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="btn btn-success" Font-Size="10px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="container1">
                      <div class="row" style="background-color: cornflowerblue; margin-right:0px; margin-left:0px">
                     <h5>Department List  </h5></div>
                  <%--  <div>
                         <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="34px" Width="319px">
                            <Columns>
                                <asp:BoundField DataField="Did" HeaderText="Did" InsertVisible="False" ReadOnly="True" SortExpression="Did" Visible="false"/>
                                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                                <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
                                <asp:CommandField ShowEditButton="true" />  
                                <asp:CommandField ShowDeleteButton="true" /> 
                                </Columns>  
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Designation]"></asp:SqlDataSource>
                      </div>   --%>
                    <div class="row">
                    </div>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
