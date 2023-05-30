# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/iap/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n!google/cloud/iap/v1/service.proto\x12\x13google.cloud.iap.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\x7f\n\x1bListTunnelDestGroupsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!iap.googleapis.com/TunnelLocation\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"y\n\x1cListTunnelDestGroupsResponse\x12@\n\x12tunnel_dest_groups\x18\x01 \x03(\x0b\x32$.google.cloud.iap.v1.TunnelDestGroup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xc3\x01\n\x1c\x43reateTunnelDestGroupRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"iap.googleapis.com/TunnelDestGroup\x12\x44\n\x11tunnel_dest_group\x18\x02 \x01(\x0b\x32$.google.cloud.iap.v1.TunnelDestGroupB\x03\xe0\x41\x02\x12!\n\x14tunnel_dest_group_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"U\n\x19GetTunnelDestGroupRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"iap.googleapis.com/TunnelDestGroup\"X\n\x1c\x44\x65leteTunnelDestGroupRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"iap.googleapis.com/TunnelDestGroup\"\x95\x01\n\x1cUpdateTunnelDestGroupRequest\x12\x44\n\x11tunnel_dest_group\x18\x01 \x01(\x0b\x32$.google.cloud.iap.v1.TunnelDestGroupB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xc4\x01\n\x0fTunnelDestGroup\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x12\n\x05\x63idrs\x18\x02 \x03(\tB\x03\xe0\x41\x06\x12\x12\n\x05\x66qdns\x18\x03 \x03(\tB\x03\xe0\x41\x06:s\xea\x41p\n\"iap.googleapis.com/TunnelDestGroup\x12Jprojects/{project}/iap_tunnel/locations/{location}/destGroups/{dest_group}\"*\n\x15GetIapSettingsRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\x88\x01\n\x18UpdateIapSettingsRequest\x12;\n\x0ciap_settings\x18\x01 \x01(\x0b\x32 .google.cloud.iap.v1.IapSettingsB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xa6\x01\n\x0bIapSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12<\n\x0f\x61\x63\x63\x65ss_settings\x18\x05 \x01(\x0b\x32#.google.cloud.iap.v1.AccessSettings\x12\x46\n\x14\x61pplication_settings\x18\x06 \x01(\x0b\x32(.google.cloud.iap.v1.ApplicationSettings\"\xcd\x02\n\x0e\x41\x63\x63\x65ssSettings\x12\x38\n\rgcip_settings\x18\x01 \x01(\x0b\x32!.google.cloud.iap.v1.GcipSettings\x12\x38\n\rcors_settings\x18\x02 \x01(\x0b\x32!.google.cloud.iap.v1.CorsSettings\x12:\n\x0eoauth_settings\x18\x03 \x01(\x0b\x32\".google.cloud.iap.v1.OAuthSettings\x12<\n\x0freauth_settings\x18\x06 \x01(\x0b\x32#.google.cloud.iap.v1.ReauthSettings\x12M\n\x18\x61llowed_domains_settings\x18\x07 \x01(\x0b\x32+.google.cloud.iap.v1.AllowedDomainsSettings\"X\n\x0cGcipSettings\x12\x12\n\ntenant_ids\x18\x01 \x03(\t\x12\x34\n\x0elogin_page_uri\x18\x02 \x01(\x0b\x32\x1c.google.protobuf.StringValue\"F\n\x0c\x43orsSettings\x12\x36\n\x12\x61llow_http_options\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\"A\n\rOAuthSettings\x12\x30\n\nlogin_hint\x18\x02 \x01(\x0b\x32\x1c.google.protobuf.StringValue\"\xee\x02\n\x0eReauthSettings\x12:\n\x06method\x18\x01 \x01(\x0e\x32*.google.cloud.iap.v1.ReauthSettings.Method\x12*\n\x07max_age\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x43\n\x0bpolicy_type\x18\x03 \x01(\x0e\x32..google.cloud.iap.v1.ReauthSettings.PolicyType\"j\n\x06Method\x12\x16\n\x12METHOD_UNSPECIFIED\x10\x00\x12\t\n\x05LOGIN\x10\x01\x12\x10\n\x08PASSWORD\x10\x02\x1a\x02\x08\x01\x12\x0e\n\nSECURE_KEY\x10\x03\x12\x1b\n\x17\x45NROLLED_SECOND_FACTORS\x10\x04\"C\n\nPolicyType\x12\x1b\n\x17POLICY_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07MINIMUM\x10\x01\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x02\"I\n\x16\x41llowedDomainsSettings\x12\x13\n\x06\x65nable\x18\x01 \x01(\x08H\x00\x88\x01\x01\x12\x0f\n\x07\x64omains\x18\x02 \x03(\tB\t\n\x07_enable\"\xb1\x02\n\x13\x41pplicationSettings\x12\x36\n\x0c\x63sm_settings\x18\x01 \x01(\x0b\x32 .google.cloud.iap.v1.CsmSettings\x12R\n\x1b\x61\x63\x63\x65ss_denied_page_settings\x18\x02 \x01(\x0b\x32-.google.cloud.iap.v1.AccessDeniedPageSettings\x12\x33\n\rcookie_domain\x18\x03 \x01(\x0b\x32\x1c.google.protobuf.StringValue\x12Y\n\x1e\x61ttribute_propagation_settings\x18\x04 \x01(\x0b\x32\x31.google.cloud.iap.v1.AttributePropagationSettings\"@\n\x0b\x43smSettings\x12\x31\n\x0brctoken_aud\x18\x01 \x01(\x0b\x32\x1c.google.protobuf.StringValue\"\x92\x02\n\x18\x41\x63\x63\x65ssDeniedPageSettings\x12<\n\x16\x61\x63\x63\x65ss_denied_page_uri\x18\x01 \x01(\x0b\x32\x1c.google.protobuf.StringValue\x12@\n\x1cgenerate_troubleshooting_uri\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12M\n$remediation_token_generation_enabled\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.BoolValueH\x00\x88\x01\x01\x42\'\n%_remediation_token_generation_enabled\"\xa2\x02\n\x1c\x41ttributePropagationSettings\x12\x17\n\nexpression\x18\x01 \x01(\tH\x00\x88\x01\x01\x12_\n\x12output_credentials\x18\x02 \x03(\x0e\x32\x43.google.cloud.iap.v1.AttributePropagationSettings.OutputCredentials\x12\x13\n\x06\x65nable\x18\x03 \x01(\x08H\x01\x88\x01\x01\"Y\n\x11OutputCredentials\x12\"\n\x1eOUTPUT_CREDENTIALS_UNSPECIFIED\x10\x00\x12\n\n\x06HEADER\x10\x01\x12\x07\n\x03JWT\x10\x02\x12\x0b\n\x07RCTOKEN\x10\x03\x42\r\n\x0b_expressionB\t\n\x07_enable\"(\n\x11ListBrandsRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\"@\n\x12ListBrandsResponse\x12*\n\x06\x62rands\x18\x01 \x03(\x0b\x32\x1a.google.cloud.iap.v1.Brand\"Y\n\x12\x43reateBrandRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12.\n\x05\x62rand\x18\x02 \x01(\x0b\x32\x1a.google.cloud.iap.v1.BrandB\x03\xe0\x41\x02\"$\n\x0fGetBrandRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"b\n$ListIdentityAwareProxyClientsRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x95\x01\n%ListIdentityAwareProxyClientsResponse\x12S\n\x1cidentity_aware_proxy_clients\x18\x01 \x03(\x0b\x32-.google.cloud.iap.v1.IdentityAwareProxyClient\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x95\x01\n%CreateIdentityAwareProxyClientRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12W\n\x1bidentity_aware_proxy_client\x18\x02 \x01(\x0b\x32-.google.cloud.iap.v1.IdentityAwareProxyClientB\x03\xe0\x41\x02\"7\n\"GetIdentityAwareProxyClientRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"?\n*ResetIdentityAwareProxyClientSecretRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\":\n%DeleteIdentityAwareProxyClientRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"l\n\x05\x42rand\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\rsupport_email\x18\x02 \x01(\t\x12\x19\n\x11\x61pplication_title\x18\x03 \x01(\t\x12\x1e\n\x11org_internal_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03\"X\n\x18IdentityAwareProxyClient\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x06secret\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t2\xc0\x0e\n\x1eIdentityAwareProxyAdminService\x12t\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\")\x82\xd3\xe4\x93\x02#\"\x1e/v1/{resource=**}:setIamPolicy:\x01*\x12t\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\")\x82\xd3\xe4\x93\x02#\"\x1e/v1/{resource=**}:getIamPolicy:\x01*\x12\x9a\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"/\x82\xd3\xe4\x93\x02)\"$/v1/{resource=**}:testIamPermissions:\x01*\x12\x81\x01\n\x0eGetIapSettings\x12*.google.cloud.iap.v1.GetIapSettingsRequest\x1a .google.cloud.iap.v1.IapSettings\"!\x82\xd3\xe4\x93\x02\x1b\x12\x19/v1/{name=**}:iapSettings\x12\xa2\x01\n\x11UpdateIapSettings\x12-.google.cloud.iap.v1.UpdateIapSettingsRequest\x1a .google.cloud.iap.v1.IapSettings\"<\x82\xd3\xe4\x93\x02\x36\x32&/v1/{iap_settings.name=**}:iapSettings:\x0ciap_settings\x12\xc7\x01\n\x14ListTunnelDestGroups\x12\x30.google.cloud.iap.v1.ListTunnelDestGroupsRequest\x1a\x31.google.cloud.iap.v1.ListTunnelDestGroupsResponse\"J\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/iap_tunnel/locations/*}/destGroups\xda\x41\x06parent\x12\xf7\x01\n\x15\x43reateTunnelDestGroup\x12\x31.google.cloud.iap.v1.CreateTunnelDestGroupRequest\x1a$.google.cloud.iap.v1.TunnelDestGroup\"\x84\x01\x82\xd3\xe4\x93\x02N\"9/v1/{parent=projects/*/iap_tunnel/locations/*}/destGroups:\x11tunnel_dest_group\xda\x41-parent,tunnel_dest_group,tunnel_dest_group_id\x12\xb4\x01\n\x12GetTunnelDestGroup\x12..google.cloud.iap.v1.GetTunnelDestGroupRequest\x1a$.google.cloud.iap.v1.TunnelDestGroup\"H\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/iap_tunnel/locations/*/destGroups/*}\xda\x41\x04name\x12\xac\x01\n\x15\x44\x65leteTunnelDestGroup\x12\x31.google.cloud.iap.v1.DeleteTunnelDestGroupRequest\x1a\x16.google.protobuf.Empty\"H\x82\xd3\xe4\x93\x02;*9/v1/{name=projects/*/iap_tunnel/locations/*/destGroups/*}\xda\x41\x04name\x12\xf9\x01\n\x15UpdateTunnelDestGroup\x12\x31.google.cloud.iap.v1.UpdateTunnelDestGroupRequest\x1a$.google.cloud.iap.v1.TunnelDestGroup\"\x86\x01\x82\xd3\xe4\x93\x02`2K/v1/{tunnel_dest_group.name=projects/*/iap_tunnel/locations/*/destGroups/*}:\x11tunnel_dest_group\xda\x41\x1dtunnel_dest_group,update_mask\x1a\x46\xca\x41\x12iap.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platform2\xa8\x0c\n\x1eIdentityAwareProxyOAuthService\x12\x85\x01\n\nListBrands\x12&.google.cloud.iap.v1.ListBrandsRequest\x1a\'.google.cloud.iap.v1.ListBrandsResponse\"&\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{parent=projects/*}/brands\x12\x81\x01\n\x0b\x43reateBrand\x12\'.google.cloud.iap.v1.CreateBrandRequest\x1a\x1a.google.cloud.iap.v1.Brand\"-\x82\xd3\xe4\x93\x02\'\"\x1e/v1/{parent=projects/*}/brands:\x05\x62rand\x12t\n\x08GetBrand\x12$.google.cloud.iap.v1.GetBrandRequest\x1a\x1a.google.cloud.iap.v1.Brand\"&\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{name=projects/*/brands/*}\x12\xec\x01\n\x1e\x43reateIdentityAwareProxyClient\x12:.google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest\x1a-.google.cloud.iap.v1.IdentityAwareProxyClient\"_\x82\xd3\xe4\x93\x02Y\":/v1/{parent=projects/*/brands/*}/identityAwareProxyClients:\x1bidentity_aware_proxy_client\x12\xda\x01\n\x1dListIdentityAwareProxyClients\x12\x39.google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest\x1a:.google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse\"B\x82\xd3\xe4\x93\x02<\x12:/v1/{parent=projects/*/brands/*}/identityAwareProxyClients\x12\xc9\x01\n\x1bGetIdentityAwareProxyClient\x12\x37.google.cloud.iap.v1.GetIdentityAwareProxyClientRequest\x1a-.google.cloud.iap.v1.IdentityAwareProxyClient\"B\x82\xd3\xe4\x93\x02<\x12:/v1/{name=projects/*/brands/*/identityAwareProxyClients/*}\x12\xe8\x01\n#ResetIdentityAwareProxyClientSecret\x12?.google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest\x1a-.google.cloud.iap.v1.IdentityAwareProxyClient\"Q\x82\xd3\xe4\x93\x02K\"F/v1/{name=projects/*/brands/*/identityAwareProxyClients/*}:resetSecret:\x01*\x12\xb8\x01\n\x1e\x44\x65leteIdentityAwareProxyClient\x12:.google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest\x1a\x16.google.protobuf.Empty\"B\x82\xd3\xe4\x93\x02<*:/v1/{name=projects/*/brands/*/identityAwareProxyClients/*}\x1a\x46\xca\x41\x12iap.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xe5\x01\n\x17\x63om.google.cloud.iap.v1P\x01Z)cloud.google.com/go/iap/apiv1/iappb;iappb\xaa\x02\x13Google.Cloud.Iap.V1\xca\x02\x13Google\\Cloud\\Iap\\V1\xea\x02\x16Google::Cloud::Iap::V1\xea\x41W\n!iap.googleapis.com/TunnelLocation\x12\x32projects/{project}/iap_tunnel/locations/{location}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.StringValue", "google/protobuf/wrappers.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Iap
      module V1
        ListTunnelDestGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListTunnelDestGroupsRequest").msgclass
        ListTunnelDestGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListTunnelDestGroupsResponse").msgclass
        CreateTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateTunnelDestGroupRequest").msgclass
        GetTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetTunnelDestGroupRequest").msgclass
        DeleteTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.DeleteTunnelDestGroupRequest").msgclass
        UpdateTunnelDestGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.UpdateTunnelDestGroupRequest").msgclass
        TunnelDestGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.TunnelDestGroup").msgclass
        GetIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIapSettingsRequest").msgclass
        UpdateIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.UpdateIapSettingsRequest").msgclass
        IapSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IapSettings").msgclass
        AccessSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessSettings").msgclass
        GcipSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GcipSettings").msgclass
        CorsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CorsSettings").msgclass
        OAuthSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.OAuthSettings").msgclass
        ReauthSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings").msgclass
        ReauthSettings::Method = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings.Method").enummodule
        ReauthSettings::PolicyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ReauthSettings.PolicyType").enummodule
        AllowedDomainsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AllowedDomainsSettings").msgclass
        ApplicationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ApplicationSettings").msgclass
        CsmSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CsmSettings").msgclass
        AccessDeniedPageSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessDeniedPageSettings").msgclass
        AttributePropagationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AttributePropagationSettings").msgclass
        AttributePropagationSettings::OutputCredentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AttributePropagationSettings.OutputCredentials").enummodule
        ListBrandsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsRequest").msgclass
        ListBrandsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsResponse").msgclass
        CreateBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateBrandRequest").msgclass
        GetBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetBrandRequest").msgclass
        ListIdentityAwareProxyClientsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest").msgclass
        ListIdentityAwareProxyClientsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse").msgclass
        CreateIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest").msgclass
        GetIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIdentityAwareProxyClientRequest").msgclass
        ResetIdentityAwareProxyClientSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest").msgclass
        DeleteIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest").msgclass
        Brand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.Brand").msgclass
        IdentityAwareProxyClient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IdentityAwareProxyClient").msgclass
      end
    end
  end
end
