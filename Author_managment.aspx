<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Author_managment.aspx.cs" Inherits="ELibraryManagment.Author_managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">

          <!--authore details sie code start -->
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">

                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Author Details</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="all%20images/images/writer.png" />
                        </center>
                     </div>
                  </div>
               
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                       <div class="col-md-4">
                           <label>Author ID</label>
                           <div class="form-group">
                              <div class="input-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                 <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                              </div>
                           </div>
                       </div>
                       <div class="col-md-8">
                           <label>Author Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Auther Name" TextMode="SingleLine"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   
                  <div class="row">
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" />
                     </div>
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>  
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                     </div>
                  </div>

               </div>
            </div>
            <a href="Homepage.aspx"><< Back to Home</a><br><br>
         </div>
          <!--author side code end-->

          <!--Author Liat side code Start-->
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Author List</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-Library DBConnectionString %>" ProviderName="<%$ ConnectionStrings:E-Library DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Author_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Author_ID" HeaderText="Author_ID" ReadOnly="True" SortExpression="Author_ID" />
                                <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
 <!--Author Liat side code Start-->

      </div>
   </div>

</asp:Content>
