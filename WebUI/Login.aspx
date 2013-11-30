<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_MainContent" Runat="Server">
    <div class="col-lg-12">
         <asp:Login ID="Login1" Width="100%" runat="server">
            <LayoutTemplate>

        <section class="form-horizontal" role="form">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">User Name</label>
    <div class="col-sm-10">
        <asp:TextBox ID="UserName" CssClass="form-control" runat="server" ValidationGroup="MainLogin" placeholder="User Name"                       />
      <asp:RequiredFieldValidator ID="valRequireUserName" ValidationGroup="MainLogin"
                            runat="server" SetFocusOnError="True" ControlToValidate="UserName" Text="*" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      
        <asp:TextBox ID="Password" CssClass="form-control" runat="server" ValidationGroup="MainLogin"
                        TextMode="Password" /> 
        <asp:RequiredFieldValidator ID="valRequirePassword"
                            ValidationGroup="MainLogin" runat="server" SetFocusOnError="True" ControlToValidate="Password"
                            Text="*" />
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <asp:CheckBox ID="RememberMe" ValidationGroup="MainLogin" runat="server" Text="下次记住我">
                    </asp:CheckBox>
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
  
        <asp:Button ID="btnLogin" runat="server" Text="Sign in" CommandName="Login" CssClass="btn btn-primary"
                        ValidationGroup="MainLogin" />
    </div>
  </div>
</section>
                </LayoutTemplate>
        </asp:Login>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Footer" Runat="Server">
</asp:Content>

