# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/product_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/cloud/retail/v2/import_config_pb'
require 'google/cloud/retail/v2/product_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/retail/v2/product_service.proto\x12\x16google.cloud.retail.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/retail/v2/common.proto\x1a*google/cloud/retail/v2/import_config.proto\x1a$google/cloud/retail/v2/product.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9c\x01\n\x14\x43reateProductRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cretail.googleapis.com/Branch\x12\x35\n\x07product\x18\x02 \x01(\x0b\x32\x1f.google.cloud.retail.v2.ProductB\x03\xe0\x41\x02\x12\x17\n\nproduct_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"H\n\x11GetProductRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\"\x95\x01\n\x14UpdateProductRequest\x12\x35\n\x07product\x18\x01 \x01(\x0b\x32\x1f.google.cloud.retail.v2.ProductB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\"K\n\x14\x44\x65leteProductRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\"\xb1\x01\n\x13ListProductsRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cretail.googleapis.com/Branch\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12-\n\tread_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"b\n\x14ListProductsResponse\x12\x31\n\x08products\x18\x01 \x03(\x0b\x32\x1f.google.cloud.retail.v2.Product\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xc1\x01\n\x13SetInventoryRequest\x12\x37\n\tinventory\x18\x01 \x01(\x0b\x32\x1f.google.cloud.retail.v2.ProductB\x03\xe0\x41\x02\x12,\n\x08set_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12,\n\x08set_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rallow_missing\x18\x04 \x01(\x08\"\x16\n\x14SetInventoryMetadata\"\x16\n\x14SetInventoryResponse\"\xc5\x01\n\x1b\x41\x64\x64\x46ulfillmentPlacesRequest\x12\x36\n\x07product\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\x12\x11\n\x04type\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tplace_ids\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12,\n\x08\x61\x64\x64_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rallow_missing\x18\x05 \x01(\x08\"\x1e\n\x1c\x41\x64\x64\x46ulfillmentPlacesMetadata\"\x1e\n\x1c\x41\x64\x64\x46ulfillmentPlacesResponse\"\x8f\x02\n\x1a\x41\x64\x64LocalInventoriesRequest\x12\x36\n\x07product\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\x12\x46\n\x11local_inventories\x18\x02 \x03(\x0b\x32&.google.cloud.retail.v2.LocalInventoryB\x03\xe0\x41\x02\x12,\n\x08\x61\x64\x64_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12,\n\x08\x61\x64\x64_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rallow_missing\x18\x06 \x01(\x08\"\x1d\n\x1b\x41\x64\x64LocalInventoriesMetadata\"\x1d\n\x1b\x41\x64\x64LocalInventoriesResponse\"\xb7\x01\n\x1dRemoveLocalInventoriesRequest\x12\x36\n\x07product\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\x12\x16\n\tplace_ids\x18\x02 \x03(\tB\x03\xe0\x41\x02\x12/\n\x0bremove_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\" \n\x1eRemoveLocalInventoriesMetadata\" \n\x1eRemoveLocalInventoriesResponse\"\xcb\x01\n\x1eRemoveFulfillmentPlacesRequest\x12\x36\n\x07product\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dretail.googleapis.com/Product\x12\x11\n\x04type\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tplace_ids\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12/\n\x0bremove_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rallow_missing\x18\x05 \x01(\x08\"!\n\x1fRemoveFulfillmentPlacesMetadata\"!\n\x1fRemoveFulfillmentPlacesResponse2\xae\x17\n\x0eProductService\x12\xcf\x01\n\rCreateProduct\x12,.google.cloud.retail.v2.CreateProductRequest\x1a\x1f.google.cloud.retail.v2.Product\"o\x82\xd3\xe4\x93\x02M\"B/v2/{parent=projects/*/locations/*/catalogs/*/branches/*}/products:\x07product\xda\x41\x19parent,product,product_id\x12\xac\x01\n\nGetProduct\x12).google.cloud.retail.v2.GetProductRequest\x1a\x1f.google.cloud.retail.v2.Product\"R\x82\xd3\xe4\x93\x02\x45\x12\x43/v2/{name=projects/*/locations/*/catalogs/*/branches/*/products/**}\xda\x41\x04name\x12\xbe\x01\n\x0cListProducts\x12+.google.cloud.retail.v2.ListProductsRequest\x1a,.google.cloud.retail.v2.ListProductsResponse\"S\x82\xd3\xe4\x93\x02\x44\x12\x42/v2/{parent=projects/*/locations/*/catalogs/*/branches/*}/products\xda\x41\x06parent\x12\xd2\x01\n\rUpdateProduct\x12,.google.cloud.retail.v2.UpdateProductRequest\x1a\x1f.google.cloud.retail.v2.Product\"r\x82\xd3\xe4\x93\x02V2K/v2/{product.name=projects/*/locations/*/catalogs/*/branches/*/products/**}:\x07product\xda\x41\x13product,update_mask\x12\xa9\x01\n\rDeleteProduct\x12,.google.cloud.retail.v2.DeleteProductRequest\x1a\x16.google.protobuf.Empty\"R\x82\xd3\xe4\x93\x02\x45*C/v2/{name=projects/*/locations/*/catalogs/*/branches/*/products/**}\xda\x41\x04name\x12\x8e\x02\n\x0eImportProducts\x12-.google.cloud.retail.v2.ImportProductsRequest\x1a\x1d.google.longrunning.Operation\"\xad\x01\x82\xd3\xe4\x93\x02N\"I/v2/{parent=projects/*/locations/*/catalogs/*/branches/*}/products:import:\x01*\xca\x41V\n-google.cloud.retail.v2.ImportProductsResponse\x12%google.cloud.retail.v2.ImportMetadata\x12\xb4\x02\n\x0cSetInventory\x12+.google.cloud.retail.v2.SetInventoryRequest\x1a\x1d.google.longrunning.Operation\"\xd7\x01\x82\xd3\xe4\x93\x02_\"Z/v2/{inventory.name=projects/*/locations/*/catalogs/*/branches/*/products/**}:setInventory:\x01*\xda\x41\x12inventory,set_mask\xca\x41Z\n+google.cloud.retail.v2.SetInventoryResponse\x12+google.cloud.retail.v2.SetInventoryMetadata\x12\xca\x02\n\x14\x41\x64\x64\x46ulfillmentPlaces\x12\x33.google.cloud.retail.v2.AddFulfillmentPlacesRequest\x1a\x1d.google.longrunning.Operation\"\xdd\x01\x82\xd3\xe4\x93\x02`\"[/v2/{product=projects/*/locations/*/catalogs/*/branches/*/products/**}:addFulfillmentPlaces:\x01*\xda\x41\x07product\xca\x41j\n3google.cloud.retail.v2.AddFulfillmentPlacesResponse\x12\x33google.cloud.retail.v2.AddFulfillmentPlacesMetadata\x12\xd9\x02\n\x17RemoveFulfillmentPlaces\x12\x36.google.cloud.retail.v2.RemoveFulfillmentPlacesRequest\x1a\x1d.google.longrunning.Operation\"\xe6\x01\x82\xd3\xe4\x93\x02\x63\"^/v2/{product=projects/*/locations/*/catalogs/*/branches/*/products/**}:removeFulfillmentPlaces:\x01*\xda\x41\x07product\xca\x41p\n6google.cloud.retail.v2.RemoveFulfillmentPlacesResponse\x12\x36google.cloud.retail.v2.RemoveFulfillmentPlacesMetadata\x12\xc5\x02\n\x13\x41\x64\x64LocalInventories\x12\x32.google.cloud.retail.v2.AddLocalInventoriesRequest\x1a\x1d.google.longrunning.Operation\"\xda\x01\x82\xd3\xe4\x93\x02_\"Z/v2/{product=projects/*/locations/*/catalogs/*/branches/*/products/**}:addLocalInventories:\x01*\xda\x41\x07product\xca\x41h\n2google.cloud.retail.v2.AddLocalInventoriesResponse\x12\x32google.cloud.retail.v2.AddLocalInventoriesMetadata\x12\xd4\x02\n\x16RemoveLocalInventories\x12\x35.google.cloud.retail.v2.RemoveLocalInventoriesRequest\x1a\x1d.google.longrunning.Operation\"\xe3\x01\x82\xd3\xe4\x93\x02\x62\"]/v2/{product=projects/*/locations/*/catalogs/*/branches/*/products/**}:removeLocalInventories:\x01*\xda\x41\x07product\xca\x41n\n5google.cloud.retail.v2.RemoveLocalInventoriesResponse\x12\x35google.cloud.retail.v2.RemoveLocalInventoriesMetadata\x1aI\xca\x41\x15retail.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xbe\x01\n\x1a\x63om.google.cloud.retail.v2B\x13ProductServiceProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    ["google.cloud.retail.v2.Product", "google/cloud/retail/v2/product.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.retail.v2.LocalInventory", "google/cloud/retail/v2/common.proto"],
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
    module Retail
      module V2
        CreateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CreateProductRequest").msgclass
        GetProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.GetProductRequest").msgclass
        UpdateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.UpdateProductRequest").msgclass
        DeleteProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.DeleteProductRequest").msgclass
        ListProductsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListProductsRequest").msgclass
        ListProductsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListProductsResponse").msgclass
        SetInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryRequest").msgclass
        SetInventoryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryMetadata").msgclass
        SetInventoryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryResponse").msgclass
        AddFulfillmentPlacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesRequest").msgclass
        AddFulfillmentPlacesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesMetadata").msgclass
        AddFulfillmentPlacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesResponse").msgclass
        AddLocalInventoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddLocalInventoriesRequest").msgclass
        AddLocalInventoriesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddLocalInventoriesMetadata").msgclass
        AddLocalInventoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddLocalInventoriesResponse").msgclass
        RemoveLocalInventoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveLocalInventoriesRequest").msgclass
        RemoveLocalInventoriesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveLocalInventoriesMetadata").msgclass
        RemoveLocalInventoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveLocalInventoriesResponse").msgclass
        RemoveFulfillmentPlacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesRequest").msgclass
        RemoveFulfillmentPlacesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesMetadata").msgclass
        RemoveFulfillmentPlacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesResponse").msgclass
      end
    end
  end
end
