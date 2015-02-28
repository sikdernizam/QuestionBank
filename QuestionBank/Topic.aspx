<%@ Page Title="Topic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Topic.aspx.cs" Inherits="QuestionBank.Topic" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Add Topic</h1>
    </hgroup>
    <section>
        <asp:Label ID="Label1" runat="server" Text="Subject Code"></asp:Label>
        <asp:DropDownList ID="cmbSubjectCode" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject_code" DataValueField="subject_code">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestionBank_NizamConnectionString %>" SelectCommand="SELECT [subject_code] FROM [subject]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Topic Code"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtTopicCode" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Topic Name"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtTopicName" runat="server"></asp:TextBox><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddTopic" runat="server" Text="Add Topic" OnClick="btnAddTopic_Click" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="topics_code" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="388px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="topics_code" HeaderText="topics_code" ReadOnly="True" SortExpression="topics_code" />
                <asp:BoundField DataField="subject_code" HeaderText="subject_code" SortExpression="subject_code" />
                <asp:BoundField DataField="topics_name" HeaderText="topics_name" SortExpression="topics_name" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestionBank_NizamConnectionString %>" SelectCommand="SELECT * FROM [topics]"></asp:SqlDataSource>
        <br />
    </section>
</asp:Content>