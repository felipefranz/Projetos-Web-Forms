<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adRotator.aspx.cs" Inherits="waConhecendoOsComponetes.Beta.adRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Beta/propagandas.xml" Target="_blank" />
        </div>
    </form>
</body>
</html>
