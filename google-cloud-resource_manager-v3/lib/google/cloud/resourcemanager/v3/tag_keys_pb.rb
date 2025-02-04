# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/tag_keys.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n.google/cloud/resourcemanager/v3/tag_keys.proto\x12\x1fgoogle.cloud.resourcemanager.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x96\x04\n\x06TagKey\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x13\n\x06parent\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\x1a\n\nshort_name\x18\x03 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x1f\n\x0fnamespaced_name\x18\x04 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x05\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12>\n\x07purpose\x18\x0b \x01(\x0e\x32(.google.cloud.resourcemanager.v3.PurposeB\x03\xe0\x41\x01\x12S\n\x0cpurpose_data\x18\x0c \x03(\x0b\x32\x38.google.cloud.resourcemanager.v3.TagKey.PurposeDataEntryB\x03\xe0\x41\x01\x1a\x32\n\x10PurposeDataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:E\xea\x41\x42\n*cloudresourcemanager.googleapis.com/TagKey\x12\x11tagKeys/{tag_key}R\x01\x01\"`\n\x12ListTagKeysRequest\x12\x19\n\x06parent\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\x12\x01*\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"i\n\x13ListTagKeysResponse\x12\x39\n\x08tag_keys\x18\x01 \x03(\x0b\x32\'.google.cloud.resourcemanager.v3.TagKey\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"T\n\x10GetTagKeyRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*cloudresourcemanager.googleapis.com/TagKey\"^\n\x1aGetNamespacedTagKeyRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*cloudresourcemanager.googleapis.com/TagKey\"p\n\x13\x43reateTagKeyRequest\x12=\n\x07tag_key\x18\x01 \x01(\x0b\x32\'.google.cloud.resourcemanager.v3.TagKeyB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"\x16\n\x14\x43reateTagKeyMetadata\"\x9c\x01\n\x13UpdateTagKeyRequest\x12=\n\x07tag_key\x18\x01 \x01(\x0b\x32\'.google.cloud.resourcemanager.v3.TagKeyB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"\x16\n\x14UpdateTagKeyMetadata\"\x86\x01\n\x13\x44\x65leteTagKeyRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*cloudresourcemanager.googleapis.com/TagKey\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x16\n\x14\x44\x65leteTagKeyMetadata*4\n\x07Purpose\x12\x17\n\x13PURPOSE_UNSPECIFIED\x10\x00\x12\x10\n\x0cGCE_FIREWALL\x10\x01\x32\xe4\x0c\n\x07TagKeys\x12\x96\x01\n\x0bListTagKeys\x12\x33.google.cloud.resourcemanager.v3.ListTagKeysRequest\x1a\x34.google.cloud.resourcemanager.v3.ListTagKeysResponse\"\x1c\x82\xd3\xe4\x93\x02\r\x12\x0b/v3/tagKeys\xda\x41\x06parent\x12\x8c\x01\n\tGetTagKey\x12\x31.google.cloud.resourcemanager.v3.GetTagKeyRequest\x1a\'.google.cloud.resourcemanager.v3.TagKey\"#\x82\xd3\xe4\x93\x02\x16\x12\x14/v3/{name=tagKeys/*}\xda\x41\x04name\x12\xa2\x01\n\x13GetNamespacedTagKey\x12;.google.cloud.resourcemanager.v3.GetNamespacedTagKeyRequest\x1a\'.google.cloud.resourcemanager.v3.TagKey\"%\x82\xd3\xe4\x93\x02\x18\x12\x16/v3/tagKeys/namespaced\xda\x41\x04name\x12\xac\x01\n\x0c\x43reateTagKey\x12\x34.google.cloud.resourcemanager.v3.CreateTagKeyRequest\x1a\x1d.google.longrunning.Operation\"G\x82\xd3\xe4\x93\x02\x16\"\x0b/v3/tagKeys:\x07tag_key\xda\x41\x07tag_key\xca\x41\x1e\n\x06TagKey\x12\x14\x43reateTagKeyMetadata\x12\xc9\x01\n\x0cUpdateTagKey\x12\x34.google.cloud.resourcemanager.v3.UpdateTagKeyRequest\x1a\x1d.google.longrunning.Operation\"d\x82\xd3\xe4\x93\x02\'2\x1c/v3/{tag_key.name=tagKeys/*}:\x07tag_key\xda\x41\x13tag_key,update_mask\xca\x41\x1e\n\x06TagKey\x12\x14UpdateTagKeyMetadata\x12\xa9\x01\n\x0c\x44\x65leteTagKey\x12\x34.google.cloud.resourcemanager.v3.DeleteTagKeyRequest\x1a\x1d.google.longrunning.Operation\"D\x82\xd3\xe4\x93\x02\x16*\x14/v3/{name=tagKeys/*}\xda\x41\x04name\xca\x41\x1e\n\x06TagKey\x12\x14\x44\x65leteTagKeyMetadata\x12\x86\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\";\x82\xd3\xe4\x93\x02*\"%/v3/{resource=tagKeys/*}:getIamPolicy:\x01*\xda\x41\x08resource\x12\x8d\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"B\x82\xd3\xe4\x93\x02*\"%/v3/{resource=tagKeys/*}:setIamPolicy:\x01*\xda\x41\x0fresource,policy\x12\xb8\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"M\x82\xd3\xe4\x93\x02\x30\"+/v3/{resource=tagKeys/*}:testIamPermissions:\x01*\xda\x41\x14resource,permissions\x1a\x90\x01\xca\x41#cloudresourcemanager.googleapis.com\xd2\x41ghttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xed\x01\n#com.google.cloud.resourcemanager.v3B\x0cTagKeysProtoP\x01ZMcloud.google.com/go/resourcemanager/apiv3/resourcemanagerpb;resourcemanagerpb\xaa\x02\x1fGoogle.Cloud.ResourceManager.V3\xca\x02\x1fGoogle\\Cloud\\ResourceManager\\V3\xea\x02\"Google::Cloud::ResourceManager::V3b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module ResourceManager
      module V3
        TagKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.TagKey").msgclass
        ListTagKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagKeysRequest").msgclass
        ListTagKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagKeysResponse").msgclass
        GetTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetTagKeyRequest").msgclass
        GetNamespacedTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetNamespacedTagKeyRequest").msgclass
        CreateTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagKeyRequest").msgclass
        CreateTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagKeyMetadata").msgclass
        UpdateTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagKeyRequest").msgclass
        UpdateTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagKeyMetadata").msgclass
        DeleteTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagKeyRequest").msgclass
        DeleteTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagKeyMetadata").msgclass
        Purpose = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Purpose").enummodule
      end
    end
  end
end
