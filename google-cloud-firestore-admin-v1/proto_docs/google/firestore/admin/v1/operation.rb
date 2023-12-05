# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          # Metadata for {::Google::Longrunning::Operation google.longrunning.Operation}
          # results from
          # {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#create_index FirestoreAdmin.CreateIndex}.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation started.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation completed. Will be unset if operation still in
          #     progress.
          # @!attribute [rw] index
          #   @return [::String]
          #     The index resource that this operation is acting on. For example:
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Firestore::Admin::V1::OperationState]
          #     The state of the operation.
          # @!attribute [rw] progress_documents
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in documents, of this operation.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in bytes, of this operation.
          class IndexOperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for {::Google::Longrunning::Operation google.longrunning.Operation}
          # results from
          # {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#update_field FirestoreAdmin.UpdateField}.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation started.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation completed. Will be unset if operation still in
          #     progress.
          # @!attribute [rw] field
          #   @return [::String]
          #     The field resource that this operation is acting on. For example:
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
          # @!attribute [rw] index_config_deltas
          #   @return [::Array<::Google::Cloud::Firestore::Admin::V1::FieldOperationMetadata::IndexConfigDelta>]
          #     A list of
          #     {::Google::Cloud::Firestore::Admin::V1::FieldOperationMetadata::IndexConfigDelta IndexConfigDelta},
          #     which describe the intent of this operation.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Firestore::Admin::V1::OperationState]
          #     The state of the operation.
          # @!attribute [rw] progress_documents
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in documents, of this operation.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in bytes, of this operation.
          # @!attribute [rw] ttl_config_delta
          #   @return [::Google::Cloud::Firestore::Admin::V1::FieldOperationMetadata::TtlConfigDelta]
          #     Describes the deltas of TTL configuration.
          class FieldOperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Information about an index configuration change.
            # @!attribute [rw] change_type
            #   @return [::Google::Cloud::Firestore::Admin::V1::FieldOperationMetadata::IndexConfigDelta::ChangeType]
            #     Specifies how the index is changing.
            # @!attribute [rw] index
            #   @return [::Google::Cloud::Firestore::Admin::V1::Index]
            #     The index being changed.
            class IndexConfigDelta
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Specifies how the index is changing.
              module ChangeType
                # The type of change is not specified or known.
                CHANGE_TYPE_UNSPECIFIED = 0

                # The single field index is being added.
                ADD = 1

                # The single field index is being removed.
                REMOVE = 2
              end
            end

            # Information about a TTL configuration change.
            # @!attribute [rw] change_type
            #   @return [::Google::Cloud::Firestore::Admin::V1::FieldOperationMetadata::TtlConfigDelta::ChangeType]
            #     Specifies how the TTL configuration is changing.
            class TtlConfigDelta
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Specifies how the TTL config is changing.
              module ChangeType
                # The type of change is not specified or known.
                CHANGE_TYPE_UNSPECIFIED = 0

                # The TTL config is being added.
                ADD = 1

                # The TTL config is being removed.
                REMOVE = 2
              end
            end
          end

          # Metadata for {::Google::Longrunning::Operation google.longrunning.Operation}
          # results from
          # {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#export_documents FirestoreAdmin.ExportDocuments}.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation started.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation completed. Will be unset if operation still in
          #     progress.
          # @!attribute [rw] operation_state
          #   @return [::Google::Cloud::Firestore::Admin::V1::OperationState]
          #     The state of the export operation.
          # @!attribute [rw] progress_documents
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in documents, of this operation.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in bytes, of this operation.
          # @!attribute [rw] collection_ids
          #   @return [::Array<::String>]
          #     Which collection ids are being exported.
          # @!attribute [rw] output_uri_prefix
          #   @return [::String]
          #     Where the documents are being exported to.
          # @!attribute [rw] namespace_ids
          #   @return [::Array<::String>]
          #     Which namespace ids are being exported.
          # @!attribute [rw] snapshot_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The timestamp that corresponds to the version of the database that is being
          #     exported. If unspecified, there are no guarantees about the consistency of
          #     the documents being exported.
          class ExportDocumentsMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for {::Google::Longrunning::Operation google.longrunning.Operation}
          # results from
          # {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#import_documents FirestoreAdmin.ImportDocuments}.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation started.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time this operation completed. Will be unset if operation still in
          #     progress.
          # @!attribute [rw] operation_state
          #   @return [::Google::Cloud::Firestore::Admin::V1::OperationState]
          #     The state of the import operation.
          # @!attribute [rw] progress_documents
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in documents, of this operation.
          # @!attribute [rw] progress_bytes
          #   @return [::Google::Cloud::Firestore::Admin::V1::Progress]
          #     The progress, in bytes, of this operation.
          # @!attribute [rw] collection_ids
          #   @return [::Array<::String>]
          #     Which collection ids are being imported.
          # @!attribute [rw] input_uri_prefix
          #   @return [::String]
          #     The location of the documents being imported.
          # @!attribute [rw] namespace_ids
          #   @return [::Array<::String>]
          #     Which namespace ids are being imported.
          class ImportDocumentsMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Returned in the {::Google::Longrunning::Operation google.longrunning.Operation}
          # response field.
          # @!attribute [rw] output_uri_prefix
          #   @return [::String]
          #     Location of the output files. This can be used to begin an import
          #     into Cloud Firestore (this project or another project) after the operation
          #     completes successfully.
          class ExportDocumentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes the progress of the operation.
          # Unit of work is generic and must be interpreted based on where
          # {::Google::Cloud::Firestore::Admin::V1::Progress Progress} is used.
          # @!attribute [rw] estimated_work
          #   @return [::Integer]
          #     The amount of work estimated.
          # @!attribute [rw] completed_work
          #   @return [::Integer]
          #     The amount of work completed.
          class Progress
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes the state of the operation.
          module OperationState
            # Unspecified.
            OPERATION_STATE_UNSPECIFIED = 0

            # Request is being prepared for processing.
            INITIALIZING = 1

            # Request is actively being processed.
            PROCESSING = 2

            # Request is in the process of being cancelled after user called
            # google.longrunning.Operations.CancelOperation on the operation.
            CANCELLING = 3

            # Request has been processed and is in its finalization stage.
            FINALIZING = 4

            # Request has completed successfully.
            SUCCESSFUL = 5

            # Request has finished being processed, but encountered an error.
            FAILED = 6

            # Request has finished being cancelled after user called
            # google.longrunning.Operations.CancelOperation.
            CANCELLED = 7
          end
        end
      end
    end
  end
end
