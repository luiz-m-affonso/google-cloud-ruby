# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1/common.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'


descriptor_data = "\n google/firestore/v1/common.proto\x12\x13google.firestore.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"#\n\x0c\x44ocumentMask\x12\x13\n\x0b\x66ield_paths\x18\x01 \x03(\t\"e\n\x0cPrecondition\x12\x10\n\x06\x65xists\x18\x01 \x01(\x08H\x00\x12\x31\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\x42\x10\n\x0e\x63ondition_type\"\xa9\x02\n\x12TransactionOptions\x12\x45\n\tread_only\x18\x02 \x01(\x0b\x32\x30.google.firestore.v1.TransactionOptions.ReadOnlyH\x00\x12G\n\nread_write\x18\x03 \x01(\x0b\x32\x31.google.firestore.v1.TransactionOptions.ReadWriteH\x00\x1a&\n\tReadWrite\x12\x19\n\x11retry_transaction\x18\x01 \x01(\x0c\x1aS\n\x08ReadOnly\x12/\n\tread_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\x42\x16\n\x14\x63onsistency_selectorB\x06\n\x04modeB\xc3\x01\n\x17\x63om.google.firestore.v1B\x0b\x43ommonProtoP\x01Z;cloud.google.com/go/firestore/apiv1/firestorepb;firestorepb\xa2\x02\x04GCFS\xaa\x02\x19Google.Cloud.Firestore.V1\xca\x02\x19Google\\Cloud\\Firestore\\V1\xea\x02\x1cGoogle::Cloud::Firestore::V1b\x06proto3"

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
    module Firestore
      module V1
        DocumentMask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.DocumentMask").msgclass
        Precondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Precondition").msgclass
        TransactionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.TransactionOptions").msgclass
        TransactionOptions::ReadWrite = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.TransactionOptions.ReadWrite").msgclass
        TransactionOptions::ReadOnly = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.TransactionOptions.ReadOnly").msgclass
      end
    end
  end
end
