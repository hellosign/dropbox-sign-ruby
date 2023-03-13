# dropbox-sign

Dropbox::Sign - the Ruby gem for the Dropbox Sign API

Dropbox Sign v3 API

## Migrating from legacy SDK

This SDK is generated from our officially maintained [OpenAPI spec](https://github.com/hellosign/hellosign-openapi/blob/main/openapi.yaml).
We've made important updates that introduce new functionality and create feature parity between the Dropbox Sign API and the SDK.
However, some of these changes are considered "breaking" in the sense that they'll require you to update your existing code in order to continue using the SDK.
Please refer to this [migration guide](https://developers.hellosign.com/docs/sdks/ruby/migration-guide/) for more information.

## Contributing

This repo is no longer accepting new issues or Pull Requests. All issues or
Pull Requests *must* be opened against the
[hellosign/hellosign-openapi](https://github.com/hellosign/hellosign-openapi) repo!

### Changes to the SDK code

You must make SDK code changes in the mustache file within the `templates`
directory that corresponds to the file you want updated.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.0.0
- Package version: 1.1.1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Install gem
```shell
gem install dropbox-sign
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build dropbox-sign.gemspec
```

Then install the gem locally:

```shell
gem install ./dropbox-sign-1.1.1.gem
```

(for development, run `gem install --dev ./dropbox-sign-1.1.1.gem` to install the development dependencies)

Finally add this to the Gemfile:

    gem 'dropbox-sign', '~> 1.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'dropbox-sign', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:


```ruby
require "dropbox-sign"

Dropbox::Sign.configure do |config|
  # Configure HTTP basic authorization: api_key
  config.username = "YOUR_API_KEY"

  # or, configure Bearer (JWT) authorization: oauth2
  # config.access_token = "YOUR_ACCESS_TOKEN"
end

account_api = Dropbox::Sign::AccountApi.new

data = Dropbox::Sign::AccountCreateRequest.new
data.email_address = "newuser@dropboxsign.com"

begin
  result = account_api.account_create(data)
  p result
rescue Dropbox::Sign::ApiError => e
  puts "Exception when calling Dropbox Sign API: #{e}"
end

```


## Documentation for API Endpoints

All URIs are relative to *https://api.hellosign.com/v3*

|Class | Method | HTTP request | Description|
|------------ | ------------- | ------------- | -------------|
|*Dropbox::Sign::AccountApi* | [**account_create**](docs/AccountApi.md#account_create) | **POST** /account/create | Create Account |
|*Dropbox::Sign::AccountApi* | [**account_get**](docs/AccountApi.md#account_get) | **GET** /account | Get Account |
|*Dropbox::Sign::AccountApi* | [**account_update**](docs/AccountApi.md#account_update) | **PUT** /account | Update Account |
|*Dropbox::Sign::AccountApi* | [**account_verify**](docs/AccountApi.md#account_verify) | **POST** /account/verify | Verify Account |
|*Dropbox::Sign::ApiAppApi* | [**api_app_create**](docs/ApiAppApi.md#api_app_create) | **POST** /api_app | Create API App |
|*Dropbox::Sign::ApiAppApi* | [**api_app_delete**](docs/ApiAppApi.md#api_app_delete) | **DELETE** /api_app/{client_id} | Delete API App |
|*Dropbox::Sign::ApiAppApi* | [**api_app_get**](docs/ApiAppApi.md#api_app_get) | **GET** /api_app/{client_id} | Get API App |
|*Dropbox::Sign::ApiAppApi* | [**api_app_list**](docs/ApiAppApi.md#api_app_list) | **GET** /api_app/list | List API Apps |
|*Dropbox::Sign::ApiAppApi* | [**api_app_update**](docs/ApiAppApi.md#api_app_update) | **PUT** /api_app/{client_id} | Update API App |
|*Dropbox::Sign::BulkSendJobApi* | [**bulk_send_job_get**](docs/BulkSendJobApi.md#bulk_send_job_get) | **GET** /bulk_send_job/{bulk_send_job_id} | Get Bulk Send Job |
|*Dropbox::Sign::BulkSendJobApi* | [**bulk_send_job_list**](docs/BulkSendJobApi.md#bulk_send_job_list) | **GET** /bulk_send_job/list | List Bulk Send Jobs |
|*Dropbox::Sign::EmbeddedApi* | [**embedded_edit_url**](docs/EmbeddedApi.md#embedded_edit_url) | **POST** /embedded/edit_url/{template_id} | Get Embedded Template Edit URL |
|*Dropbox::Sign::EmbeddedApi* | [**embedded_sign_url**](docs/EmbeddedApi.md#embedded_sign_url) | **GET** /embedded/sign_url/{signature_id} | Get Embedded Sign URL |
|*Dropbox::Sign::OAuthApi* | [**oauth_token_generate**](docs/OAuthApi.md#oauth_token_generate) | **POST** /oauth/token | OAuth Token Generate |
|*Dropbox::Sign::OAuthApi* | [**oauth_token_refresh**](docs/OAuthApi.md#oauth_token_refresh) | **POST** /oauth/token?refresh | OAuth Token Refresh |
|*Dropbox::Sign::ReportApi* | [**report_create**](docs/ReportApi.md#report_create) | **POST** /report/create | Create Report |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_bulk_create_embedded_with_template**](docs/SignatureRequestApi.md#signature_request_bulk_create_embedded_with_template) | **POST** /signature_request/bulk_create_embedded_with_template | Embedded Bulk Send with Template |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_bulk_send_with_template**](docs/SignatureRequestApi.md#signature_request_bulk_send_with_template) | **POST** /signature_request/bulk_send_with_template | Bulk Send with Template |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_cancel**](docs/SignatureRequestApi.md#signature_request_cancel) | **POST** /signature_request/cancel/{signature_request_id} | Cancel Incomplete Signature Request |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_create_embedded**](docs/SignatureRequestApi.md#signature_request_create_embedded) | **POST** /signature_request/create_embedded | Create Embedded Signature Request |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_create_embedded_with_template**](docs/SignatureRequestApi.md#signature_request_create_embedded_with_template) | **POST** /signature_request/create_embedded_with_template | Create Embedded Signature Request with Template |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_files**](docs/SignatureRequestApi.md#signature_request_files) | **GET** /signature_request/files/{signature_request_id} | Download Files |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_files_as_data_uri**](docs/SignatureRequestApi.md#signature_request_files_as_data_uri) | **GET** /signature_request/files_as_data_uri/{signature_request_id} | Download Files as Data Uri |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_files_as_file_url**](docs/SignatureRequestApi.md#signature_request_files_as_file_url) | **GET** /signature_request/files_as_file_url/{signature_request_id} | Download Files as File Url |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_get**](docs/SignatureRequestApi.md#signature_request_get) | **GET** /signature_request/{signature_request_id} | Get Signature Request |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_list**](docs/SignatureRequestApi.md#signature_request_list) | **GET** /signature_request/list | List Signature Requests |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_release_hold**](docs/SignatureRequestApi.md#signature_request_release_hold) | **POST** /signature_request/release_hold/{signature_request_id} | Release On-Hold Signature Request |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_remind**](docs/SignatureRequestApi.md#signature_request_remind) | **POST** /signature_request/remind/{signature_request_id} | Send Request Reminder |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_remove**](docs/SignatureRequestApi.md#signature_request_remove) | **POST** /signature_request/remove/{signature_request_id} | Remove Signature Request Access |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_send**](docs/SignatureRequestApi.md#signature_request_send) | **POST** /signature_request/send | Send Signature Request |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_send_with_template**](docs/SignatureRequestApi.md#signature_request_send_with_template) | **POST** /signature_request/send_with_template | Send with Template |
|*Dropbox::Sign::SignatureRequestApi* | [**signature_request_update**](docs/SignatureRequestApi.md#signature_request_update) | **POST** /signature_request/update/{signature_request_id} | Update Signature Request |
|*Dropbox::Sign::TeamApi* | [**team_add_member**](docs/TeamApi.md#team_add_member) | **PUT** /team/add_member | Add User to Team |
|*Dropbox::Sign::TeamApi* | [**team_create**](docs/TeamApi.md#team_create) | **POST** /team/create | Create Team |
|*Dropbox::Sign::TeamApi* | [**team_delete**](docs/TeamApi.md#team_delete) | **DELETE** /team/destroy | Delete Team |
|*Dropbox::Sign::TeamApi* | [**team_get**](docs/TeamApi.md#team_get) | **GET** /team | Get Team |
|*Dropbox::Sign::TeamApi* | [**team_info**](docs/TeamApi.md#team_info) | **GET** /team/info | Get Team Info |
|*Dropbox::Sign::TeamApi* | [**team_invites**](docs/TeamApi.md#team_invites) | **GET** /team/invites | List Team Invites |
|*Dropbox::Sign::TeamApi* | [**team_members**](docs/TeamApi.md#team_members) | **GET** /team/members/{team_id} | List Team Members |
|*Dropbox::Sign::TeamApi* | [**team_remove_member**](docs/TeamApi.md#team_remove_member) | **POST** /team/remove_member | Remove User from Team |
|*Dropbox::Sign::TeamApi* | [**team_sub_teams**](docs/TeamApi.md#team_sub_teams) | **GET** /team/sub_teams/{team_id} | List Sub Teams |
|*Dropbox::Sign::TeamApi* | [**team_update**](docs/TeamApi.md#team_update) | **PUT** /team | Update Team |
|*Dropbox::Sign::TemplateApi* | [**template_add_user**](docs/TemplateApi.md#template_add_user) | **POST** /template/add_user/{template_id} | Add User to Template |
|*Dropbox::Sign::TemplateApi* | [**template_create_embedded_draft**](docs/TemplateApi.md#template_create_embedded_draft) | **POST** /template/create_embedded_draft | Create Embedded Template Draft |
|*Dropbox::Sign::TemplateApi* | [**template_delete**](docs/TemplateApi.md#template_delete) | **POST** /template/delete/{template_id} | Delete Template |
|*Dropbox::Sign::TemplateApi* | [**template_files**](docs/TemplateApi.md#template_files) | **GET** /template/files/{template_id} | Get Template Files |
|*Dropbox::Sign::TemplateApi* | [**template_files_as_data_uri**](docs/TemplateApi.md#template_files_as_data_uri) | **GET** /template/files_as_data_uri/{template_id} | Get Template Files as Data Uri |
|*Dropbox::Sign::TemplateApi* | [**template_files_as_file_url**](docs/TemplateApi.md#template_files_as_file_url) | **GET** /template/files_as_file_url/{template_id} | Get Template Files as File Url |
|*Dropbox::Sign::TemplateApi* | [**template_get**](docs/TemplateApi.md#template_get) | **GET** /template/{template_id} | Get Template |
|*Dropbox::Sign::TemplateApi* | [**template_list**](docs/TemplateApi.md#template_list) | **GET** /template/list | List Templates |
|*Dropbox::Sign::TemplateApi* | [**template_remove_user**](docs/TemplateApi.md#template_remove_user) | **POST** /template/remove_user/{template_id} | Remove User from Template |
|*Dropbox::Sign::TemplateApi* | [**template_update_files**](docs/TemplateApi.md#template_update_files) | **POST** /template/update_files/{template_id} | Update Template Files |
|*Dropbox::Sign::UnclaimedDraftApi* | [**unclaimed_draft_create**](docs/UnclaimedDraftApi.md#unclaimed_draft_create) | **POST** /unclaimed_draft/create | Create Unclaimed Draft |
|*Dropbox::Sign::UnclaimedDraftApi* | [**unclaimed_draft_create_embedded**](docs/UnclaimedDraftApi.md#unclaimed_draft_create_embedded) | **POST** /unclaimed_draft/create_embedded | Create Embedded Unclaimed Draft |
|*Dropbox::Sign::UnclaimedDraftApi* | [**unclaimed_draft_create_embedded_with_template**](docs/UnclaimedDraftApi.md#unclaimed_draft_create_embedded_with_template) | **POST** /unclaimed_draft/create_embedded_with_template | Create Embedded Unclaimed Draft with Template |
|*Dropbox::Sign::UnclaimedDraftApi* | [**unclaimed_draft_edit_and_resend**](docs/UnclaimedDraftApi.md#unclaimed_draft_edit_and_resend) | **POST** /unclaimed_draft/edit_and_resend/{signature_request_id} | Edit and Resend Unclaimed Draft |


## Documentation for Models

 - [Dropbox::Sign::AccountCreateRequest](docs/AccountCreateRequest.md)
 - [Dropbox::Sign::AccountCreateResponse](docs/AccountCreateResponse.md)
 - [Dropbox::Sign::AccountGetResponse](docs/AccountGetResponse.md)
 - [Dropbox::Sign::AccountResponse](docs/AccountResponse.md)
 - [Dropbox::Sign::AccountResponseQuotas](docs/AccountResponseQuotas.md)
 - [Dropbox::Sign::AccountUpdateRequest](docs/AccountUpdateRequest.md)
 - [Dropbox::Sign::AccountVerifyRequest](docs/AccountVerifyRequest.md)
 - [Dropbox::Sign::AccountVerifyResponse](docs/AccountVerifyResponse.md)
 - [Dropbox::Sign::AccountVerifyResponseAccount](docs/AccountVerifyResponseAccount.md)
 - [Dropbox::Sign::ApiAppCreateRequest](docs/ApiAppCreateRequest.md)
 - [Dropbox::Sign::ApiAppGetResponse](docs/ApiAppGetResponse.md)
 - [Dropbox::Sign::ApiAppListResponse](docs/ApiAppListResponse.md)
 - [Dropbox::Sign::ApiAppResponse](docs/ApiAppResponse.md)
 - [Dropbox::Sign::ApiAppResponseOAuth](docs/ApiAppResponseOAuth.md)
 - [Dropbox::Sign::ApiAppResponseOptions](docs/ApiAppResponseOptions.md)
 - [Dropbox::Sign::ApiAppResponseOwnerAccount](docs/ApiAppResponseOwnerAccount.md)
 - [Dropbox::Sign::ApiAppResponseWhiteLabelingOptions](docs/ApiAppResponseWhiteLabelingOptions.md)
 - [Dropbox::Sign::ApiAppUpdateRequest](docs/ApiAppUpdateRequest.md)
 - [Dropbox::Sign::BulkSendJobGetResponse](docs/BulkSendJobGetResponse.md)
 - [Dropbox::Sign::BulkSendJobGetResponseSignatureRequests](docs/BulkSendJobGetResponseSignatureRequests.md)
 - [Dropbox::Sign::BulkSendJobListResponse](docs/BulkSendJobListResponse.md)
 - [Dropbox::Sign::BulkSendJobResponse](docs/BulkSendJobResponse.md)
 - [Dropbox::Sign::BulkSendJobSendResponse](docs/BulkSendJobSendResponse.md)
 - [Dropbox::Sign::EmbeddedEditUrlRequest](docs/EmbeddedEditUrlRequest.md)
 - [Dropbox::Sign::EmbeddedEditUrlResponse](docs/EmbeddedEditUrlResponse.md)
 - [Dropbox::Sign::EmbeddedEditUrlResponseEmbedded](docs/EmbeddedEditUrlResponseEmbedded.md)
 - [Dropbox::Sign::EmbeddedSignUrlResponse](docs/EmbeddedSignUrlResponse.md)
 - [Dropbox::Sign::EmbeddedSignUrlResponseEmbedded](docs/EmbeddedSignUrlResponseEmbedded.md)
 - [Dropbox::Sign::ErrorResponse](docs/ErrorResponse.md)
 - [Dropbox::Sign::ErrorResponseError](docs/ErrorResponseError.md)
 - [Dropbox::Sign::EventCallbackRequest](docs/EventCallbackRequest.md)
 - [Dropbox::Sign::EventCallbackRequestEvent](docs/EventCallbackRequestEvent.md)
 - [Dropbox::Sign::EventCallbackRequestEventMetadata](docs/EventCallbackRequestEventMetadata.md)
 - [Dropbox::Sign::FileResponse](docs/FileResponse.md)
 - [Dropbox::Sign::FileResponseDataUri](docs/FileResponseDataUri.md)
 - [Dropbox::Sign::ListInfoResponse](docs/ListInfoResponse.md)
 - [Dropbox::Sign::OAuthTokenGenerateRequest](docs/OAuthTokenGenerateRequest.md)
 - [Dropbox::Sign::OAuthTokenRefreshRequest](docs/OAuthTokenRefreshRequest.md)
 - [Dropbox::Sign::OAuthTokenResponse](docs/OAuthTokenResponse.md)
 - [Dropbox::Sign::ReportCreateRequest](docs/ReportCreateRequest.md)
 - [Dropbox::Sign::ReportCreateResponse](docs/ReportCreateResponse.md)
 - [Dropbox::Sign::ReportResponse](docs/ReportResponse.md)
 - [Dropbox::Sign::SignatureRequestBulkCreateEmbeddedWithTemplateRequest](docs/SignatureRequestBulkCreateEmbeddedWithTemplateRequest.md)
 - [Dropbox::Sign::SignatureRequestBulkSendWithTemplateRequest](docs/SignatureRequestBulkSendWithTemplateRequest.md)
 - [Dropbox::Sign::SignatureRequestCreateEmbeddedRequest](docs/SignatureRequestCreateEmbeddedRequest.md)
 - [Dropbox::Sign::SignatureRequestCreateEmbeddedWithTemplateRequest](docs/SignatureRequestCreateEmbeddedWithTemplateRequest.md)
 - [Dropbox::Sign::SignatureRequestGetResponse](docs/SignatureRequestGetResponse.md)
 - [Dropbox::Sign::SignatureRequestListResponse](docs/SignatureRequestListResponse.md)
 - [Dropbox::Sign::SignatureRequestRemindRequest](docs/SignatureRequestRemindRequest.md)
 - [Dropbox::Sign::SignatureRequestResponse](docs/SignatureRequestResponse.md)
 - [Dropbox::Sign::SignatureRequestResponseAttachment](docs/SignatureRequestResponseAttachment.md)
 - [Dropbox::Sign::SignatureRequestResponseCustomFieldBase](docs/SignatureRequestResponseCustomFieldBase.md)
 - [Dropbox::Sign::SignatureRequestResponseCustomFieldCheckbox](docs/SignatureRequestResponseCustomFieldCheckbox.md)
 - [Dropbox::Sign::SignatureRequestResponseCustomFieldText](docs/SignatureRequestResponseCustomFieldText.md)
 - [Dropbox::Sign::SignatureRequestResponseCustomFieldTypeEnum](docs/SignatureRequestResponseCustomFieldTypeEnum.md)
 - [Dropbox::Sign::SignatureRequestResponseDataBase](docs/SignatureRequestResponseDataBase.md)
 - [Dropbox::Sign::SignatureRequestResponseDataTypeEnum](docs/SignatureRequestResponseDataTypeEnum.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueCheckbox](docs/SignatureRequestResponseDataValueCheckbox.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueCheckboxMerge](docs/SignatureRequestResponseDataValueCheckboxMerge.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueDateSigned](docs/SignatureRequestResponseDataValueDateSigned.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueDropdown](docs/SignatureRequestResponseDataValueDropdown.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueInitials](docs/SignatureRequestResponseDataValueInitials.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueRadio](docs/SignatureRequestResponseDataValueRadio.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueSignature](docs/SignatureRequestResponseDataValueSignature.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueText](docs/SignatureRequestResponseDataValueText.md)
 - [Dropbox::Sign::SignatureRequestResponseDataValueTextMerge](docs/SignatureRequestResponseDataValueTextMerge.md)
 - [Dropbox::Sign::SignatureRequestResponseSignatures](docs/SignatureRequestResponseSignatures.md)
 - [Dropbox::Sign::SignatureRequestSendRequest](docs/SignatureRequestSendRequest.md)
 - [Dropbox::Sign::SignatureRequestSendWithTemplateRequest](docs/SignatureRequestSendWithTemplateRequest.md)
 - [Dropbox::Sign::SignatureRequestUpdateRequest](docs/SignatureRequestUpdateRequest.md)
 - [Dropbox::Sign::SubAttachment](docs/SubAttachment.md)
 - [Dropbox::Sign::SubBulkSignerList](docs/SubBulkSignerList.md)
 - [Dropbox::Sign::SubBulkSignerListCustomField](docs/SubBulkSignerListCustomField.md)
 - [Dropbox::Sign::SubCC](docs/SubCC.md)
 - [Dropbox::Sign::SubCustomField](docs/SubCustomField.md)
 - [Dropbox::Sign::SubEditorOptions](docs/SubEditorOptions.md)
 - [Dropbox::Sign::SubFieldOptions](docs/SubFieldOptions.md)
 - [Dropbox::Sign::SubFormFieldGroup](docs/SubFormFieldGroup.md)
 - [Dropbox::Sign::SubFormFieldRule](docs/SubFormFieldRule.md)
 - [Dropbox::Sign::SubFormFieldRuleAction](docs/SubFormFieldRuleAction.md)
 - [Dropbox::Sign::SubFormFieldRuleTrigger](docs/SubFormFieldRuleTrigger.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentBase](docs/SubFormFieldsPerDocumentBase.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentCheckbox](docs/SubFormFieldsPerDocumentCheckbox.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentCheckboxMerge](docs/SubFormFieldsPerDocumentCheckboxMerge.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentDateSigned](docs/SubFormFieldsPerDocumentDateSigned.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentDropdown](docs/SubFormFieldsPerDocumentDropdown.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentHyperlink](docs/SubFormFieldsPerDocumentHyperlink.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentInitials](docs/SubFormFieldsPerDocumentInitials.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentRadio](docs/SubFormFieldsPerDocumentRadio.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentSignature](docs/SubFormFieldsPerDocumentSignature.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentText](docs/SubFormFieldsPerDocumentText.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentTextMerge](docs/SubFormFieldsPerDocumentTextMerge.md)
 - [Dropbox::Sign::SubFormFieldsPerDocumentTypeEnum](docs/SubFormFieldsPerDocumentTypeEnum.md)
 - [Dropbox::Sign::SubMergeField](docs/SubMergeField.md)
 - [Dropbox::Sign::SubOAuth](docs/SubOAuth.md)
 - [Dropbox::Sign::SubOptions](docs/SubOptions.md)
 - [Dropbox::Sign::SubSignatureRequestGroupedSigners](docs/SubSignatureRequestGroupedSigners.md)
 - [Dropbox::Sign::SubSignatureRequestSigner](docs/SubSignatureRequestSigner.md)
 - [Dropbox::Sign::SubSignatureRequestTemplateSigner](docs/SubSignatureRequestTemplateSigner.md)
 - [Dropbox::Sign::SubSigningOptions](docs/SubSigningOptions.md)
 - [Dropbox::Sign::SubTeamResponse](docs/SubTeamResponse.md)
 - [Dropbox::Sign::SubTemplateRole](docs/SubTemplateRole.md)
 - [Dropbox::Sign::SubUnclaimedDraftSigner](docs/SubUnclaimedDraftSigner.md)
 - [Dropbox::Sign::SubUnclaimedDraftTemplateSigner](docs/SubUnclaimedDraftTemplateSigner.md)
 - [Dropbox::Sign::SubWhiteLabelingOptions](docs/SubWhiteLabelingOptions.md)
 - [Dropbox::Sign::TeamAddMemberRequest](docs/TeamAddMemberRequest.md)
 - [Dropbox::Sign::TeamCreateRequest](docs/TeamCreateRequest.md)
 - [Dropbox::Sign::TeamGetInfoResponse](docs/TeamGetInfoResponse.md)
 - [Dropbox::Sign::TeamGetResponse](docs/TeamGetResponse.md)
 - [Dropbox::Sign::TeamInfoResponse](docs/TeamInfoResponse.md)
 - [Dropbox::Sign::TeamInviteResponse](docs/TeamInviteResponse.md)
 - [Dropbox::Sign::TeamInvitesResponse](docs/TeamInvitesResponse.md)
 - [Dropbox::Sign::TeamMemberResponse](docs/TeamMemberResponse.md)
 - [Dropbox::Sign::TeamMembersResponse](docs/TeamMembersResponse.md)
 - [Dropbox::Sign::TeamParentResponse](docs/TeamParentResponse.md)
 - [Dropbox::Sign::TeamRemoveMemberRequest](docs/TeamRemoveMemberRequest.md)
 - [Dropbox::Sign::TeamResponse](docs/TeamResponse.md)
 - [Dropbox::Sign::TeamSubTeamsResponse](docs/TeamSubTeamsResponse.md)
 - [Dropbox::Sign::TeamUpdateRequest](docs/TeamUpdateRequest.md)
 - [Dropbox::Sign::TemplateAddUserRequest](docs/TemplateAddUserRequest.md)
 - [Dropbox::Sign::TemplateCreateEmbeddedDraftRequest](docs/TemplateCreateEmbeddedDraftRequest.md)
 - [Dropbox::Sign::TemplateCreateEmbeddedDraftResponse](docs/TemplateCreateEmbeddedDraftResponse.md)
 - [Dropbox::Sign::TemplateCreateEmbeddedDraftResponseTemplate](docs/TemplateCreateEmbeddedDraftResponseTemplate.md)
 - [Dropbox::Sign::TemplateEditResponse](docs/TemplateEditResponse.md)
 - [Dropbox::Sign::TemplateGetResponse](docs/TemplateGetResponse.md)
 - [Dropbox::Sign::TemplateListResponse](docs/TemplateListResponse.md)
 - [Dropbox::Sign::TemplateRemoveUserRequest](docs/TemplateRemoveUserRequest.md)
 - [Dropbox::Sign::TemplateResponse](docs/TemplateResponse.md)
 - [Dropbox::Sign::TemplateResponseAccount](docs/TemplateResponseAccount.md)
 - [Dropbox::Sign::TemplateResponseAccountQuota](docs/TemplateResponseAccountQuota.md)
 - [Dropbox::Sign::TemplateResponseCCRole](docs/TemplateResponseCCRole.md)
 - [Dropbox::Sign::TemplateResponseDocument](docs/TemplateResponseDocument.md)
 - [Dropbox::Sign::TemplateResponseDocumentCustomFieldBase](docs/TemplateResponseDocumentCustomFieldBase.md)
 - [Dropbox::Sign::TemplateResponseDocumentCustomFieldCheckbox](docs/TemplateResponseDocumentCustomFieldCheckbox.md)
 - [Dropbox::Sign::TemplateResponseDocumentCustomFieldText](docs/TemplateResponseDocumentCustomFieldText.md)
 - [Dropbox::Sign::TemplateResponseDocumentFieldGroup](docs/TemplateResponseDocumentFieldGroup.md)
 - [Dropbox::Sign::TemplateResponseDocumentFieldGroupRule](docs/TemplateResponseDocumentFieldGroupRule.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldBase](docs/TemplateResponseDocumentFormFieldBase.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldCheckbox](docs/TemplateResponseDocumentFormFieldCheckbox.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldDateSigned](docs/TemplateResponseDocumentFormFieldDateSigned.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldDropdown](docs/TemplateResponseDocumentFormFieldDropdown.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldHyperlink](docs/TemplateResponseDocumentFormFieldHyperlink.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldInitials](docs/TemplateResponseDocumentFormFieldInitials.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldRadio](docs/TemplateResponseDocumentFormFieldRadio.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldSignature](docs/TemplateResponseDocumentFormFieldSignature.md)
 - [Dropbox::Sign::TemplateResponseDocumentFormFieldText](docs/TemplateResponseDocumentFormFieldText.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldBase](docs/TemplateResponseDocumentStaticFieldBase.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldCheckbox](docs/TemplateResponseDocumentStaticFieldCheckbox.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldDateSigned](docs/TemplateResponseDocumentStaticFieldDateSigned.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldDropdown](docs/TemplateResponseDocumentStaticFieldDropdown.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldHyperlink](docs/TemplateResponseDocumentStaticFieldHyperlink.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldInitials](docs/TemplateResponseDocumentStaticFieldInitials.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldRadio](docs/TemplateResponseDocumentStaticFieldRadio.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldSignature](docs/TemplateResponseDocumentStaticFieldSignature.md)
 - [Dropbox::Sign::TemplateResponseDocumentStaticFieldText](docs/TemplateResponseDocumentStaticFieldText.md)
 - [Dropbox::Sign::TemplateResponseFieldAvgTextLength](docs/TemplateResponseFieldAvgTextLength.md)
 - [Dropbox::Sign::TemplateResponseSignerRole](docs/TemplateResponseSignerRole.md)
 - [Dropbox::Sign::TemplateUpdateFilesRequest](docs/TemplateUpdateFilesRequest.md)
 - [Dropbox::Sign::TemplateUpdateFilesResponse](docs/TemplateUpdateFilesResponse.md)
 - [Dropbox::Sign::TemplateUpdateFilesResponseTemplate](docs/TemplateUpdateFilesResponseTemplate.md)
 - [Dropbox::Sign::UnclaimedDraftCreateEmbeddedRequest](docs/UnclaimedDraftCreateEmbeddedRequest.md)
 - [Dropbox::Sign::UnclaimedDraftCreateEmbeddedWithTemplateRequest](docs/UnclaimedDraftCreateEmbeddedWithTemplateRequest.md)
 - [Dropbox::Sign::UnclaimedDraftCreateRequest](docs/UnclaimedDraftCreateRequest.md)
 - [Dropbox::Sign::UnclaimedDraftCreateResponse](docs/UnclaimedDraftCreateResponse.md)
 - [Dropbox::Sign::UnclaimedDraftEditAndResendRequest](docs/UnclaimedDraftEditAndResendRequest.md)
 - [Dropbox::Sign::UnclaimedDraftResponse](docs/UnclaimedDraftResponse.md)
 - [Dropbox::Sign::WarningResponse](docs/WarningResponse.md)


## Documentation for Authorization


### api_key

- **Type**: HTTP basic authentication

### oauth2

- **Type**: Bearer authentication (JWT)

