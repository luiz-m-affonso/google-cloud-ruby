# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gaming/v1/game_server_configs_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/cloud/gaming/v1/game_server_configs_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n8google/cloud/gaming/v1/game_server_configs_service.proto\x12\x16google.cloud.gaming.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x30google/cloud/gaming/v1/game_server_configs.proto\x1a#google/longrunning/operations.proto2\x9b\x08\n\x18GameServerConfigsService\x12\xda\x01\n\x15ListGameServerConfigs\x12\x34.google.cloud.gaming.v1.ListGameServerConfigsRequest\x1a\x35.google.cloud.gaming.v1.ListGameServerConfigsResponse\"T\x82\xd3\xe4\x93\x02\x45\x12\x43/v1/{parent=projects/*/locations/*/gameServerDeployments/*}/configs\xda\x41\x06parent\x12\xc7\x01\n\x13GetGameServerConfig\x12\x32.google.cloud.gaming.v1.GetGameServerConfigRequest\x1a(.google.cloud.gaming.v1.GameServerConfig\"R\x82\xd3\xe4\x93\x02\x45\x12\x43/v1/{name=projects/*/locations/*/gameServerDeployments/*/configs/*}\xda\x41\x04name\x12\x94\x02\n\x16\x43reateGameServerConfig\x12\x35.google.cloud.gaming.v1.CreateGameServerConfigRequest\x1a\x1d.google.longrunning.Operation\"\xa3\x01\x82\xd3\xe4\x93\x02Y\"C/v1/{parent=projects/*/locations/*/gameServerDeployments/*}/configs:\x12game_server_config\xda\x41\x19parent,game_server_config\xca\x41%\n\x10GameServerConfig\x12\x11OperationMetadata\x12\xef\x01\n\x16\x44\x65leteGameServerConfig\x12\x35.google.cloud.gaming.v1.DeleteGameServerConfigRequest\x1a\x1d.google.longrunning.Operation\"\x7f\x82\xd3\xe4\x93\x02\x45*C/v1/{name=projects/*/locations/*/gameServerDeployments/*/configs/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x1aO\xca\x41\x1bgameservices.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBR\n\x1a\x63om.google.cloud.gaming.v1P\x01Z2cloud.google.com/go/gaming/apiv1/gamingpb;gamingpbb\x06proto3"

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
    module Gaming
      module V1
      end
    end
  end
end
