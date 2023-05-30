# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/firestore_admin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/firestore/admin/v1/database_pb'
require 'google/firestore/admin/v1/field_pb'
require 'google/firestore/admin/v1/index_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n/google/firestore/admin/v1/firestore_admin.proto\x12\x19google.firestore.admin.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/firestore/admin/v1/database.proto\x1a%google/firestore/admin/v1/field.proto\x1a%google/firestore/admin/v1/index.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"Q\n\x14ListDatabasesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!firestore.googleapis.com/Database\"O\n\x15ListDatabasesResponse\x12\x36\n\tdatabases\x18\x01 \x03(\x0b\x32#.google.firestore.admin.v1.Database\"M\n\x12GetDatabaseRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!firestore.googleapis.com/Database\"\x84\x01\n\x15UpdateDatabaseRequest\x12:\n\x08\x64\x61tabase\x18\x01 \x01(\x0b\x32#.google.firestore.admin.v1.DatabaseB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\x18\n\x16UpdateDatabaseMetadata\"\x8c\x01\n\x12\x43reateIndexRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(firestore.googleapis.com/CollectionGroup\x12\x34\n\x05index\x18\x02 \x01(\x0b\x32 .google.firestore.admin.v1.IndexB\x03\xe0\x41\x02\"\x8d\x01\n\x12ListIndexesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(firestore.googleapis.com/CollectionGroup\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"a\n\x13ListIndexesResponse\x12\x31\n\x07indexes\x18\x01 \x03(\x0b\x32 .google.firestore.admin.v1.Index\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"G\n\x0fGetIndexRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x66irestore.googleapis.com/Index\"J\n\x12\x44\x65leteIndexRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x66irestore.googleapis.com/Index\"{\n\x12UpdateFieldRequest\x12\x34\n\x05\x66ield\x18\x01 \x01(\x0b\x32 .google.firestore.admin.v1.FieldB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"G\n\x0fGetFieldRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x66irestore.googleapis.com/Field\"\x8c\x01\n\x11ListFieldsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(firestore.googleapis.com/CollectionGroup\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"_\n\x12ListFieldsResponse\x12\x30\n\x06\x66ields\x18\x01 \x03(\x0b\x32 .google.firestore.admin.v1.Field\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x84\x01\n\x16\x45xportDocumentsRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!firestore.googleapis.com/Database\x12\x16\n\x0e\x63ollection_ids\x18\x02 \x03(\t\x12\x19\n\x11output_uri_prefix\x18\x03 \x01(\t\"\x83\x01\n\x16ImportDocumentsRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!firestore.googleapis.com/Database\x12\x16\n\x0e\x63ollection_ids\x18\x02 \x03(\t\x12\x18\n\x10input_uri_prefix\x18\x03 \x01(\t2\x92\x13\n\x0e\x46irestoreAdmin\x12\xdb\x01\n\x0b\x43reateIndex\x12-.google.firestore.admin.v1.CreateIndexRequest\x1a\x1d.google.longrunning.Operation\"~\x82\xd3\xe4\x93\x02G\">/v1/{parent=projects/*/databases/*/collectionGroups/*}/indexes:\x05index\xda\x41\x0cparent,index\xca\x41\x1f\n\x05Index\x12\x16IndexOperationMetadata\x12\xbd\x01\n\x0bListIndexes\x12-.google.firestore.admin.v1.ListIndexesRequest\x1a..google.firestore.admin.v1.ListIndexesResponse\"O\x82\xd3\xe4\x93\x02@\x12>/v1/{parent=projects/*/databases/*/collectionGroups/*}/indexes\xda\x41\x06parent\x12\xa7\x01\n\x08GetIndex\x12*.google.firestore.admin.v1.GetIndexRequest\x1a .google.firestore.admin.v1.Index\"M\x82\xd3\xe4\x93\x02@\x12>/v1/{name=projects/*/databases/*/collectionGroups/*/indexes/*}\xda\x41\x04name\x12\xa3\x01\n\x0b\x44\x65leteIndex\x12-.google.firestore.admin.v1.DeleteIndexRequest\x1a\x16.google.protobuf.Empty\"M\x82\xd3\xe4\x93\x02@*>/v1/{name=projects/*/databases/*/collectionGroups/*/indexes/*}\xda\x41\x04name\x12\xa6\x01\n\x08GetField\x12*.google.firestore.admin.v1.GetFieldRequest\x1a .google.firestore.admin.v1.Field\"L\x82\xd3\xe4\x93\x02?\x12=/v1/{name=projects/*/databases/*/collectionGroups/*/fields/*}\xda\x41\x04name\x12\xd9\x01\n\x0bUpdateField\x12-.google.firestore.admin.v1.UpdateFieldRequest\x1a\x1d.google.longrunning.Operation\"|\x82\xd3\xe4\x93\x02L2C/v1/{field.name=projects/*/databases/*/collectionGroups/*/fields/*}:\x05\x66ield\xda\x41\x05\x66ield\xca\x41\x1f\n\x05\x46ield\x12\x16\x46ieldOperationMetadata\x12\xb9\x01\n\nListFields\x12,.google.firestore.admin.v1.ListFieldsRequest\x1a-.google.firestore.admin.v1.ListFieldsResponse\"N\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/databases/*/collectionGroups/*}/fields\xda\x41\x06parent\x12\xdd\x01\n\x0f\x45xportDocuments\x12\x31.google.firestore.admin.v1.ExportDocumentsRequest\x1a\x1d.google.longrunning.Operation\"x\x82\xd3\xe4\x93\x02\x36\"1/v1/{name=projects/*/databases/*}:exportDocuments:\x01*\xda\x41\x04name\xca\x41\x32\n\x17\x45xportDocumentsResponse\x12\x17\x45xportDocumentsMetadata\x12\xdb\x01\n\x0fImportDocuments\x12\x31.google.firestore.admin.v1.ImportDocumentsRequest\x1a\x1d.google.longrunning.Operation\"v\x82\xd3\xe4\x93\x02\x36\"1/v1/{name=projects/*/databases/*}:importDocuments:\x01*\xda\x41\x04name\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17ImportDocumentsMetadata\x12\x93\x01\n\x0bGetDatabase\x12-.google.firestore.admin.v1.GetDatabaseRequest\x1a#.google.firestore.admin.v1.Database\"0\x82\xd3\xe4\x93\x02#\x12!/v1/{name=projects/*/databases/*}\xda\x41\x04name\x12\xa6\x01\n\rListDatabases\x12/.google.firestore.admin.v1.ListDatabasesRequest\x1a\x30.google.firestore.admin.v1.ListDatabasesResponse\"2\x82\xd3\xe4\x93\x02#\x12!/v1/{parent=projects/*}/databases\xda\x41\x06parent\x12\xdb\x01\n\x0eUpdateDatabase\x12\x30.google.firestore.admin.v1.UpdateDatabaseRequest\x1a\x1d.google.longrunning.Operation\"x\x82\xd3\xe4\x93\x02\x36\x32*/v1/{database.name=projects/*/databases/*}:\x08\x64\x61tabase\xda\x41\x14\x64\x61tabase,update_mask\xca\x41\"\n\x08\x44\x61tabase\x12\x16UpdateDatabaseMetadata\x1av\xca\x41\x18\x66irestore.googleapis.com\xd2\x41Xhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/datastoreB\xa5\x03\n\x1d\x63om.google.firestore.admin.v1B\x13\x46irestoreAdminProtoP\x01Z9cloud.google.com/go/firestore/apiv1/admin/adminpb;adminpb\xa2\x02\x04GCFS\xaa\x02\x1fGoogle.Cloud.Firestore.Admin.V1\xca\x02\x1fGoogle\\Cloud\\Firestore\\Admin\\V1\xea\x02#Google::Cloud::Firestore::Admin::V1\xea\x41L\n!firestore.googleapis.com/Location\x12\'projects/{project}/locations/{location}\xea\x41q\n(firestore.googleapis.com/CollectionGroup\x12\x45projects/{project}/databases/{database}/collectionGroups/{collection}b\x06proto3"

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
    ["google.firestore.admin.v1.Database", "google/firestore/admin/v1/database.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.firestore.admin.v1.Index", "google/firestore/admin/v1/index.proto"],
    ["google.firestore.admin.v1.Field", "google/firestore/admin/v1/field.proto"],
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
      module Admin
        module V1
          ListDatabasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListDatabasesRequest").msgclass
          ListDatabasesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListDatabasesResponse").msgclass
          GetDatabaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetDatabaseRequest").msgclass
          UpdateDatabaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateDatabaseRequest").msgclass
          UpdateDatabaseMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateDatabaseMetadata").msgclass
          CreateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.CreateIndexRequest").msgclass
          ListIndexesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListIndexesRequest").msgclass
          ListIndexesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListIndexesResponse").msgclass
          GetIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetIndexRequest").msgclass
          DeleteIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.DeleteIndexRequest").msgclass
          UpdateFieldRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateFieldRequest").msgclass
          GetFieldRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetFieldRequest").msgclass
          ListFieldsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListFieldsRequest").msgclass
          ListFieldsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListFieldsResponse").msgclass
          ExportDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ExportDocumentsRequest").msgclass
          ImportDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ImportDocumentsRequest").msgclass
        end
      end
    end
  end
end
