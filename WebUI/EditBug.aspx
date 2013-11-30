<%@ Page Title="编辑Bug" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditBug.aspx.cs" Inherits="EditBug" %>
<%@ Register Assembly="Menulab.RichTextBox" Namespace="Menulab" TagPrefix="ml" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_MainContent" Runat="Server">
    
    <div class="col-lg-12">
        <div class="panel panel-default">
  <div class="panel-heading">Add Bug</div>
  <div class="panel-body">
        <section class="form-horizontal" role="form">
            <div class="form-group">
    <label for="ctl00_CPH_MainContent_txtTitle" class="col-sm-2 control-label">Project</label>
    <div class="col-sm-10">
        <asp:DropDownList ID="ddlProjects" CssClass="form-control" runat="server"></asp:DropDownList>   
    </div>
  </div>
  <div class="form-group">
    <label for="ctl00_CPH_MainContent_txtTitle" class="col-sm-2 control-label">Bug Title</label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Bug Title"></asp:TextBox>      
    </div>
  </div>
  <div class="form-group">
    <label for="ctl00_CPH_MainContent_txtDescription" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
        <ml:RichTextBox ID="mlRichTextBox" runat="server" />
        
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <asp:Button ID="txtSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="txtSave_Click" />
        <a href="Index.aspx" class="btn btn-default">Back</a>

        <asp:Literal ID="ltlStatus" runat="server"></asp:Literal>
    </div>
  </div>
</section>
  </div>
</div>

        
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Footer" Runat="Server">
</asp:Content>

