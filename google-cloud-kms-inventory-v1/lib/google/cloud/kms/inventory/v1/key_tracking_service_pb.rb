# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/inventory/v1/key_tracking_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n8google/cloud/kms/inventory/v1/key_tracking_service.proto\x12\x1dgoogle.cloud.kms.inventory.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"r\n#GetProtectedResourcesSummaryRequest\x12K\n\x04name\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\n5kmsinventory.googleapis.com/ProtectedResourcesSummary\"\xe0\x06\n\x19ProtectedResourcesSummary\x12\x0c\n\x04name\x18\x05 \x01(\t\x12\x16\n\x0eresource_count\x18\x01 \x01(\x03\x12\x15\n\rproject_count\x18\x02 \x01(\x05\x12\x63\n\x0eresource_types\x18\x03 \x03(\x0b\x32K.google.cloud.kms.inventory.v1.ProtectedResourcesSummary.ResourceTypesEntry\x12\x63\n\x0e\x63loud_products\x18\x06 \x03(\x0b\x32K.google.cloud.kms.inventory.v1.ProtectedResourcesSummary.CloudProductsEntry\x12Z\n\tlocations\x18\x04 \x03(\x0b\x32G.google.cloud.kms.inventory.v1.ProtectedResourcesSummary.LocationsEntry\x1a\x34\n\x12ResourceTypesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01\x1a\x34\n\x12\x43loudProductsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01\x1a\x30\n\x0eLocationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x03:\x02\x38\x01:\xc1\x02\xea\x41\xbd\x02\n5kmsinventory.googleapis.com/ProtectedResourcesSummary\x12mprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/protectedResourcesSummary\x12\x94\x01projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}/protectedResourcesSummary\"\xb0\x01\n\x1fSearchProtectedResourcesRequest\x12G\n\x05scope\x18\x02 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0cloudresourcemanager.googleapis.com/Organization\x12\x1d\n\ncrypto_key\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\n\x01*\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"\x8a\x01\n SearchProtectedResourcesResponse\x12M\n\x13protected_resources\x18\x01 \x03(\x0b\x32\x30.google.cloud.kms.inventory.v1.ProtectedResource\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xf9\x03\n\x11ProtectedResource\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07project\x18\x02 \x01(\t\x12\x12\n\nproject_id\x18\t \x01(\t\x12\x15\n\rcloud_product\x18\x08 \x01(\t\x12\x15\n\rresource_type\x18\x03 \x01(\t\x12\x10\n\x08location\x18\x04 \x01(\t\x12L\n\x06labels\x18\x05 \x03(\x0b\x32<.google.cloud.kms.inventory.v1.ProtectedResource.LabelsEntry\x12I\n\x12\x63rypto_key_version\x18\x06 \x01(\tB-\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12J\n\x13\x63rypto_key_versions\x18\n \x03(\tB-\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\'\xea\x41$\n\x1f\x63loudasset.googleapis.com/Asset\x12\x01*2\xda\x04\n\x12KeyTrackingService\x12\x81\x02\n\x1cGetProtectedResourcesSummary\x12\x42.google.cloud.kms.inventory.v1.GetProtectedResourcesSummaryRequest\x1a\x38.google.cloud.kms.inventory.v1.ProtectedResourcesSummary\"c\x82\xd3\xe4\x93\x02V\x12T/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/**}/protectedResourcesSummary\xda\x41\x04name\x12\xee\x01\n\x18SearchProtectedResources\x12>.google.cloud.kms.inventory.v1.SearchProtectedResourcesRequest\x1a?.google.cloud.kms.inventory.v1.SearchProtectedResourcesResponse\"Q\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{scope=organizations/*}/protectedResources:search\xda\x41\x11scope, crypto_key\x1aO\xca\x41\x1bkmsinventory.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc2\x01\n!com.google.cloud.kms.inventory.v1B\x17KeyTrackingServiceProtoP\x01Z?cloud.google.com/go/kms/inventory/apiv1/inventorypb;inventorypb\xf8\x01\x01\xaa\x02\x1dGoogle.Cloud.Kms.Inventory.V1\xca\x02\x1dGoogle\\Cloud\\Kms\\Inventory\\V1b\x06proto3"

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
    module Kms
      module Inventory
        module V1
          GetProtectedResourcesSummaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.GetProtectedResourcesSummaryRequest").msgclass
          ProtectedResourcesSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ProtectedResourcesSummary").msgclass
          SearchProtectedResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.SearchProtectedResourcesRequest").msgclass
          SearchProtectedResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.SearchProtectedResourcesResponse").msgclass
          ProtectedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ProtectedResource").msgclass
        end
      end
    end
  end
end
