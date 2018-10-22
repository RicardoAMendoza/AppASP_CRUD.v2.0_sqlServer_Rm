<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="prjASP_App_CRUD.v2._0_sqlServer_Rm.CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD</title>
    <!--icon in tab-->
		<link rel="icon" type="image/png" href="~/img/icons/quetzal.png"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="CSSTableGenerator">
        <asp:HiddenField ID="hfidclient" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblclientNumber" runat="server" Text="clientNumber"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtclientNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="name"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox  ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllastName" runat="server" Text="lastName"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtlastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="email"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblimg" runat="server" Text="img"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtimg" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lbladdress" runat="server" Text="address"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcardNumber" runat="server" Text="cardNumber"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtcardNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblnip" runat="server" Text="nip"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnip" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblidagencies" runat="server" Text="idagencies"></asp:Label>
                </td>
                <td colspan ="2">
                    <asp:TextBox ID="txtidagencies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblidemployee" runat="server" Text="idemployee"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtidemployee" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan ="2">
                    <asp:Button ID="btnEnregistrer" runat="server" Text="Enregistrer" OnClick="btnEnregistrer_Click" />
                    <asp:Button ID="btnEffacer" runat="server" Text="Effacer" OnClick="btnEffacer_Click" />
                    <asp:Button ID="btnClair" runat="server" Text="Clair" OnClick="btnClair_Click" />
                </td>
            </tr>
            <tr>
                <td colspan ="2">
                    <asp:Label ID="lblSuccesMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
            </tr> 
            <tr>
                <td colspan ="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr> 
        </table>
        <br />
        <asp:GridView ID="gvClient" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField ="clientNumber" HeaderText ="clientNumber " />
                <asp:BoundField Datafield ="name" HeaderText ="name"/>
                <asp:BoundField Datafield ="lastname" HeaderText ="lastName"/>

                <asp:BoundField DataField ="email" HeaderText="email" />
                <asp:BoundField DataField ="img" HeaderText="img" />
                <asp:BoundField DataField ="address" HeaderText="address" />

                <asp:BoundField DataField ="cardNumber" HeaderText ="cardNumber" />
                <asp:BoundField DataField ="nip" HeaderText ="nip" />
                <asp:BoundField DataField ="idagencies" HeaderText="idagencies" />

                <asp:BoundField DataField ="idemployee" HeaderText="idemployee" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%#Eval("idclient") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
