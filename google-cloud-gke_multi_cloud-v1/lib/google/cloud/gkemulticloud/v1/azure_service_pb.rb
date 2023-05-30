# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkemulticloud/v1/azure_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkemulticloud/v1/azure_resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n1google/cloud/gkemulticloud/v1/azure_service.proto\x12\x1dgoogle.cloud.gkemulticloud.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/gkemulticloud/v1/azure_resources.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdd\x01\n\x19\x43reateAzureClusterRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gkemulticloud.googleapis.com/AzureCluster\x12G\n\razure_cluster\x18\x02 \x01(\x0b\x32+.google.cloud.gkemulticloud.v1.AzureClusterB\x03\xe0\x41\x02\x12\x1d\n\x10\x61zure_cluster_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\"\xb1\x01\n\x19UpdateAzureClusterRequest\x12G\n\razure_cluster\x18\x01 \x01(\x0b\x32+.google.cloud.gkemulticloud.v1.AzureClusterB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x34\n\x0bupdate_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"Y\n\x16GetAzureClusterRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gkemulticloud.googleapis.com/AzureCluster\"\x84\x01\n\x18ListAzureClustersRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gkemulticloud.googleapis.com/AzureCluster\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"y\n\x19ListAzureClustersResponse\x12\x43\n\x0e\x61zure_clusters\x18\x01 \x03(\x0b\x32+.google.cloud.gkemulticloud.v1.AzureCluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x98\x01\n\x19\x44\x65leteAzureClusterRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gkemulticloud.googleapis.com/AzureCluster\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x04 \x01(\t\"\xe4\x01\n\x1a\x43reateAzureNodePoolRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*gkemulticloud.googleapis.com/AzureNodePool\x12J\n\x0f\x61zure_node_pool\x18\x02 \x01(\x0b\x32,.google.cloud.gkemulticloud.v1.AzureNodePoolB\x03\xe0\x41\x02\x12\x1f\n\x12\x61zure_node_pool_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\"\xb5\x01\n\x1aUpdateAzureNodePoolRequest\x12J\n\x0f\x61zure_node_pool\x18\x01 \x01(\x0b\x32,.google.cloud.gkemulticloud.v1.AzureNodePoolB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x34\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"[\n\x17GetAzureNodePoolRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gkemulticloud.googleapis.com/AzureNodePool\"\x86\x01\n\x19ListAzureNodePoolsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*gkemulticloud.googleapis.com/AzureNodePool\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"}\n\x1aListAzureNodePoolsResponse\x12\x46\n\x10\x61zure_node_pools\x18\x01 \x03(\x0b\x32,.google.cloud.gkemulticloud.v1.AzureNodePool\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x9a\x01\n\x1a\x44\x65leteAzureNodePoolRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gkemulticloud.googleapis.com/AzureNodePool\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x04 \x01(\t\"c\n\x1bGetAzureServerConfigRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.gkemulticloud.googleapis.com/AzureServerConfig\"\xd8\x01\n\x18\x43reateAzureClientRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(gkemulticloud.googleapis.com/AzureClient\x12\x45\n\x0c\x61zure_client\x18\x02 \x01(\x0b\x32*.google.cloud.gkemulticloud.v1.AzureClientB\x03\xe0\x41\x02\x12\x1c\n\x0f\x61zure_client_id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"W\n\x15GetAzureClientRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(gkemulticloud.googleapis.com/AzureClient\"\x82\x01\n\x17ListAzureClientsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(gkemulticloud.googleapis.com/AzureClient\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"v\n\x18ListAzureClientsResponse\x12\x41\n\razure_clients\x18\x01 \x03(\x0b\x32*.google.cloud.gkemulticloud.v1.AzureClient\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x88\x01\n\x18\x44\x65leteAzureClientRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(gkemulticloud.googleapis.com/AzureClient\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"k\n\x1fGenerateAzureAccessTokenRequest\x12H\n\razure_cluster\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gkemulticloud.googleapis.com/AzureCluster\"w\n GenerateAzureAccessTokenResponse\x12\x19\n\x0c\x61\x63\x63\x65ss_token\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x38\n\x0f\x65xpiration_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x32\xdd\x1d\n\rAzureClusters\x12\xfd\x01\n\x11\x43reateAzureClient\x12\x37.google.cloud.gkemulticloud.v1.CreateAzureClientRequest\x1a\x1d.google.longrunning.Operation\"\x8f\x01\x82\xd3\xe4\x93\x02@\"0/v1/{parent=projects/*/locations/*}/azureClients:\x0c\x61zure_client\xda\x41#parent,azure_client,azure_client_id\xca\x41 \n\x0b\x41zureClient\x12\x11OperationMetadata\x12\xb3\x01\n\x0eGetAzureClient\x12\x34.google.cloud.gkemulticloud.v1.GetAzureClientRequest\x1a*.google.cloud.gkemulticloud.v1.AzureClient\"?\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/azureClients/*}\xda\x41\x04name\x12\xc6\x01\n\x10ListAzureClients\x12\x36.google.cloud.gkemulticloud.v1.ListAzureClientsRequest\x1a\x37.google.cloud.gkemulticloud.v1.ListAzureClientsResponse\"A\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/azureClients\xda\x41\x06parent\x12\xd9\x01\n\x11\x44\x65leteAzureClient\x12\x37.google.cloud.gkemulticloud.v1.DeleteAzureClientRequest\x1a\x1d.google.longrunning.Operation\"l\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/azureClients/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\x84\x02\n\x12\x43reateAzureCluster\x12\x38.google.cloud.gkemulticloud.v1.CreateAzureClusterRequest\x1a\x1d.google.longrunning.Operation\"\x94\x01\x82\xd3\xe4\x93\x02\x42\"1/v1/{parent=projects/*/locations/*}/azureClusters:\razure_cluster\xda\x41%parent,azure_cluster,azure_cluster_id\xca\x41!\n\x0c\x41zureCluster\x12\x11OperationMetadata\x12\x86\x02\n\x12UpdateAzureCluster\x12\x38.google.cloud.gkemulticloud.v1.UpdateAzureClusterRequest\x1a\x1d.google.longrunning.Operation\"\x96\x01\x82\xd3\xe4\x93\x02P2?/v1/{azure_cluster.name=projects/*/locations/*/azureClusters/*}:\razure_cluster\xda\x41\x19\x61zure_cluster,update_mask\xca\x41!\n\x0c\x41zureCluster\x12\x11OperationMetadata\x12\xb7\x01\n\x0fGetAzureCluster\x12\x35.google.cloud.gkemulticloud.v1.GetAzureClusterRequest\x1a+.google.cloud.gkemulticloud.v1.AzureCluster\"@\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{name=projects/*/locations/*/azureClusters/*}\xda\x41\x04name\x12\xca\x01\n\x11ListAzureClusters\x12\x37.google.cloud.gkemulticloud.v1.ListAzureClustersRequest\x1a\x38.google.cloud.gkemulticloud.v1.ListAzureClustersResponse\"B\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{parent=projects/*/locations/*}/azureClusters\xda\x41\x06parent\x12\xdc\x01\n\x12\x44\x65leteAzureCluster\x12\x38.google.cloud.gkemulticloud.v1.DeleteAzureClusterRequest\x1a\x1d.google.longrunning.Operation\"m\x82\xd3\xe4\x93\x02\x33*1/v1/{name=projects/*/locations/*/azureClusters/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xf8\x01\n\x18GenerateAzureAccessToken\x12>.google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenRequest\x1a?.google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenResponse\"[\x82\xd3\xe4\x93\x02U\x12S/v1/{azure_cluster=projects/*/locations/*/azureClusters/*}:generateAzureAccessToken\x12\x9e\x02\n\x13\x43reateAzureNodePool\x12\x39.google.cloud.gkemulticloud.v1.CreateAzureNodePoolRequest\x1a\x1d.google.longrunning.Operation\"\xac\x01\x82\xd3\xe4\x93\x02U\"B/v1/{parent=projects/*/locations/*/azureClusters/*}/azureNodePools:\x0f\x61zure_node_pool\xda\x41)parent,azure_node_pool,azure_node_pool_id\xca\x41\"\n\rAzureNodePool\x12\x11OperationMetadata\x12\xa0\x02\n\x13UpdateAzureNodePool\x12\x39.google.cloud.gkemulticloud.v1.UpdateAzureNodePoolRequest\x1a\x1d.google.longrunning.Operation\"\xae\x01\x82\xd3\xe4\x93\x02\x65\x32R/v1/{azure_node_pool.name=projects/*/locations/*/azureClusters/*/azureNodePools/*}:\x0f\x61zure_node_pool\xda\x41\x1b\x61zure_node_pool,update_mask\xca\x41\"\n\rAzureNodePool\x12\x11OperationMetadata\x12\xcb\x01\n\x10GetAzureNodePool\x12\x36.google.cloud.gkemulticloud.v1.GetAzureNodePoolRequest\x1a,.google.cloud.gkemulticloud.v1.AzureNodePool\"Q\x82\xd3\xe4\x93\x02\x44\x12\x42/v1/{name=projects/*/locations/*/azureClusters/*/azureNodePools/*}\xda\x41\x04name\x12\xde\x01\n\x12ListAzureNodePools\x12\x38.google.cloud.gkemulticloud.v1.ListAzureNodePoolsRequest\x1a\x39.google.cloud.gkemulticloud.v1.ListAzureNodePoolsResponse\"S\x82\xd3\xe4\x93\x02\x44\x12\x42/v1/{parent=projects/*/locations/*/azureClusters/*}/azureNodePools\xda\x41\x06parent\x12\xef\x01\n\x13\x44\x65leteAzureNodePool\x12\x39.google.cloud.gkemulticloud.v1.DeleteAzureNodePoolRequest\x1a\x1d.google.longrunning.Operation\"~\x82\xd3\xe4\x93\x02\x44*B/v1/{name=projects/*/locations/*/azureClusters/*/azureNodePools/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xc8\x01\n\x14GetAzureServerConfig\x12:.google.cloud.gkemulticloud.v1.GetAzureServerConfigRequest\x1a\x30.google.cloud.gkemulticloud.v1.AzureServerConfig\"B\x82\xd3\xe4\x93\x02\x35\x12\x33/v1/{name=projects/*/locations/*/azureServerConfig}\xda\x41\x04name\x1aP\xca\x41\x1cgkemulticloud.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xe4\x01\n!com.google.cloud.gkemulticloud.v1B\x11\x41zureServiceProtoP\x01ZGcloud.google.com/go/gkemulticloud/apiv1/gkemulticloudpb;gkemulticloudpb\xaa\x02\x1dGoogle.Cloud.GkeMultiCloud.V1\xca\x02\x1dGoogle\\Cloud\\GkeMultiCloud\\V1\xea\x02 Google::Cloud::GkeMultiCloud::V1b\x06proto3"

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
    ["google.cloud.gkemulticloud.v1.AzureCluster", "google/cloud/gkemulticloud/v1/azure_resources.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module GkeMultiCloud
      module V1
        CreateAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureClusterRequest").msgclass
        UpdateAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.UpdateAzureClusterRequest").msgclass
        GetAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureClusterRequest").msgclass
        ListAzureClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClustersRequest").msgclass
        ListAzureClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClustersResponse").msgclass
        DeleteAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureClusterRequest").msgclass
        CreateAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureNodePoolRequest").msgclass
        UpdateAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.UpdateAzureNodePoolRequest").msgclass
        GetAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureNodePoolRequest").msgclass
        ListAzureNodePoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureNodePoolsRequest").msgclass
        ListAzureNodePoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureNodePoolsResponse").msgclass
        DeleteAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureNodePoolRequest").msgclass
        GetAzureServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureServerConfigRequest").msgclass
        CreateAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureClientRequest").msgclass
        GetAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureClientRequest").msgclass
        ListAzureClientsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClientsRequest").msgclass
        ListAzureClientsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClientsResponse").msgclass
        DeleteAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureClientRequest").msgclass
        GenerateAzureAccessTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenRequest").msgclass
        GenerateAzureAccessTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenResponse").msgclass
      end
    end
  end
end
