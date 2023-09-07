# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module DiscoveryEngine
      module V1beta
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Client#converse_conversation ConversationalSearchService.ConverseConversation}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Conversation to get. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`.
        #     Use
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}/conversations/-`
        #     to activate auto session mode, which automatically creates a new
        #     conversation inside a ConverseConversation session.
        # @!attribute [rw] query
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TextInput]
        #     Required. Current user input.
        # @!attribute [rw] serving_config
        #   @return [::String]
        #     The resource name of the Serving Config to use. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}/servingConfigs/{serving_config_id}`
        #     If this is not set, the default serving config will be used.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Conversation]
        #     The conversation to be used by auto session only. The name field will be
        #     ignored as we automatically assign new name for the conversation in auto
        #     session.
        # @!attribute [rw] safe_search
        #   @return [::Boolean]
        #     Whether to turn on safe search.
        # @!attribute [rw] user_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The user labels applied to a resource must meet the following requirements:
        #
        #     * Each resource can have multiple labels, up to a maximum of 64.
        #     * Each label must be a key-value pair.
        #     * Keys have a minimum length of 1 character and a maximum length of 63
        #       characters and cannot be empty. Values can be empty and have a maximum
        #       length of 63 characters.
        #     * Keys and values can contain only lowercase letters, numeric characters,
        #       underscores, and dashes. All characters must use UTF-8 encoding, and
        #       international characters are allowed.
        #     * The key portion of a label must be unique. However, you can use the same
        #       key with multiple resources.
        #     * Keys must start with a lowercase letter or international character.
        #
        #     See [Google Cloud
        #     Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
        #     for more details.
        # @!attribute [rw] summary_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ContentSearchSpec::SummarySpec]
        #     A specification for configuring the summary returned in the response.
        class ConverseConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Client#converse_conversation ConversationalSearchService.ConverseConversation}
        # method.
        # @!attribute [rw] reply
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Reply]
        #     Answer to the current query.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Conversation]
        #     Updated conversation including the answer.
        # @!attribute [rw] related_questions
        #   @return [::Array<::String>]
        #     Suggested related questions.
        # @!attribute [rw] search_results
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse::SearchResult>]
        #     Search Results.
        class ConverseConversationResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for CreateConversation method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Full resource name of parent data store. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}`
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Conversation]
        #     Required. The conversation to create.
        class CreateConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for UpdateConversation method.
        # @!attribute [rw] conversation
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Conversation]
        #     Required. The Conversation to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the provided
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Conversation Conversation} to update.
        #     The following are NOT supported:
        #
        #     * [conversation.name][]
        #
        #     If not set or empty, all supported fields are updated.
        class UpdateConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for DeleteConversation method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Conversation to delete. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
        class DeleteConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetConversation method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Conversation to get. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
        class GetConversationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListConversations method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The data store resource name. Format:
        #     `projects/{project_number}/locations/{location_id}/collections/{collection}/dataStores/{data_store_id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of results to return. If unspecified, defaults
        #     to 50. Max allowed value is 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListConversations` call.
        #     Provide this to retrieve the subsequent page.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter to apply on the list results. The supported features are:
        #     user_pseudo_id, state.
        #
        #     Example:
        #     "user_pseudo_id = some_id"
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        #     Supported fields:
        #       * `update_time`
        #       * `create_time`
        #       * `conversation_name`
        #
        #     Example:
        #     "update_time desc"
        #     "create_time"
        class ListConversationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListConversations method.
        # @!attribute [rw] conversations
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Conversation>]
        #     All the Conversations for a given data store.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pagination token, if not returned indicates the last page.
        class ListConversationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
