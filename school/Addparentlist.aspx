<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Addparentlist.aspx.cs" Inherits="school.Addparentlist" %>
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
    <%------Excel--------%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="Scripts/table2excel.js"></script>
<script type="text/javascript">
    function Export() {
        $("[id*=tblCustomers]").table2excel({
            filename: "Table.xls"
        });
        return false;
    }
</script>
       <%-- PDF--%>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script type="text/javascript">
    $("body").on("click", "#btnExport1", function () {
        html2canvas($('[id*=GridView1]')[0], {
            onrendered: function (canvas) {
                var data = canvas.toDataURL();
                var docDefinition = {
                    content: [{
                        image: data,
                        width: 500
                    }]
                };
                pdfMake.createPdf(docDefinition).download("Table.pdf");
            }
        });
    });
</script>
  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <main style="margin-top: 15px">

       <div class="container" id ="divlist" runat="server" visible="true">
             <div class="row" style="background-color: cornflowerblue">
            <h5>Parent List</h5>
        </div>
              <br />
             
             <%--<input type="button" id="btnExport" value="Export" />--%>
         <div class="row"><div class="col-md-5"> 
                 <%--<asp:ImageButton ID="ImgBExcel" runat="server" ImageUrl="images/Excel.jpg" tooltip="Export this List" OnClick="ImgBExcel_Click"  />&nbsp--%>
                    <input type="button" id="btnPrint" value="Print" onclick="PrintGridData()" />
                    <input type="button" id="btnExport1" value="PDF" />
                        <asp:Button ID="Button1" runat="server" Text="Excel" OnClientClick="return Export();"/>
                    <%--<input type="button" id="btnExport" value="Export"  />--%>
             </div>
              <div class="col-md-5"> 
                 <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                 <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

             </div>
             </div>
             <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover " OnRowEditing="GridView1_RowEditing" CellPadding="4" DataKeyNames="ParentId"  ForeColor="#333333" GridLines="None" Height="141px" Width="1003px" >
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <Columns>
                   <asp:BoundField DataField="ParentId" HeaderText="ParentId" InsertVisible="False" ReadOnly="True" SortExpression="ParentId" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" />
                   <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                   <asp:BoundField DataField="Mother" HeaderText="Mother" SortExpression="Mother" />
                   <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                   <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                   <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                   <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                   <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                   <asp:BoundField DataField="ProfilePic" HeaderText="ProfilePic" SortExpression="ProfilePic" />
                   <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                   <asp:BoundField DataField="Facebook" HeaderText="Facebook" SortExpression="Facebook" />
                   <asp:BoundField DataField="Twitter" HeaderText="Twitter" SortExpression="Twitter" />
                   <asp:BoundField DataField="LinkedIn" HeaderText="LinkedIn" SortExpression="LinkedIn" />
                   <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
               </Columns>
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Parent_T]" DeleteCommand="Delete from [Parent_T] where @ParentId=ParentId"  UpdateCommand= "Update Parent_T set @Name=Name,@Relation=Relation,@FatherName=FatherName,@Mother=Mother,@Occupation=Occupation,@Income=Income,@Education=Education,@City=City,@State=State,@Mobile=Mobile,@Email=Email,@ProfilePic=ProfilePic,@Address=Address,@Facebook=Facebook,@Twitter=Twitter,@LinkedIn=LinkedIn"></asp:SqlDataSource>
           </div>
        </main>
</asp:Content>
