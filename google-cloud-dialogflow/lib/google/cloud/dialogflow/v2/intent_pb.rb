# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/intent.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/context_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.dialogflow.v2.Intent" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :webhook_state, :enum, 6, "google.cloud.dialogflow.v2.Intent.WebhookState"
    optional :priority, :int32, 3
    optional :is_fallback, :bool, 4
    optional :ml_disabled, :bool, 19
    repeated :input_context_names, :string, 7
    repeated :events, :string, 8
    repeated :training_phrases, :message, 9, "google.cloud.dialogflow.v2.Intent.TrainingPhrase"
    optional :action, :string, 10
    repeated :output_contexts, :message, 11, "google.cloud.dialogflow.v2.Context"
    optional :reset_contexts, :bool, 12
    repeated :parameters, :message, 13, "google.cloud.dialogflow.v2.Intent.Parameter"
    repeated :messages, :message, 14, "google.cloud.dialogflow.v2.Intent.Message"
    repeated :default_response_platforms, :enum, 15, "google.cloud.dialogflow.v2.Intent.Message.Platform"
    optional :root_followup_intent_name, :string, 16
    optional :parent_followup_intent_name, :string, 17
    repeated :followup_intent_info, :message, 18, "google.cloud.dialogflow.v2.Intent.FollowupIntentInfo"
  end
  add_message "google.cloud.dialogflow.v2.Intent.TrainingPhrase" do
    optional :name, :string, 1
    optional :type, :enum, 2, "google.cloud.dialogflow.v2.Intent.TrainingPhrase.Type"
    repeated :parts, :message, 3, "google.cloud.dialogflow.v2.Intent.TrainingPhrase.Part"
    optional :times_added_count, :int32, 4
  end
  add_message "google.cloud.dialogflow.v2.Intent.TrainingPhrase.Part" do
    optional :text, :string, 1
    optional :entity_type, :string, 2
    optional :alias, :string, 3
    optional :user_defined, :bool, 4
  end
  add_enum "google.cloud.dialogflow.v2.Intent.TrainingPhrase.Type" do
    value :TYPE_UNSPECIFIED, 0
    value :EXAMPLE, 1
    value :TEMPLATE, 2
  end
  add_message "google.cloud.dialogflow.v2.Intent.Parameter" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :value, :string, 3
    optional :default_value, :string, 4
    optional :entity_type_display_name, :string, 5
    optional :mandatory, :bool, 6
    repeated :prompts, :string, 7
    optional :is_list, :bool, 8
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message" do
    optional :platform, :enum, 6, "google.cloud.dialogflow.v2.Intent.Message.Platform"
    oneof :message do
      optional :text, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.Text"
      optional :image, :message, 2, "google.cloud.dialogflow.v2.Intent.Message.Image"
      optional :quick_replies, :message, 3, "google.cloud.dialogflow.v2.Intent.Message.QuickReplies"
      optional :card, :message, 4, "google.cloud.dialogflow.v2.Intent.Message.Card"
      optional :payload, :message, 5, "google.protobuf.Struct"
      optional :simple_responses, :message, 7, "google.cloud.dialogflow.v2.Intent.Message.SimpleResponses"
      optional :basic_card, :message, 8, "google.cloud.dialogflow.v2.Intent.Message.BasicCard"
      optional :suggestions, :message, 9, "google.cloud.dialogflow.v2.Intent.Message.Suggestions"
      optional :link_out_suggestion, :message, 10, "google.cloud.dialogflow.v2.Intent.Message.LinkOutSuggestion"
      optional :list_select, :message, 11, "google.cloud.dialogflow.v2.Intent.Message.ListSelect"
      optional :carousel_select, :message, 12, "google.cloud.dialogflow.v2.Intent.Message.CarouselSelect"
    end
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Text" do
    repeated :text, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Image" do
    optional :image_uri, :string, 1
    optional :accessibility_text, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.QuickReplies" do
    optional :title, :string, 1
    repeated :quick_replies, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Card" do
    optional :title, :string, 1
    optional :subtitle, :string, 2
    optional :image_uri, :string, 3
    repeated :buttons, :message, 4, "google.cloud.dialogflow.v2.Intent.Message.Card.Button"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Card.Button" do
    optional :text, :string, 1
    optional :postback, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.SimpleResponse" do
    optional :text_to_speech, :string, 1
    optional :ssml, :string, 2
    optional :display_text, :string, 3
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.SimpleResponses" do
    repeated :simple_responses, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.SimpleResponse"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.BasicCard" do
    optional :title, :string, 1
    optional :subtitle, :string, 2
    optional :formatted_text, :string, 3
    optional :image, :message, 4, "google.cloud.dialogflow.v2.Intent.Message.Image"
    repeated :buttons, :message, 5, "google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button" do
    optional :title, :string, 1
    optional :open_uri_action, :message, 2, "google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button.OpenUriAction"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button.OpenUriAction" do
    optional :uri, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Suggestion" do
    optional :title, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.Suggestions" do
    repeated :suggestions, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.Suggestion"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.LinkOutSuggestion" do
    optional :destination_name, :string, 1
    optional :uri, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.ListSelect" do
    optional :title, :string, 1
    repeated :items, :message, 2, "google.cloud.dialogflow.v2.Intent.Message.ListSelect.Item"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.ListSelect.Item" do
    optional :info, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.SelectItemInfo"
    optional :title, :string, 2
    optional :description, :string, 3
    optional :image, :message, 4, "google.cloud.dialogflow.v2.Intent.Message.Image"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.CarouselSelect" do
    repeated :items, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.CarouselSelect.Item"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.CarouselSelect.Item" do
    optional :info, :message, 1, "google.cloud.dialogflow.v2.Intent.Message.SelectItemInfo"
    optional :title, :string, 2
    optional :description, :string, 3
    optional :image, :message, 4, "google.cloud.dialogflow.v2.Intent.Message.Image"
  end
  add_message "google.cloud.dialogflow.v2.Intent.Message.SelectItemInfo" do
    optional :key, :string, 1
    repeated :synonyms, :string, 2
  end
  add_enum "google.cloud.dialogflow.v2.Intent.Message.Platform" do
    value :PLATFORM_UNSPECIFIED, 0
    value :FACEBOOK, 1
    value :SLACK, 2
    value :TELEGRAM, 3
    value :KIK, 4
    value :SKYPE, 5
    value :LINE, 6
    value :VIBER, 7
    value :ACTIONS_ON_GOOGLE, 8
  end
  add_message "google.cloud.dialogflow.v2.Intent.FollowupIntentInfo" do
    optional :followup_intent_name, :string, 1
    optional :parent_followup_intent_name, :string, 2
  end
  add_enum "google.cloud.dialogflow.v2.Intent.WebhookState" do
    value :WEBHOOK_STATE_UNSPECIFIED, 0
    value :WEBHOOK_STATE_ENABLED, 1
    value :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING, 2
  end
  add_message "google.cloud.dialogflow.v2.ListIntentsRequest" do
    optional :parent, :string, 1
    optional :language_code, :string, 2
    optional :intent_view, :enum, 3, "google.cloud.dialogflow.v2.IntentView"
    optional :page_size, :int32, 4
    optional :page_token, :string, 5
  end
  add_message "google.cloud.dialogflow.v2.ListIntentsResponse" do
    repeated :intents, :message, 1, "google.cloud.dialogflow.v2.Intent"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.dialogflow.v2.GetIntentRequest" do
    optional :name, :string, 1
    optional :language_code, :string, 2
    optional :intent_view, :enum, 3, "google.cloud.dialogflow.v2.IntentView"
  end
  add_message "google.cloud.dialogflow.v2.CreateIntentRequest" do
    optional :parent, :string, 1
    optional :intent, :message, 2, "google.cloud.dialogflow.v2.Intent"
    optional :language_code, :string, 3
    optional :intent_view, :enum, 4, "google.cloud.dialogflow.v2.IntentView"
  end
  add_message "google.cloud.dialogflow.v2.UpdateIntentRequest" do
    optional :intent, :message, 1, "google.cloud.dialogflow.v2.Intent"
    optional :language_code, :string, 2
    optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    optional :intent_view, :enum, 4, "google.cloud.dialogflow.v2.IntentView"
  end
  add_message "google.cloud.dialogflow.v2.DeleteIntentRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.dialogflow.v2.BatchUpdateIntentsRequest" do
    optional :parent, :string, 1
    optional :language_code, :string, 4
    optional :update_mask, :message, 5, "google.protobuf.FieldMask"
    optional :intent_view, :enum, 6, "google.cloud.dialogflow.v2.IntentView"
    oneof :intent_batch do
      optional :intent_batch_uri, :string, 2
      optional :intent_batch_inline, :message, 3, "google.cloud.dialogflow.v2.IntentBatch"
    end
  end
  add_message "google.cloud.dialogflow.v2.BatchUpdateIntentsResponse" do
    repeated :intents, :message, 1, "google.cloud.dialogflow.v2.Intent"
  end
  add_message "google.cloud.dialogflow.v2.BatchDeleteIntentsRequest" do
    optional :parent, :string, 1
    repeated :intents, :message, 2, "google.cloud.dialogflow.v2.Intent"
  end
  add_message "google.cloud.dialogflow.v2.IntentBatch" do
    repeated :intents, :message, 1, "google.cloud.dialogflow.v2.Intent"
  end
  add_enum "google.cloud.dialogflow.v2.IntentView" do
    value :INTENT_VIEW_UNSPECIFIED, 0
    value :INTENT_VIEW_FULL, 1
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        Intent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent").msgclass
        Intent::TrainingPhrase = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.TrainingPhrase").msgclass
        Intent::TrainingPhrase::Part = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.TrainingPhrase.Part").msgclass
        Intent::TrainingPhrase::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.TrainingPhrase.Type").enummodule
        Intent::Parameter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Parameter").msgclass
        Intent::Message = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message").msgclass
        Intent::Message::Text = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Text").msgclass
        Intent::Message::Image = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Image").msgclass
        Intent::Message::QuickReplies = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.QuickReplies").msgclass
        Intent::Message::Card = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Card").msgclass
        Intent::Message::Card::Button = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Card.Button").msgclass
        Intent::Message::SimpleResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.SimpleResponse").msgclass
        Intent::Message::SimpleResponses = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.SimpleResponses").msgclass
        Intent::Message::BasicCard = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.BasicCard").msgclass
        Intent::Message::BasicCard::Button = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button").msgclass
        Intent::Message::BasicCard::Button::OpenUriAction = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.BasicCard.Button.OpenUriAction").msgclass
        Intent::Message::Suggestion = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Suggestion").msgclass
        Intent::Message::Suggestions = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Suggestions").msgclass
        Intent::Message::LinkOutSuggestion = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.LinkOutSuggestion").msgclass
        Intent::Message::ListSelect = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.ListSelect").msgclass
        Intent::Message::ListSelect::Item = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.ListSelect.Item").msgclass
        Intent::Message::CarouselSelect = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.CarouselSelect").msgclass
        Intent::Message::CarouselSelect::Item = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.CarouselSelect.Item").msgclass
        Intent::Message::SelectItemInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.SelectItemInfo").msgclass
        Intent::Message::Platform = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.Message.Platform").enummodule
        Intent::FollowupIntentInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.FollowupIntentInfo").msgclass
        Intent::WebhookState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Intent.WebhookState").enummodule
        ListIntentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListIntentsRequest").msgclass
        ListIntentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListIntentsResponse").msgclass
        GetIntentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetIntentRequest").msgclass
        CreateIntentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateIntentRequest").msgclass
        UpdateIntentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateIntentRequest").msgclass
        DeleteIntentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteIntentRequest").msgclass
        BatchUpdateIntentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchUpdateIntentsRequest").msgclass
        BatchUpdateIntentsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchUpdateIntentsResponse").msgclass
        BatchDeleteIntentsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.BatchDeleteIntentsRequest").msgclass
        IntentBatch = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.IntentBatch").msgclass
        IntentView = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.IntentView").enummodule
      end
    end
  end
end
