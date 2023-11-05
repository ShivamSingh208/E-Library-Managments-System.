<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_bookissue.aspx.cs" Inherits="ELibraryManagment.Admin_bookissue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
      <div class="row">

          <!--Publisher details sie code start -->
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">

                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Book Issueing</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="all%20images/images/Books.png" />
                        </center>
                     </div>
                  </div>
               
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label>Book ID</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" Book Id" ></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Member ID</label>
                           <div class="form-group">
                              <div class="input-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Member ID"></asp:TextBox>
                                 <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" />
                              </div>
                           </div>
                       </div>
                   </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label>Member Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Member Name" ReadOnly="True"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Book Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Book Name" ReadOnly="True"></asp:TextBox>
                           </div>
                       </div>
                   </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label>Start Date</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>End Date</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   
                  <div class="row">
                     <div class="col-6 ">
                        <asp:Button class="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                     </div>
                     <div class="col-6 ">
                        <asp:Button class="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
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
                           <h4>Issued Book List</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                <asp:BoundField DataField="due-date" HeaderText="Due-Date" SortExpression="due-date" />
                            </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-Library DBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_table]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
 <!--Publisher Liat side code Start-->

      </div>
   </div>

</asp:Content>
