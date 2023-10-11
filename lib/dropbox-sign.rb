=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

# Common files
require 'dropbox-sign/api_client'
require 'dropbox-sign/api_error'
require 'dropbox-sign/version'
require 'dropbox-sign/configuration'

# Models
require 'dropbox-sign/models/account_create_request'
require 'dropbox-sign/models/account_create_response'
require 'dropbox-sign/models/account_get_response'
require 'dropbox-sign/models/account_response'
require 'dropbox-sign/models/account_response_quotas'
require 'dropbox-sign/models/account_update_request'
require 'dropbox-sign/models/account_verify_request'
require 'dropbox-sign/models/account_verify_response'
require 'dropbox-sign/models/account_verify_response_account'
require 'dropbox-sign/models/api_app_create_request'
require 'dropbox-sign/models/api_app_get_response'
require 'dropbox-sign/models/api_app_list_response'
require 'dropbox-sign/models/api_app_response'
require 'dropbox-sign/models/api_app_response_o_auth'
require 'dropbox-sign/models/api_app_response_options'
require 'dropbox-sign/models/api_app_response_owner_account'
require 'dropbox-sign/models/api_app_response_white_labeling_options'
require 'dropbox-sign/models/api_app_update_request'
require 'dropbox-sign/models/bulk_send_job_get_response'
require 'dropbox-sign/models/bulk_send_job_get_response_signature_requests'
require 'dropbox-sign/models/bulk_send_job_list_response'
require 'dropbox-sign/models/bulk_send_job_response'
require 'dropbox-sign/models/bulk_send_job_send_response'
require 'dropbox-sign/models/embedded_edit_url_request'
require 'dropbox-sign/models/embedded_edit_url_response'
require 'dropbox-sign/models/embedded_edit_url_response_embedded'
require 'dropbox-sign/models/embedded_sign_url_response'
require 'dropbox-sign/models/embedded_sign_url_response_embedded'
require 'dropbox-sign/models/error_response'
require 'dropbox-sign/models/error_response_error'
require 'dropbox-sign/models/event_callback_request'
require 'dropbox-sign/models/event_callback_request_event'
require 'dropbox-sign/models/event_callback_request_event_metadata'
require 'dropbox-sign/models/file_response'
require 'dropbox-sign/models/file_response_data_uri'
require 'dropbox-sign/models/list_info_response'
require 'dropbox-sign/models/o_auth_token_generate_request'
require 'dropbox-sign/models/o_auth_token_refresh_request'
require 'dropbox-sign/models/o_auth_token_response'
require 'dropbox-sign/models/report_create_request'
require 'dropbox-sign/models/report_create_response'
require 'dropbox-sign/models/report_response'
require 'dropbox-sign/models/signature_request_bulk_create_embedded_with_template_request'
require 'dropbox-sign/models/signature_request_bulk_send_with_template_request'
require 'dropbox-sign/models/signature_request_create_embedded_request'
require 'dropbox-sign/models/signature_request_create_embedded_with_template_request'
require 'dropbox-sign/models/signature_request_get_response'
require 'dropbox-sign/models/signature_request_list_response'
require 'dropbox-sign/models/signature_request_remind_request'
require 'dropbox-sign/models/signature_request_response'
require 'dropbox-sign/models/signature_request_response_attachment'
require 'dropbox-sign/models/signature_request_response_custom_field_base'
require 'dropbox-sign/models/signature_request_response_custom_field_type_enum'
require 'dropbox-sign/models/signature_request_response_data_base'
require 'dropbox-sign/models/signature_request_response_data_type_enum'
require 'dropbox-sign/models/signature_request_response_signatures'
require 'dropbox-sign/models/signature_request_send_request'
require 'dropbox-sign/models/signature_request_send_with_template_request'
require 'dropbox-sign/models/signature_request_update_request'
require 'dropbox-sign/models/sub_attachment'
require 'dropbox-sign/models/sub_bulk_signer_list'
require 'dropbox-sign/models/sub_bulk_signer_list_custom_field'
require 'dropbox-sign/models/sub_cc'
require 'dropbox-sign/models/sub_custom_field'
require 'dropbox-sign/models/sub_editor_options'
require 'dropbox-sign/models/sub_field_options'
require 'dropbox-sign/models/sub_form_field_group'
require 'dropbox-sign/models/sub_form_field_rule'
require 'dropbox-sign/models/sub_form_field_rule_action'
require 'dropbox-sign/models/sub_form_field_rule_trigger'
require 'dropbox-sign/models/sub_form_fields_per_document_base'
require 'dropbox-sign/models/sub_form_fields_per_document_font_enum'
require 'dropbox-sign/models/sub_form_fields_per_document_type_enum'
require 'dropbox-sign/models/sub_merge_field'
require 'dropbox-sign/models/sub_o_auth'
require 'dropbox-sign/models/sub_options'
require 'dropbox-sign/models/sub_signature_request_grouped_signers'
require 'dropbox-sign/models/sub_signature_request_signer'
require 'dropbox-sign/models/sub_signature_request_template_signer'
require 'dropbox-sign/models/sub_signing_options'
require 'dropbox-sign/models/sub_team_response'
require 'dropbox-sign/models/sub_template_role'
require 'dropbox-sign/models/sub_unclaimed_draft_signer'
require 'dropbox-sign/models/sub_unclaimed_draft_template_signer'
require 'dropbox-sign/models/sub_white_labeling_options'
require 'dropbox-sign/models/team_add_member_request'
require 'dropbox-sign/models/team_create_request'
require 'dropbox-sign/models/team_get_info_response'
require 'dropbox-sign/models/team_get_response'
require 'dropbox-sign/models/team_info_response'
require 'dropbox-sign/models/team_invite_response'
require 'dropbox-sign/models/team_invites_response'
require 'dropbox-sign/models/team_member_response'
require 'dropbox-sign/models/team_members_response'
require 'dropbox-sign/models/team_parent_response'
require 'dropbox-sign/models/team_remove_member_request'
require 'dropbox-sign/models/team_response'
require 'dropbox-sign/models/team_sub_teams_response'
require 'dropbox-sign/models/team_update_request'
require 'dropbox-sign/models/template_add_user_request'
require 'dropbox-sign/models/template_create_embedded_draft_request'
require 'dropbox-sign/models/template_create_embedded_draft_response'
require 'dropbox-sign/models/template_create_embedded_draft_response_template'
require 'dropbox-sign/models/template_create_request'
require 'dropbox-sign/models/template_create_response'
require 'dropbox-sign/models/template_create_response_template'
require 'dropbox-sign/models/template_edit_response'
require 'dropbox-sign/models/template_get_response'
require 'dropbox-sign/models/template_list_response'
require 'dropbox-sign/models/template_remove_user_request'
require 'dropbox-sign/models/template_response'
require 'dropbox-sign/models/template_response_account'
require 'dropbox-sign/models/template_response_account_quota'
require 'dropbox-sign/models/template_response_cc_role'
require 'dropbox-sign/models/template_response_document'
require 'dropbox-sign/models/template_response_document_custom_field_base'
require 'dropbox-sign/models/template_response_document_field_group'
require 'dropbox-sign/models/template_response_document_field_group_rule'
require 'dropbox-sign/models/template_response_document_form_field_base'
require 'dropbox-sign/models/template_response_document_static_field_base'
require 'dropbox-sign/models/template_response_field_avg_text_length'
require 'dropbox-sign/models/template_response_signer_role'
require 'dropbox-sign/models/template_update_files_request'
require 'dropbox-sign/models/template_update_files_response'
require 'dropbox-sign/models/template_update_files_response_template'
require 'dropbox-sign/models/unclaimed_draft_create_embedded_request'
require 'dropbox-sign/models/unclaimed_draft_create_embedded_with_template_request'
require 'dropbox-sign/models/unclaimed_draft_create_request'
require 'dropbox-sign/models/unclaimed_draft_create_response'
require 'dropbox-sign/models/unclaimed_draft_edit_and_resend_request'
require 'dropbox-sign/models/unclaimed_draft_response'
require 'dropbox-sign/models/warning_response'
require 'dropbox-sign/models/signature_request_response_custom_field_checkbox'
require 'dropbox-sign/models/signature_request_response_custom_field_text'
require 'dropbox-sign/models/signature_request_response_data_value_checkbox'
require 'dropbox-sign/models/signature_request_response_data_value_checkbox_merge'
require 'dropbox-sign/models/signature_request_response_data_value_date_signed'
require 'dropbox-sign/models/signature_request_response_data_value_dropdown'
require 'dropbox-sign/models/signature_request_response_data_value_initials'
require 'dropbox-sign/models/signature_request_response_data_value_radio'
require 'dropbox-sign/models/signature_request_response_data_value_signature'
require 'dropbox-sign/models/signature_request_response_data_value_text'
require 'dropbox-sign/models/signature_request_response_data_value_text_merge'
require 'dropbox-sign/models/sub_form_fields_per_document_checkbox'
require 'dropbox-sign/models/sub_form_fields_per_document_checkbox_merge'
require 'dropbox-sign/models/sub_form_fields_per_document_date_signed'
require 'dropbox-sign/models/sub_form_fields_per_document_dropdown'
require 'dropbox-sign/models/sub_form_fields_per_document_hyperlink'
require 'dropbox-sign/models/sub_form_fields_per_document_initials'
require 'dropbox-sign/models/sub_form_fields_per_document_radio'
require 'dropbox-sign/models/sub_form_fields_per_document_signature'
require 'dropbox-sign/models/sub_form_fields_per_document_text'
require 'dropbox-sign/models/sub_form_fields_per_document_text_merge'
require 'dropbox-sign/models/template_response_document_custom_field_checkbox'
require 'dropbox-sign/models/template_response_document_custom_field_text'
require 'dropbox-sign/models/template_response_document_form_field_checkbox'
require 'dropbox-sign/models/template_response_document_form_field_date_signed'
require 'dropbox-sign/models/template_response_document_form_field_dropdown'
require 'dropbox-sign/models/template_response_document_form_field_hyperlink'
require 'dropbox-sign/models/template_response_document_form_field_initials'
require 'dropbox-sign/models/template_response_document_form_field_radio'
require 'dropbox-sign/models/template_response_document_form_field_signature'
require 'dropbox-sign/models/template_response_document_form_field_text'
require 'dropbox-sign/models/template_response_document_static_field_checkbox'
require 'dropbox-sign/models/template_response_document_static_field_date_signed'
require 'dropbox-sign/models/template_response_document_static_field_dropdown'
require 'dropbox-sign/models/template_response_document_static_field_hyperlink'
require 'dropbox-sign/models/template_response_document_static_field_initials'
require 'dropbox-sign/models/template_response_document_static_field_radio'
require 'dropbox-sign/models/template_response_document_static_field_signature'
require 'dropbox-sign/models/template_response_document_static_field_text'

# APIs
require 'dropbox-sign/api/account_api'
require 'dropbox-sign/api/api_app_api'
require 'dropbox-sign/api/bulk_send_job_api'
require 'dropbox-sign/api/embedded_api'
require 'dropbox-sign/api/o_auth_api'
require 'dropbox-sign/api/report_api'
require 'dropbox-sign/api/signature_request_api'
require 'dropbox-sign/api/team_api'
require 'dropbox-sign/api/template_api'
require 'dropbox-sign/api/unclaimed_draft_api'

require 'dropbox-sign/event_callback_helper'

module Dropbox
end

module Dropbox::Sign
  class << self
    # Customize default settings for the SDK using block.
    #   Dropbox::Sign.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
