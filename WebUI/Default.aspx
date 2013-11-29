<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="rpProjects" runat="server">
            <HeaderTemplate>
                <table>
                    <thead>
                        <tr>
                            <th>项目</th>
                            <th>描述</th>
                            <th>创建日期</th>
                        </tr>
                    </thead>
                    <tbody>            
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("Title") %></td>
                    <td><%#Eval("Description") %></td>
                    <td><%#Eval("AddedDate","{0:d}") %></td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>    
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
