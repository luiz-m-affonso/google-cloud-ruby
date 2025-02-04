# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vpcaccess/v1/vpc_access.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/vpcaccess/v1/vpc_access.proto\x12\x19google.cloud.vpcaccess.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc8\x04\n\tConnector\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07network\x18\x02 \x01(\t\x12\x15\n\rip_cidr_range\x18\x03 \x01(\t\x12>\n\x05state\x18\x04 \x01(\x0e\x32*.google.cloud.vpcaccess.v1.Connector.StateB\x03\xe0\x41\x03\x12\x16\n\x0emin_throughput\x18\x05 \x01(\x05\x12\x16\n\x0emax_throughput\x18\x06 \x01(\x05\x12\x1f\n\x12\x63onnected_projects\x18\x07 \x03(\tB\x03\xe0\x41\x03\x12;\n\x06subnet\x18\x08 \x01(\x0b\x32+.google.cloud.vpcaccess.v1.Connector.Subnet\x12\x14\n\x0cmachine_type\x18\n \x01(\t\x12\x15\n\rmin_instances\x18\x0b \x01(\x05\x12\x15\n\rmax_instances\x18\x0c \x01(\x05\x1a*\n\x06Subnet\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\nproject_id\x18\x02 \x01(\t\"^\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\t\n\x05\x45RROR\x10\x04\x12\x0c\n\x08UPDATING\x10\x05:g\xea\x41\x64\n\"vpcaccess.googleapis.com/Connector\x12>projects/{project}/locations/{location}/connectors/{connector}\"\xac\x01\n\x16\x43reateConnectorRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x19\n\x0c\x63onnector_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\tconnector\x18\x03 \x01(\x0b\x32$.google.cloud.vpcaccess.v1.ConnectorB\x03\xe0\x41\x02\"O\n\x13GetConnectorRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"vpcaccess.googleapis.com/Connector\"y\n\x15ListConnectorsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"k\n\x16ListConnectorsResponse\x12\x38\n\nconnectors\x18\x01 \x03(\x0b\x32$.google.cloud.vpcaccess.v1.Connector\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"R\n\x16\x44\x65leteConnectorRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"vpcaccess.googleapis.com/Connector\"\xcd\x01\n\x11OperationMetadata\x12\x13\n\x06method\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12:\n\x06target\x18\x05 \x01(\tB*\xe0\x41\x03\xfa\x41$\n\"vpcaccess.googleapis.com/Connector2\xfc\x06\n\x10VpcAccessService\x12\xe8\x01\n\x0f\x43reateConnector\x12\x31.google.cloud.vpcaccess.v1.CreateConnectorRequest\x1a\x1d.google.longrunning.Operation\"\x82\x01\x82\xd3\xe4\x93\x02;\"./v1/{parent=projects/*/locations/*}/connectors:\tconnector\xda\x41\x1dparent,connector_id,connector\xca\x41\x1e\n\tConnector\x12\x11OperationMetadata\x12\xa3\x01\n\x0cGetConnector\x12..google.cloud.vpcaccess.v1.GetConnectorRequest\x1a$.google.cloud.vpcaccess.v1.Connector\"=\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*/connectors/*}\xda\x41\x04name\x12\xb6\x01\n\x0eListConnectors\x12\x30.google.cloud.vpcaccess.v1.ListConnectorsRequest\x1a\x31.google.cloud.vpcaccess.v1.ListConnectorsResponse\"?\x82\xd3\xe4\x93\x02\x30\x12./v1/{parent=projects/*/locations/*}/connectors\xda\x41\x06parent\x12\xcf\x01\n\x0f\x44\x65leteConnector\x12\x31.google.cloud.vpcaccess.v1.DeleteConnectorRequest\x1a\x1d.google.longrunning.Operation\"j\x82\xd3\xe4\x93\x02\x30*./v1/{name=projects/*/locations/*/connectors/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x1aL\xca\x41\x18vpcaccess.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc5\x01\n\x1d\x63om.google.cloud.vpcaccess.v1B\x0eVpcAccessProtoP\x01Z;cloud.google.com/go/vpcaccess/apiv1/vpcaccesspb;vpcaccesspb\xaa\x02\x19Google.Cloud.VpcAccess.V1\xca\x02\x19Google\\Cloud\\VpcAccess\\V1\xea\x02\x1cGoogle::Cloud::VpcAccess::V1b\x06proto3"

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
    module VpcAccess
      module V1
        Connector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.Connector").msgclass
        Connector::Subnet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.Connector.Subnet").msgclass
        Connector::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.Connector.State").enummodule
        CreateConnectorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.CreateConnectorRequest").msgclass
        GetConnectorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.GetConnectorRequest").msgclass
        ListConnectorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.ListConnectorsRequest").msgclass
        ListConnectorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.ListConnectorsResponse").msgclass
        DeleteConnectorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.DeleteConnectorRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vpcaccess.v1.OperationMetadata").msgclass
      end
    end
  end
end
