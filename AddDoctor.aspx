<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="HPMS.AddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Doctor's Name"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            <asp:Label ID="Label7" runat="server" Text="Select Catagory"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"></asp:DropDownList>       <br />
            <asp:Label ID="Label2" runat="server" Text="Doctor'sAge"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Doctor's Gender"></asp:Label><br />
            <asp:RadioButton ID="RadioButton1" runat="server" name="Gender" value="male" />
            <asp:RadioButton ID="RadioButton2" runat="server" name="Gender" value="Female" /><br />
            <asp:Label ID="Label4" runat="server" Text="Doctor's Contact"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />               
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Did" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="336px">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="Did" HeaderText="Did" InsertVisible="False" ReadOnly="True" SortExpression="Did" />
                     <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                     <asp:BoundField DataField="DoctorContact" HeaderText="DoctorContact" SortExpression="DoctorContact" />
                     <asp:BoundField DataField="DoctorAge" HeaderText="DoctorAge" SortExpression="DoctorAge" />
                     <asp:BoundField DataField="DoctorGender" HeaderText="DoctorGender" SortExpression="DoctorGender" />
                     <asp:BoundField DataField="Catid" HeaderText="Catid" SortExpression="Catid" />
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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HPMS %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Did] = @original_Did AND (([DoctorName] = @original_DoctorName) OR ([DoctorName] IS NULL AND @original_DoctorName IS NULL)) AND (([DoctorContact] = @original_DoctorContact) OR ([DoctorContact] IS NULL AND @original_DoctorContact IS NULL)) AND (([DoctorAge] = @original_DoctorAge) OR ([DoctorAge] IS NULL AND @original_DoctorAge IS NULL)) AND (([DoctorGender] = @original_DoctorGender) OR ([DoctorGender] IS NULL AND @original_DoctorGender IS NULL)) AND (([Catid] = @original_Catid) OR ([Catid] IS NULL AND @original_Catid IS NULL))" InsertCommand="INSERT INTO [Doctor] ([DoctorName], [DoctorContact], [DoctorAge], [DoctorGender], [Catid]) VALUES (@DoctorName, @DoctorContact, @DoctorAge, @DoctorGender, @Catid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [DoctorName] = @DoctorName, [DoctorContact] = @DoctorContact, [DoctorAge] = @DoctorAge, [DoctorGender] = @DoctorGender, [Catid] = @Catid WHERE [Did] = @original_Did AND (([DoctorName] = @original_DoctorName) OR ([DoctorName] IS NULL AND @original_DoctorName IS NULL)) AND (([DoctorContact] = @original_DoctorContact) OR ([DoctorContact] IS NULL AND @original_DoctorContact IS NULL)) AND (([DoctorAge] = @original_DoctorAge) OR ([DoctorAge] IS NULL AND @original_DoctorAge IS NULL)) AND (([DoctorGender] = @original_DoctorGender) OR ([DoctorGender] IS NULL AND @original_DoctorGender IS NULL)) AND (([Catid] = @original_Catid) OR ([Catid] IS NULL AND @original_Catid IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="original_Did" Type="Int32" />
                     <asp:Parameter Name="original_DoctorName" Type="String" />
                     <asp:Parameter Name="original_DoctorContact" Type="String" />
                     <asp:Parameter Name="original_DoctorAge" Type="String" />
                     <asp:Parameter Name="original_DoctorGender" Type="String" />
                     <asp:Parameter Name="original_Catid" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="DoctorName" Type="String" />
                     <asp:Parameter Name="DoctorContact" Type="String" />
                     <asp:Parameter Name="DoctorAge" Type="String" />
                     <asp:Parameter Name="DoctorGender" Type="String" />
                     <asp:Parameter Name="Catid" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="DoctorName" Type="String" />
                     <asp:Parameter Name="DoctorContact" Type="String" />
                     <asp:Parameter Name="DoctorAge" Type="String" />
                     <asp:Parameter Name="DoctorGender" Type="String" />
                     <asp:Parameter Name="Catid" Type="Int32" />
                     <asp:Parameter Name="original_Did" Type="Int32" />
                     <asp:Parameter Name="original_DoctorName" Type="String" />
                     <asp:Parameter Name="original_DoctorContact" Type="String" />
                     <asp:Parameter Name="original_DoctorAge" Type="String" />
                     <asp:Parameter Name="original_DoctorGender" Type="String" />
                     <asp:Parameter Name="original_Catid" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
