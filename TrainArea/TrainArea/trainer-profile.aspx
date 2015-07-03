<%@ Page Title="Your Trainer Profile" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="trainer-profile.aspx.cs" Inherits="Trainarea_solution.Account.trainer_profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <h1><%: Page.Title %></h1>
  <telerik:RadWizard ID="wizTrainer" runat="server">
    <WizardSteps>
      <telerik:RadWizardStep ID="wizStepBasic" Title="Basic" runat="server" StepType="Start" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
      <table style="width:100%;">
        <tr>
          <td style="width:50%;">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name *" AssociatedControlID="txtFirstName"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtFirstName" runat="server"></telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="reqtxtFirstName" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            <br /><br />
          </td>
          <td style="width:50%;">

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name *" AssociatedControlID="txtLastName"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtLastName" runat="server"></telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="reqtxtLastName" runat="server" ErrorMessage="Required" Display="Dynamic" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="txtTitle"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtTitle" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth" AssociatedControlID="datDateOfBirth"></asp:Label>
            <br />
            <telerik:RadDatePicker ID="datDateOfBirth" runat="server"></telerik:RadDatePicker>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblAddress" runat="server" Text="Address" AssociatedControlID="txtAddress"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtAddress" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code" AssociatedControlID="txtZipCode"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtZipCode" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="cboCountry"></asp:Label>
            <br />
            <asp:SqlDataSource ID="sqlDataCountry" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CountryId], [Country] FROM [Countries] ORDER BY [Country]"></asp:SqlDataSource>
            <telerik:RadComboBox ID="cboCountry" runat="server" DataSourceID="sqlDataCountry" DataTextField="Country" DataValueField="CountryId">
            </telerik:RadComboBox>
            <br /><br />
          </td>
          <td>

          </td>
        </tr>
      </table>
      </telerik:RadWizardStep>
      <telerik:RadWizardStep ID="wizStepContact" Title="Contact" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
      <table style="width:100%;">
        <tr>
          <td style="width:50%;">
            <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtEmail" runat="server"></telerik:RadTextBox>
            <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" ErrorMessage="invalid email" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br />
          </td>
          <td style="width:50%;">
            <asp:Label ID="lblPhone" runat="server" Text="Phone" AssociatedControlID="txtPhone"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtPhone" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblAdditionalPhone" runat="server" Text="Additional Phone" AssociatedControlID="txtAdditionalPhone"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtAdditionalPhone" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>
            <asp:Label ID="lblFax" runat="server" Text="Fax" AssociatedControlID="txtFax"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtFax" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblWebsite" runat="server" Text="Website" AssociatedControlID="txtWebsite"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtWebsite" runat="server"></telerik:RadTextBox>
            <asp:RegularExpressionValidator ID="regtxtWebsite" runat="server" ErrorMessage="Invalid Url" Display="Dynamic" ControlToValidate="txtWebsite" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            <br /><br />
          </td>
          <td>
            <style>
              html body span .riTextBox.skype {
                background: #FFFFFF url(http://www.trainarea.com/Content/icons/skype.png) no-repeat 4px 4px;
                padding: 4px 4px 4px 28px;
                height: 28px;
                border: 1px solid #ccc;
              }
            </style>
            <asp:Label ID="lblSkype" runat="server" Text="Skype" AssociatedControlID="txtSkype"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtSkype" runat="server" CssClass="skype"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblFacebook" runat="server" Text="Facebook" AssociatedControlID="txtFacebook"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtFacebook" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>
            <asp:Label ID="lblTwitter" runat="server" Text="Twitter" AssociatedControlID="txtTwitter"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtTwitter" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblLinkedIn" runat="server" Text="LinkedIn" AssociatedControlID="txtLinkedIn"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtLinkedIn" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>
            <asp:Label ID="lblYahoo" runat="server" Text="Yahoo" AssociatedControlID="txtYahoo"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtYahoo" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblMsn" runat="server" Text="MSN" AssociatedControlID="txtMsn"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtMsn" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>
            <asp:Label ID="lblXing" runat="server" Text="Xing" AssociatedControlID="txtXing"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtXing" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
        <tr>
          <td>
            <asp:Label ID="lblAol" runat="server" Text="AOL" AssociatedControlID="txtAol"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtAol" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
          <td>
            <asp:Label ID="lblIcq" runat="server" Text="ICQ" AssociatedControlID="txtIcq"></asp:Label>
            <br />
            <telerik:RadTextBox ID="txtIcq" runat="server"></telerik:RadTextBox>
            <br /><br />
          </td>
        </tr>
      </table>
      </telerik:RadWizardStep>
      <telerik:RadWizardStep ID="wizStepKnowledge" Title="Knowledge" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">

      </telerik:RadWizardStep>
      <telerik:RadWizardStep ID="wizStepServices" Title="Services" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
      
      </telerik:RadWizardStep>
      <telerik:RadWizardStep ID="wizStepReferences" Title="References" runat="server" StepType="Auto" ValidationGroup="Basic" CausesValidation="true" SpriteCssClass="accountInfo">
      
      </telerik:RadWizardStep>
    </WizardSteps>
  </telerik:RadWizard>

          <telerik:RadAutoCompleteBox ID="RadAutoCompleteBox1" runat="server"></telerik:RadAutoCompleteBox>

</asp:Content>