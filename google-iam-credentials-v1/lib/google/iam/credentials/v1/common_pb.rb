# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/credentials/v1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/iam/credentials/v1/common.proto\x12\x19google.iam.credentials.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa9\x01\n\x1aGenerateAccessTokenRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12\x11\n\tdelegates\x18\x02 \x03(\t\x12\x12\n\x05scope\x18\x04 \x03(\tB\x03\xe0\x41\x02\x12+\n\x08lifetime\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\"d\n\x1bGenerateAccessTokenResponse\x12\x14\n\x0c\x61\x63\x63\x65ss_token\x18\x01 \x01(\t\x12/\n\x0b\x65xpire_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"s\n\x0fSignBlobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12\x11\n\tdelegates\x18\x03 \x03(\t\x12\x14\n\x07payload\x18\x05 \x01(\x0c\x42\x03\xe0\x41\x02\"7\n\x10SignBlobResponse\x12\x0e\n\x06key_id\x18\x01 \x01(\t\x12\x13\n\x0bsigned_blob\x18\x04 \x01(\x0c\"r\n\x0eSignJwtRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12\x11\n\tdelegates\x18\x03 \x03(\t\x12\x14\n\x07payload\x18\x05 \x01(\tB\x03\xe0\x41\x02\"5\n\x0fSignJwtResponse\x12\x0e\n\x06key_id\x18\x01 \x01(\t\x12\x12\n\nsigned_jwt\x18\x02 \x01(\t\"\x92\x01\n\x16GenerateIdTokenRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12\x11\n\tdelegates\x18\x02 \x03(\t\x12\x15\n\x08\x61udience\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rinclude_email\x18\x04 \x01(\x08\"(\n\x17GenerateIdTokenResponse\x12\r\n\x05token\x18\x01 \x01(\tB\xac\x02\n#com.google.cloud.iam.credentials.v1B\x19IAMCredentialsCommonProtoP\x01ZEcloud.google.com/go/iam/credentials/apiv1/credentialspb;credentialspb\xf8\x01\x01\xaa\x02\x1fGoogle.Cloud.Iam.Credentials.V1\xca\x02\x1fGoogle\\Cloud\\Iam\\Credentials\\V1\xea\x41Y\n!iam.googleapis.com/ServiceAccount\x12\x34projects/{project}/serviceAccounts/{service_account}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
  module Iam
    module Credentials
      module V1
        GenerateAccessTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateAccessTokenRequest").msgclass
        GenerateAccessTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateAccessTokenResponse").msgclass
        SignBlobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignBlobRequest").msgclass
        SignBlobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignBlobResponse").msgclass
        SignJwtRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignJwtRequest").msgclass
        SignJwtResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignJwtResponse").msgclass
        GenerateIdTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateIdTokenRequest").msgclass
        GenerateIdTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateIdTokenResponse").msgclass
      end
    end
  end
end
