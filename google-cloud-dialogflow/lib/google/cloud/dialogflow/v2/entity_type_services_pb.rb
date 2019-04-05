# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/entity_type.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2019 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


require 'grpc'
require 'google/cloud/dialogflow/v2/entity_type_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module EntityTypes
          # Entities are extracted from user input and represent parameters that are
          # meaningful to your application. For example, a date range, a proper name
          # such as a geographic location or landmark, and so on. Entities represent
          # actionable data for your application.
          #
          # When you define an entity, you can also include synonyms that all map to
          # that entity. For example, "soft drink", "soda", "pop", and so on.
          #
          # There are three types of entities:
          #
          # *   **System** - entities that are defined by the Dialogflow API for common
          #     data types such as date, time, currency, and so on. A system entity is
          #     represented by the `EntityType` type.
          #
          # *   **Developer** - entities that are defined by you that represent
          #     actionable data that is meaningful to your application. For example,
          #     you could define a `pizza.sauce` entity for red or white pizza sauce,
          #     a `pizza.cheese` entity for the different types of cheese on a pizza,
          #     a `pizza.topping` entity for different toppings, and so on. A developer
          #     entity is represented by the `EntityType` type.
          #
          # *   **User** - entities that are built for an individual user such as
          #     favorites, preferences, playlists, and so on. A user entity is
          #     represented by the [SessionEntityType][google.cloud.dialogflow.v2.SessionEntityType] type.
          #
          # For more information about entity types, see the
          # [Dialogflow
          # documentation](https://cloud.google.com/dialogflow-enterprise/docs/entities-overview).
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.EntityTypes'

            # Returns the list of all entity types in the specified agent.
            rpc :ListEntityTypes, ListEntityTypesRequest, ListEntityTypesResponse
            # Retrieves the specified entity type.
            rpc :GetEntityType, GetEntityTypeRequest, EntityType
            # Creates an entity type in the specified agent.
            rpc :CreateEntityType, CreateEntityTypeRequest, EntityType
            # Updates the specified entity type.
            rpc :UpdateEntityType, UpdateEntityTypeRequest, EntityType
            # Deletes the specified entity type.
            rpc :DeleteEntityType, DeleteEntityTypeRequest, Google::Protobuf::Empty
            # Updates/Creates multiple entity types in the specified agent.
            #
            # Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse]>
            rpc :BatchUpdateEntityTypes, BatchUpdateEntityTypesRequest, Google::Longrunning::Operation
            # Deletes entity types in the specified agent.
            #
            # Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
            rpc :BatchDeleteEntityTypes, BatchDeleteEntityTypesRequest, Google::Longrunning::Operation
            # Creates multiple new entities in the specified entity type.
            #
            # Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
            rpc :BatchCreateEntities, BatchCreateEntitiesRequest, Google::Longrunning::Operation
            # Updates or creates multiple entities in the specified entity type. This
            # method does not affect entities in the entity type that aren't explicitly
            # specified in the request.
            #
            # Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
            rpc :BatchUpdateEntities, BatchUpdateEntitiesRequest, Google::Longrunning::Operation
            # Deletes entities in the specified entity type.
            #
            # Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
            rpc :BatchDeleteEntities, BatchDeleteEntitiesRequest, Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
