<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="HPMS.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label><br />
            <asp:RadioButton ID="RadioButton1" runat="server" name="Gender" value="male" /><br />
            <asp:RadioButton ID="RadioButton2" runat="server" name="Gender" value="Female" /><br />
            <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="CNIC"></asp:Label><br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Sick Reason"></asp:Label><br />
            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <asp:Label ID="Label7" runat="server" Text="Select Catagory"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack = "True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >            
            </asp:DropDownList>            
            <br />
            <asp:Label ID="Label8" runat="server" Text="Select Doctor"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack = "true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >                
            </asp:DropDownList><br />
            <asp:Label ID="Label9" runat="server" Text="Select Day"></asp:Label><br />
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack = "true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList><br />
            <asp:Label ID="Label10" runat="server" Text="Select Time"></asp:Label><br />
            <asp:DropDownList ID="DropDownList4" AutoPostBack = "true" runat="server"></asp:DropDownList><br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="605px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                    <asp:BoundField DataField="PAge" HeaderText="PAge" SortExpression="PAge" />
                    <asp:BoundField DataField="PReason" HeaderText="PReason" SortExpression="PReason" />
                    <asp:BoundField DataField="Pgender" HeaderText="Pgender" SortExpression="Pgender" />
                    <asp:BoundField DataField="PContact" HeaderText="PContact" SortExpression="PContact" />
                    <asp:BoundField DataField="PCnic" HeaderText="PCnic" SortExpression="PCnic" />
                    <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
                    <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                    <asp:BoundField DataField="Datetimenow" HeaderText="Datetimenow" SortExpression="Datetimenow" />
                    <asp:BoundField DataField="ATime" HeaderText="ATime" SortExpression="ATime" />
                    <asp:BoundField DataField="ADate" HeaderText="ADate" SortExpression="ADate" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HPMS %>" DeleteCommand="DELETE FROM [Patient] WHERE [Pid] = @original_Pid AND (([PName] = @original_PName) OR ([PName] IS NULL AND @original_PName IS NULL)) AND (([PAge] = @original_PAge) OR ([PAge] IS NULL AND @original_PAge IS NULL)) AND (([PReason] = @original_PReason) OR ([PReason] IS NULL AND @original_PReason IS NULL)) AND (([Pgender] = @original_Pgender) OR ([Pgender] IS NULL AND @original_Pgender IS NULL)) AND (([PContact] = @original_PContact) OR ([PContact] IS NULL AND @original_PContact IS NULL)) AND (([PCnic] = @original_PCnic) OR ([PCnic] IS NULL AND @original_PCnic IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Datetimenow] = @original_Datetimenow) OR ([Datetimenow] IS NULL AND @original_Datetimenow IS NULL)) AND (([ATime] = @original_ATime) OR ([ATime] IS NULL AND @original_ATime IS NULL)) AND (([ADate] = @original_ADate) OR ([ADate] IS NULL AND @original_ADate IS NULL))" InsertCommand="INSERT INTO [Patient] ([PName], [PAge], [PReason], [Pgender], [PContact], [PCnic], [Did], [Uid], [Datetimenow], [ATime], [ADate]) VALUES (@PName, @PAge, @PReason, @Pgender, @PContact, @PCnic, @Did, @Uid, @Datetimenow, @ATime, @ADate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Patient]" UpdateCommand="UPDATE [Patient] SET [PName] = @PName, [PAge] = @PAge, [PReason] = @PReason, [Pgender] = @Pgender, [PContact] = @PContact, [PCnic] = @PCnic, [Did] = @Did, [Uid] = @Uid, [Datetimenow] = @Datetimenow, [ATime] = @ATime, [ADate] = @ADate WHERE [Pid] = @original_Pid AND (([PName] = @original_PName) OR ([PName] IS NULL AND @original_PName IS NULL)) AND (([PAge] = @original_PAge) OR ([PAge] IS NULL AND @original_PAge IS NULL)) AND (([PReason] = @original_PReason) OR ([PReason] IS NULL AND @original_PReason IS NULL)) AND (([Pgender] = @original_Pgender) OR ([Pgender] IS NULL AND @original_Pgender IS NULL)) AND (([PContact] = @original_PContact) OR ([PContact] IS NULL AND @original_PContact IS NULL)) AND (([PCnic] = @original_PCnic) OR ([PCnic] IS NULL AND @original_PCnic IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Datetimenow] = @original_Datetimenow) OR ([Datetimenow] IS NULL AND @original_Datetimenow IS NULL)) AND (([ATime] = @original_ATime) OR ([ATime] IS NULL AND @original_ATime IS NULL)) AND (([ADate] = @original_ADate) OR ([ADate] IS NULL AND @original_ADate IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Pid" Type="Int32" />
                    <asp:Parameter Name="original_PName" Type="String" />
                    <asp:Parameter Name="original_PAge" Type="String" />
                    <asp:Parameter Name="original_PReason" Type="String" />
                    <asp:Parameter Name="original_Pgender" Type="String" />
                    <asp:Parameter Name="original_PContact" Type="String" />
                    <asp:Parameter Name="original_PCnic" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Datetimenow" Type="String" />
                    <asp:Parameter Name="original_ATime" Type="String" />
                    <asp:Parameter Name="original_ADate" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PName" Type="String" />
                    <asp:Parameter Name="PAge" Type="String" />
                    <asp:Parameter Name="PReason" Type="String" />
                    <asp:Parameter Name="Pgender" Type="String" />
                    <asp:Parameter Name="PContact" Type="String" />
                    <asp:Parameter Name="PCnic" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Datetimenow" Type="String" />
                    <asp:Parameter Name="ATime" Type="String" />
                    <asp:Parameter Name="ADate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PName" Type="String" />
                    <asp:Parameter Name="PAge" Type="String" />
                    <asp:Parameter Name="PReason" Type="String" />
                    <asp:Parameter Name="Pgender" Type="String" />
                    <asp:Parameter Name="PContact" Type="String" />
                    <asp:Parameter Name="PCnic" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Datetimenow" Type="String" />
                    <asp:Parameter Name="ATime" Type="String" />
                    <asp:Parameter Name="ADate" Type="String" />
                    <asp:Parameter Name="original_Pid" Type="Int32" />
                    <asp:Parameter Name="original_PName" Type="String" />
                    <asp:Parameter Name="original_PAge" Type="String" />
                    <asp:Parameter Name="original_PReason" Type="String" />
                    <asp:Parameter Name="original_Pgender" Type="String" />
                    <asp:Parameter Name="original_PContact" Type="String" />
                    <asp:Parameter Name="original_PCnic" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Datetimenow" Type="String" />
                    <asp:Parameter Name="original_ATime" Type="String" />
                    <asp:Parameter Name="original_ADate" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
