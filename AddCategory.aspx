<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="HPMS.ddCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Catid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="571px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Catid" HeaderText="Catid" InsertVisible="False" ReadOnly="True" SortExpression="Catid" />
                    <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HPMS %>" DeleteCommand="DELETE FROM [DoctorCat] WHERE [Catid] = @original_Catid AND (([CatName] = @original_CatName) OR ([CatName] IS NULL AND @original_CatName IS NULL))" InsertCommand="INSERT INTO [DoctorCat] ([CatName]) VALUES (@CatName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DoctorCat]" UpdateCommand="UPDATE [DoctorCat] SET [CatName] = @CatName WHERE [Catid] = @original_Catid AND (([CatName] = @original_CatName) OR ([CatName] IS NULL AND @original_CatName IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Catid" Type="Int32" />
                    <asp:Parameter Name="original_CatName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CatName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CatName" Type="String" />
                    <asp:Parameter Name="original_Catid" Type="Int32" />
                    <asp:Parameter Name="original_CatName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
