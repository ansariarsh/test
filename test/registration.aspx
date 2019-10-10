<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="test.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="Content/style.css" rel="stylesheet" />

    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="rect">
                <h1 class="display-4">Technical Test</h1>
            </div>
            <div class="row">
                <div class="col">
            <h3>Add abour</h3>
            </div>
                <!--button-->

                

            <div class="float-lg-right" style = "position:relative; right:20px;">
                  <asp:Button ID="Button1" runat="server" Text="Create labour" class="btn btn-lg btn-primary"/>

                  <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-lg btn-primary" OnClick="Button2_Click"/>    
            </div>
                
            </div>
            <hr class="hrbtn float-lg-right"/>
            <h4>Labour Information</h4>

            <!--Text Area-->
         
  <div class="row">
    <div class="col-md-3">
      <label for="txtlabour">Labour Name</label>
        <asp:TextBox ID="txtlabour" runat="server" class="form-control"></asp:TextBox>
    </div>
    <div class="col-md-3">
      <label for="txtdepartment">Department</label>
       <asp:TextBox ID="txtdepartment" runat="server" class="form-control"></asp:TextBox>
    </div>
  </div>
       <div class="row">
           <div class="col-md-3">
          <label for="txtdesc">Description</label>
               <asp:TextBox ID="txtdesc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
           </div>
           

               <div class="form-group col-md-3">
                   <label for="inputState">Premises</label>
                   <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                       <asp:ListItem Enabled="true" Text="Select Premises" Value="-1"></asp:ListItem>
                       <asp:ListItem Text="London" Value="1"></asp:ListItem>
                       <asp:ListItem Text="New Delhi" Value="2"></asp:ListItem>
                       <asp:ListItem Text="Paris" Value="2"></asp:ListItem>
                   </asp:DropDownList>

               </div>
          
      </div>
            <hr/>

            <h4 class="cost">Cost</h4>
    <div class="row">
        <div class="col-md-3">
            <label for="txtcost">Average salary (per hour)</label>
            <asp:TextBox ID="txtcost" runat="server" class="form-control" ValidateRequestMode="Enabled"></asp:TextBox>
        </div>
    </div>
            <hr />



        </div>

        <asp:Label ID="Label1" runat="server" ForeColor="#009900"></asp:Label>

    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
