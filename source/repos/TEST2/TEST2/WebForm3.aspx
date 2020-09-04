<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TEST2.WebForm3" %>

<!DOCTYPE html>
<%--k--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

        <form id="form3" runat="server">
            <a href="https://localhost:44329/WebForm2.aspx">画面移動</a>
            <asp:Button ID="Button1" runat="server" Text="検索" />
            <br />
            <asp:Label runat="server" ID="label3" Text="ユーザーID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
            <asp:Label runat="server" ID="label4" Text="ユーザー名"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Text=""></asp:TextBox>
            <asp:Label runat="server" ID="label5" Text="所属部署"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem Value="選択してください"> </asp:ListItem>
                  <asp:ListItem Value="総務部"> Silver1 </asp:ListItem>
                  <asp:ListItem Value="人事部rkGray"> Dark Gray </asp:ListItem>
                  <asp:ListItem Value="管理部"> Khaki </asp:ListItem>
                  <asp:ListItem Value="法務部"> Dark Khaki </asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="SYOZOKU_BUSYO" HeaderText="SYOZOKU_BUSYO" SortExpression="SYOZOKU_BUSYO" />
                    <asp:BoundField DataField="KOUBUTU" HeaderText="KOUBUTU" SortExpression="KOUBUTU" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [USERTABLE2]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [USERTABLE2]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button4" runat="server" Text="追加登録" OnClick="Button4_Click" />
            <br />

            <asp:Button ID="Button5" runat="server" Text="更新" OnClick="Button5_Click" />
            <br />
            <asp:Button ID="Button6" runat="server" Text="削除" OnClick="Button6_Click" />
            <br />

        </form>
</body>
</html>