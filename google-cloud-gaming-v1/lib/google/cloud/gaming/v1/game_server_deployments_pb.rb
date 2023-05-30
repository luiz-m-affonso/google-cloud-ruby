# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gaming/v1/game_server_deployments.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gaming/v1/common_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/gaming/v1/game_server_deployments.proto\x12\x16google.cloud.gaming.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/gaming/v1/common.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc9\x01\n ListGameServerDeploymentsRequest\x12H\n\x06parent\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\x12\x30gameservices.googleapis.com/GameServerDeployment\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\xa0\x01\n!ListGameServerDeploymentsResponse\x12M\n\x17game_server_deployments\x18\x01 \x03(\x0b\x32,.google.cloud.gaming.v1.GameServerDeployment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x04 \x03(\t\"h\n\x1eGetGameServerDeploymentRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0gameservices.googleapis.com/GameServerDeployment\"o\n%GetGameServerDeploymentRolloutRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0gameservices.googleapis.com/GameServerDeployment\"\xdc\x01\n!CreateGameServerDeploymentRequest\x12H\n\x06parent\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\x12\x30gameservices.googleapis.com/GameServerDeployment\x12\x1a\n\rdeployment_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12Q\n\x16game_server_deployment\x18\x03 \x01(\x0b\x32,.google.cloud.gaming.v1.GameServerDeploymentB\x03\xe0\x41\x02\"k\n!DeleteGameServerDeploymentRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0gameservices.googleapis.com/GameServerDeployment\"\xac\x01\n!UpdateGameServerDeploymentRequest\x12Q\n\x16game_server_deployment\x18\x01 \x01(\x0b\x32,.google.cloud.gaming.v1.GameServerDeploymentB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\xab\x01\n(UpdateGameServerDeploymentRolloutRequest\x12I\n\x07rollout\x18\x01 \x01(\x0b\x32\x33.google.cloud.gaming.v1.GameServerDeploymentRolloutB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"0\n\x1b\x46\x65tchDeploymentStateRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\x83\x02\n\x1c\x46\x65tchDeploymentStateResponse\x12`\n\rcluster_state\x18\x01 \x03(\x0b\x32I.google.cloud.gaming.v1.FetchDeploymentStateResponse.DeployedClusterState\x12\x13\n\x0bunavailable\x18\x02 \x03(\t\x1al\n\x14\x44\x65ployedClusterState\x12\x0f\n\x07\x63luster\x18\x01 \x01(\t\x12\x43\n\rfleet_details\x18\x02 \x03(\x0b\x32,.google.cloud.gaming.v1.DeployedFleetDetails\"\xb0\x03\n\x14GameServerDeployment\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12H\n\x06labels\x18\x04 \x03(\x0b\x32\x38.google.cloud.gaming.v1.GameServerDeployment.LabelsEntry\x12\x0c\n\x04\x65tag\x18\x07 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x08 \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x81\x01\xea\x41~\n0gameservices.googleapis.com/GameServerDeployment\x12Jprojects/{project}/locations/{location}/gameServerDeployments/{deployment}\"\x8c\x01\n\x18GameServerConfigOverride\x12@\n\x0frealms_selector\x18\x01 \x01(\x0b\x32%.google.cloud.gaming.v1.RealmSelectorH\x00\x12\x18\n\x0e\x63onfig_version\x18\x64 \x01(\tH\x01\x42\n\n\x08selectorB\x08\n\x06\x63hange\"\xb5\x03\n\x1bGameServerDeploymentRollout\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\"\n\x1a\x64\x65\x66\x61ult_game_server_config\x18\x04 \x01(\t\x12V\n\x1cgame_server_config_overrides\x18\x05 \x03(\x0b\x32\x30.google.cloud.gaming.v1.GameServerConfigOverride\x12\x0c\n\x04\x65tag\x18\x06 \x01(\t:\x91\x01\xea\x41\x8d\x01\n7gameservices.googleapis.com/GameServerDeploymentRollout\x12Rprojects/{project}/locations/{location}/gameServerDeployments/{deployment}/rollout\"\xe3\x01\n)PreviewGameServerDeploymentRolloutRequest\x12I\n\x07rollout\x18\x01 \x01(\x0b\x32\x33.google.cloud.gaming.v1.GameServerDeploymentRolloutB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x35\n\x0cpreview_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"\x8a\x01\n*PreviewGameServerDeploymentRolloutResponse\x12\x13\n\x0bunavailable\x18\x02 \x03(\t\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\x12\x39\n\x0ctarget_state\x18\x04 \x01(\x0b\x32#.google.cloud.gaming.v1.TargetStateBR\n\x1a\x63om.google.cloud.gaming.v1P\x01Z2cloud.google.com/go/gaming/apiv1/gamingpb;gamingpbb\x06proto3"

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
    ["google.cloud.gaming.v1.DeployedFleetDetails", "google/cloud/gaming/v1/common.proto"],
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
    module Gaming
      module V1
        ListGameServerDeploymentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.ListGameServerDeploymentsRequest").msgclass
        ListGameServerDeploymentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.ListGameServerDeploymentsResponse").msgclass
        GetGameServerDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GetGameServerDeploymentRequest").msgclass
        GetGameServerDeploymentRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GetGameServerDeploymentRolloutRequest").msgclass
        CreateGameServerDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.CreateGameServerDeploymentRequest").msgclass
        DeleteGameServerDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeleteGameServerDeploymentRequest").msgclass
        UpdateGameServerDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.UpdateGameServerDeploymentRequest").msgclass
        UpdateGameServerDeploymentRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.UpdateGameServerDeploymentRolloutRequest").msgclass
        FetchDeploymentStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.FetchDeploymentStateRequest").msgclass
        FetchDeploymentStateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.FetchDeploymentStateResponse").msgclass
        FetchDeploymentStateResponse::DeployedClusterState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.FetchDeploymentStateResponse.DeployedClusterState").msgclass
        GameServerDeployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GameServerDeployment").msgclass
        GameServerConfigOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GameServerConfigOverride").msgclass
        GameServerDeploymentRollout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.GameServerDeploymentRollout").msgclass
        PreviewGameServerDeploymentRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.PreviewGameServerDeploymentRolloutRequest").msgclass
        PreviewGameServerDeploymentRolloutResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.PreviewGameServerDeploymentRolloutResponse").msgclass
      end
    end
  end
end
