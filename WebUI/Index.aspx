<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
   <div class="row">
       <div class="col-lg-12">
           <div class="text-right">
               <a href="EditProject.aspx" class="btn btn-primary">
                 <i class="glyphicon glyphicon-plus"></i>  Create Project
               </a>
           </div>
      <asp:Repeater ID="rpProjects" runat="server">
            <HeaderTemplate>
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
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ProjectId") %></td>
                    <td><%#Eval("Title") %></td>
                    <td><%#Eval("Description") %></td>
                    <td><%#Eval("AddedBy") %></td>
                    <td><%#Eval("AddedDate","{0:d}") %></td>
                    <td>
                        <a href="<%#Eval("ProjectId","EditProject.aspx?ProjectId={0}") %>">
                 Edit
               </a>
                     |   <a href="<%#Eval("ProjectId","DeleteProject.aspx?ProjectId={0}") %>">
                 Delete
               </a>
                    </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>    
                </table>
            </FooterTemplate>
        </asp:Repeater>
           </div>
       </div>
        </div>
</asp:Content>

