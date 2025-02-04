# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/data_labeling_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/type/money_pb'


descriptor_data = "\n2google/cloud/aiplatform/v1/data_labeling_job.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a*google/cloud/aiplatform/v1/job_state.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\x1a\x17google/type/money.proto\"\xdf\x08\n\x0f\x44\x61taLabelingJob\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12;\n\x08\x64\x61tasets\x18\x03 \x03(\tB)\xe0\x41\x02\xfa\x41#\n!aiplatform.googleapis.com/Dataset\x12\\\n\x11\x61nnotation_labels\x18\x0c \x03(\x0b\x32\x41.google.cloud.aiplatform.v1.DataLabelingJob.AnnotationLabelsEntry\x12\x1a\n\rlabeler_count\x18\x04 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1c\n\x0finstruction_uri\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x1e\n\x11inputs_schema_uri\x18\x06 \x01(\tB\x03\xe0\x41\x02\x12+\n\x06inputs\x18\x07 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x02\x12\x38\n\x05state\x18\x08 \x01(\x0e\x32$.google.cloud.aiplatform.v1.JobStateB\x03\xe0\x41\x03\x12\x1e\n\x11labeling_progress\x18\r \x01(\x05\x42\x03\xe0\x41\x03\x12.\n\rcurrent_spend\x18\x0e \x01(\x0b\x32\x12.google.type.MoneyB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x16 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12G\n\x06labels\x18\x0b \x03(\x0b\x32\x37.google.cloud.aiplatform.v1.DataLabelingJob.LabelsEntry\x12\x18\n\x10specialist_pools\x18\x10 \x03(\t\x12\x43\n\x0f\x65ncryption_spec\x18\x14 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12P\n\x16\x61\x63tive_learning_config\x18\x15 \x01(\x0b\x32\x30.google.cloud.aiplatform.v1.ActiveLearningConfig\x1a\x37\n\x15\x41nnotationLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:|\xea\x41y\n)aiplatform.googleapis.com/DataLabelingJob\x12Lprojects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}\"\xf8\x01\n\x14\x41\x63tiveLearningConfig\x12\x1d\n\x13max_data_item_count\x18\x01 \x01(\x03H\x00\x12\"\n\x18max_data_item_percentage\x18\x02 \x01(\x05H\x00\x12?\n\rsample_config\x18\x03 \x01(\x0b\x32(.google.cloud.aiplatform.v1.SampleConfig\x12\x43\n\x0ftraining_config\x18\x04 \x01(\x0b\x32*.google.cloud.aiplatform.v1.TrainingConfigB\x17\n\x15human_labeling_budget\"\xb8\x02\n\x0cSampleConfig\x12)\n\x1finitial_batch_sample_percentage\x18\x01 \x01(\x05H\x00\x12+\n!following_batch_sample_percentage\x18\x03 \x01(\x05H\x01\x12P\n\x0fsample_strategy\x18\x05 \x01(\x0e\x32\x37.google.cloud.aiplatform.v1.SampleConfig.SampleStrategy\"B\n\x0eSampleStrategy\x12\x1f\n\x1bSAMPLE_STRATEGY_UNSPECIFIED\x10\x00\x12\x0f\n\x0bUNCERTAINTY\x10\x01\x42\x1b\n\x19initial_batch_sample_sizeB\x1d\n\x1b\x66ollowing_batch_sample_size\"6\n\x0eTrainingConfig\x12$\n\x1ctimeout_training_milli_hours\x18\x01 \x01(\x03\x42\xd2\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x14\x44\x61taLabelingJobProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.type.Money", "google/type/money.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
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
    module AIPlatform
      module V1
        DataLabelingJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DataLabelingJob").msgclass
        ActiveLearningConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ActiveLearningConfig").msgclass
        SampleConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SampleConfig").msgclass
        SampleConfig::SampleStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SampleConfig.SampleStrategy").enummodule
        TrainingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.TrainingConfig").msgclass
      end
    end
  end
end
