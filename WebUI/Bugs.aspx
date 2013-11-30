<%@ Page Title="Bugs" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bugs.aspx.cs" Inherits="Bugs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_MainContent" Runat="Server">
    
       <div class="col-lg-12">
           <div class="text-right">
               <a href="EditBug.aspx" class="btn btn-primary">
                 <i class="glyphicon glyphicon-plus"></i>  Add Bug
               </a>
           </div>     


           <asp:ListView ID="lvBugs" runat="server" DataSourceID="ObjectDataSource1" OnItemCommand="lvBugs_OnItemCommand" DataKeyNames="BugId"
                EnableModelValidation="True" OnItemDataBound="lvBugs_OnItemDataBound">
               <LayoutTemplate>
                    <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Bug</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th><i class="fa fa-user"></i> Created By</th>
                            <th><i class="fa fa-clock-o"></i> Created Date</th>
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
                    <td><%#Eval("BugId") %></td>
                    <td><%# BugFactry.BugTitleStatus((int)Eval("Status"),Eval("Title").ToString()) %></del></td>
                    <td><%#Eval("Description") %></td>
                    <td><%# BugFactry.BugStatus((int)Eval("Status")) %></td>
                    <td><%#Eval("AddedBy") %></td>
                    <td><%#Eval("AddedDate","{0:d}") %></td>
                    <td>
                        <a href="<%#Eval("BugId","Bugs.aspx?BugId={0}") %>">
               <i class="fa fa-bug"></i>  view detail
               </a>
                     |
                        <a href="<%#Eval("BugId","EditBug.aspx?BugId={0}") %>">
                <i class="fa fa-edit"></i> Edit
               </a>  |   <asp:LinkButton ID="LinkButton1" CommandName="KillBug" CommandArgument='<%#Eval("BugId") %>' runat="server">
                         <i class="fa fa-leaf"></i>
                        Kill Bug</asp:LinkButton>
                     |   <asp:LinkButton ID="lbtnDelete" CommandName="Delete" CommandArgument='<%#Eval("BugId") %>' runat="server">
                         <i class="fa fa-trash-o"></i>
                         Delete</asp:LinkButton>
                        
                        
                    </td>
                   </tr>
               </ItemTemplate>
           </asp:ListView>


           <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetBugsByProjectId" TypeName="BugFactry" DeleteMethod="DeleteBug">
               <DeleteParameters>
                   <asp:Parameter Name="BugId" Type="Int32" />
               </DeleteParameters>
               <SelectParameters>
                   <asp:QueryStringParameter Name="projectId" QueryStringField="ProjectId" Type="Int32" />
               </SelectParameters>
           </asp:ObjectDataSource>


           </div>
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Footer" Runat="Server">
</asp:Content>

