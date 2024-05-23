<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="school.branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height: 750px;
            margin-top: 60px;
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
  <%--  Printcode----%>
    <script type="text/javascript">
        function PrintGridData() {
            var prtGrid = document.getElementById('<%=GridView1.ClientID %>');
            var prtwin = window.open('', 'PrintGridView',
'left=100,top=100,width=400,height=400,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrid.outerHTML);
            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
       }
   </script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <main style="margin-top: 15px">

        <div class="row">
            <div class="col-md-2">
                <asp:Button ID="btnbranchlist" CausesValidation="false" runat="server" Text="Branch List"  Height="25px" Width="80px" Font-Size="10px" OnClick="btnbranchlist_Click" Font-Bold="true"  class="btn btn-primary"/>
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
               <div class="row"><div class="col-md-5"> <asp:ImageButton ID="ImgBExcel" runat="server" ImageUrl="images/Excel.jpg" />
                 <asp:ImageButton ID="ImgBpdf" runat="server" ImageUrl="images/Pdf.png" />
                 <asp:ImageButton ID="ImgBPrint" runat="server" ImageUrl="images/Print.png" /></div>
                 <div class="glyphicon">
	              <i class="glyphicon glyphicon-search form-control-feedback"></i>
	              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control glyphicon glyphicon-search"  Height="25px" ></asp:TextBox>
                  </div>                                                     
             </div>
             <br />
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover "  AutoGenerateColumns="False"  DataKeyNames="Branchid" DataSourceID="SqlDataSource1" Height="35px" Width="100
                 px" ForeColor="#333333" GridLines="None" RowHeaderColumn="Address">
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
                 <RowStyle ForeColor="#333333" BackColor="#F7F6F3" HorizontalAlign="Center" />
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
                    <asp:Label ID="lblbranchname" runat="server" Text="Branch Name"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtbranchname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter BranchName" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVBranchName" runat="server" ErrorMessage="Enter BranchName" ControlToValidate="txtbranchname" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name:" ></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter SchoolName" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RFVSchoolName" runat="server" ControlToValidate="txtschoolname" ErrorMessage="Enter School Name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Email Address"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobileno" runat="server" Text="Mobile Number:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Mobile Number"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrency" runat="server" Text="Currency:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrency" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Currency"></asp:TextBox>
                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrencysymbol" runat="server" Text="Currency Symbol:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrencysymbol" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Currency Symbol"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter City"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstate" ErrorMessage="Please Enter State " ForeColor="#FF5050"></asp:RequiredFieldValidator>

                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="30px" Width="350px" Font-Size="10px" TextMode="MultiLine" placeholder="Enter Address" ></asp:TextBox>   
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
