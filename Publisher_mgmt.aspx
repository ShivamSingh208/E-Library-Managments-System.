<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Publisher_mgmt.aspx.cs" Inherits="ELibraryManagment.Publisher_mgmt" %>
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

          <!--Publisher details sie code start -->
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">

                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher Details</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="all%20images/images/publisher.png" />
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
                           <label>Publisher ID</label>
                           <div class="form-group">
                              <div class="input-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                 <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                              </div>
                           </div>
                       </div>
                       <div class="col-md-8">
                           <label>Publisher Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Publisher Name" ></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   
                  <div class="row">
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" />
                     </div>
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" />
                     </div>  
                     <div class="col-4 ">
                        <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                     </div>
                  </div>

               </div>
            </div>
            <a href="Homepage.aspx"><< Back to Home</a><br><br>
         </div>
          <!--Publisher side code end-->

          <!--Publisher Liat side code Start-->
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher List</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
 <!--Publisher Liat side code Start-->

      </div>
   </div>

</asp:Content>
