<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebLegacy.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server" />
            <fieldset>
                <legend>AJAX Update Panel</legend>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button runat="server" Text="Update Current Time" ID="btnUpdateTime" OnClick="btnUpdateTime_Click" />
                        <asp:Label runat="server" ID="txtTime"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnUpdateTime" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </fieldset>

            <fieldset>
                <legend>iFrame</legend>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/auLBLk4ibAk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </fieldset>

            <fieldset>
                <legend>Execute a REST call</legend>
                <asp:Button runat="server" Text="Update Current Time" ID="btnRestCall" OnClick="btnRestCall_Click" />
                <asp:Literal runat="server" ID="lblRestServiceResult"></asp:Literal>
            </fieldset>
        </div>
    </form>
</body>
</html>
