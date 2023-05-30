# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/ids/v1/ids.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1dgoogle/cloud/ids/v1/ids.proto\x12\x13google.cloud.ids.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfa\x05\n\x08\x45ndpoint\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x39\n\x06labels\x18\x04 \x03(\x0b\x32).google.cloud.ids.v1.Endpoint.LabelsEntry\x12\x14\n\x07network\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12%\n\x18\x65ndpoint_forwarding_rule\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x65ndpoint_ip\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x08 \x01(\t\x12=\n\x08severity\x18\t \x01(\x0e\x32&.google.cloud.ids.v1.Endpoint.SeverityB\x03\xe0\x41\x02\x12\x37\n\x05state\x18\x0c \x01(\x0e\x32#.google.cloud.ids.v1.Endpoint.StateB\x03\xe0\x41\x03\x12\x14\n\x0ctraffic_logs\x18\r \x01(\x08\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"d\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\x11\n\rINFORMATIONAL\x10\x01\x12\x07\n\x03LOW\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x08\n\x04HIGH\x10\x04\x12\x0c\n\x08\x43RITICAL\x10\x05\"E\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03:^\xea\x41[\n\x1bids.googleapis.com/Endpoint\x12<projects/{project}/locations/{location}/endpoints/{endpoint}\"\xa8\x01\n\x14ListEndpointsRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1bids.googleapis.com/Endpoint\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"w\n\x15ListEndpointsResponse\x12\x30\n\tendpoints\x18\x01 \x03(\x0b\x32\x1d.google.cloud.ids.v1.Endpoint\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"G\n\x12GetEndpointRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1bids.googleapis.com/Endpoint\"\xb0\x01\n\x15\x43reateEndpointRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1bids.googleapis.com/Endpoint\x12\x18\n\x0b\x65ndpoint_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x08\x65ndpoint\x18\x03 \x01(\x0b\x32\x1d.google.cloud.ids.v1.EndpointB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"^\n\x15\x44\x65leteEndpointRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1bids.googleapis.com/Endpoint\x12\x12\n\nrequest_id\x18\x02 \x01(\t\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xb2\x06\n\x03IDS\x12\xa6\x01\n\rListEndpoints\x12).google.cloud.ids.v1.ListEndpointsRequest\x1a*.google.cloud.ids.v1.ListEndpointsResponse\">\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/endpoints\xda\x41\x06parent\x12\x93\x01\n\x0bGetEndpoint\x12\'.google.cloud.ids.v1.GetEndpointRequest\x1a\x1d.google.cloud.ids.v1.Endpoint\"<\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/endpoints/*}\xda\x41\x04name\x12\xda\x01\n\x0e\x43reateEndpoint\x12*.google.cloud.ids.v1.CreateEndpointRequest\x1a\x1d.google.longrunning.Operation\"}\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/endpoints:\x08\x65ndpoint\xda\x41\x1bparent,endpoint,endpoint_id\xca\x41\x1d\n\x08\x45ndpoint\x12\x11OperationMetadata\x12\xc6\x01\n\x0e\x44\x65leteEndpoint\x12*.google.cloud.ids.v1.DeleteEndpointRequest\x1a\x1d.google.longrunning.Operation\"i\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/endpoints/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x1a\x46\xca\x41\x12ids.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBi\n\x17\x63om.google.cloud.ids.v1B\x08IdsProtoP\x01Z)cloud.google.com/go/ids/apiv1/idspb;idspb\xea\x02\x16Google::Cloud::IDS::V1b\x06proto3"

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
    module IDS
      module V1
        Endpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.Endpoint").msgclass
        Endpoint::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.Endpoint.Severity").enummodule
        Endpoint::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.Endpoint.State").enummodule
        ListEndpointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.ListEndpointsRequest").msgclass
        ListEndpointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.ListEndpointsResponse").msgclass
        GetEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.GetEndpointRequest").msgclass
        CreateEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.CreateEndpointRequest").msgclass
        DeleteEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.DeleteEndpointRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.ids.v1.OperationMetadata").msgclass
      end
    end
  end
end
