<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorAvailablity.aspx.cs" Inherits="HPMS.DoctorAvailablity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Availability</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Doctor's Name"></asp:Label> <br />
            <asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DoctorName" DataValueField="DoctorName" Height="28px" Width="239px"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HPMS %>" SelectCommand="SELECT [DoctorName] FROM [Doctor]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Day"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Monday" Width="235px"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="1:20 - 4:20 PM" Width="229px"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Aid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="606px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Aid" HeaderText="Aid" InsertVisible="False" ReadOnly="True" SortExpression="Aid" />
                    <asp:BoundField DataField="Atime" HeaderText="Atime" SortExpression="Atime" />
                    <asp:BoundField DataField="Adate" HeaderText="Adate" SortExpression="Adate" />
                    <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HPMS %>" DeleteCommand="DELETE FROM [Appointment] WHERE [Aid] = @original_Aid AND (([Atime] = @original_Atime) OR ([Atime] IS NULL AND @original_Atime IS NULL)) AND (([Adate] = @original_Adate) OR ([Adate] IS NULL AND @original_Adate IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL))" InsertCommand="INSERT INTO [Appointment] ([Atime], [Adate], [Did]) VALUES (@Atime, @Adate, @Did)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Appointment]" UpdateCommand="UPDATE [Appointment] SET [Atime] = @Atime, [Adate] = @Adate, [Did] = @Did WHERE [Aid] = @original_Aid AND (([Atime] = @original_Atime) OR ([Atime] IS NULL AND @original_Atime IS NULL)) AND (([Adate] = @original_Adate) OR ([Adate] IS NULL AND @original_Adate IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Aid" Type="Int32" />
                    <asp:Parameter Name="original_Atime" Type="String" />
                    <asp:Parameter Name="original_Adate" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Atime" Type="String" />
                    <asp:Parameter Name="Adate" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Atime" Type="String" />
                    <asp:Parameter Name="Adate" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                    <asp:Parameter Name="original_Aid" Type="Int32" />
                    <asp:Parameter Name="original_Atime" Type="String" />
                    <asp:Parameter Name="original_Adate" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
