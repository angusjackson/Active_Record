<%@ Page Title="项目管理" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_MainContent" Runat="Server">
    
       <div class="col-lg-12">
           <div class="text-right">
               <a href="EditProject.aspx" class="btn btn-primary">
                 <i class="glyphicon glyphicon-plus"></i>  Create Project
               </a>
           </div>     


           <asp:ListView ID="lvProjects" runat="server" DataSourceID="ObjectDataSource1" DataKeyNames="ProjectId"
                EnableModelValidation="True">
               <LayoutTemplate>
                    <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Project Title</th>
                            <th>Description</th>
                            <th>Created By</th>
                            <th>Created Date</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>  
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server" />          
                        </tbody>
                        </table>
               </LayoutTemplate>
               <ItemTemplate>
                   <tr>
                    <td><%#Eval("ProjectId") %></td>
                    <td><%#Eval("Title") %></td>
                    <td><%#Eval("Description") %></td>
                    <td><%#Eval("AddedBy") %></td>
                    <td><%#Eval("AddedDate","{0:d}") %></td>
                    <td>
                        <a href="<%#Eval("ProjectId","Bugs.aspx?ProjectId={0}") %>">
               <i class="fa fa-bug"></i>  view Bugs
               </a>
                     |
                        <a href="<%#Eval("ProjectId","EditProject.aspx?ProjectId={0}") %>">
                <i class="fa fa-edit"></i> Edit
               </a>
                     |   <asp:LinkButton ID="lbtnDelete" CommandName="Delete" CommandArgument='<%#Eval("ProjectId") %>' runat="server">
                         <i class="fa fa-trash-o"></i>
                         Delete</asp:LinkButton>
                        
                        
                    </td>
                   </tr>
               </ItemTemplate>
           </asp:ListView>


           <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetProjects" TypeName="ProjectFactry" DeleteMethod="DeleteProject">
               <DeleteParameters>
                   <asp:Parameter Name="projectId" Type="Int32" />
               </DeleteParameters>
           </asp:ObjectDataSource>


           </div>
      
</asp:Content>

