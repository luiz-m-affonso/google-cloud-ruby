# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/logging/v2/logging.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/resource_pb'
require 'google/logging/v2/log_entry_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n\x1fgoogle/logging/v2/logging.proto\x12\x11google.logging.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a#google/api/monitored_resource.proto\x1a\x19google/api/resource.proto\x1a!google/logging/v2/log_entry.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x17google/rpc/status.proto\"H\n\x10\x44\x65leteLogRequest\x12\x34\n\x08log_name\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\n\x1alogging.googleapis.com/Log\"\xe6\x02\n\x16WriteLogEntriesRequest\x12\x34\n\x08log_name\x18\x01 \x01(\tB\"\xe0\x41\x01\xfa\x41\x1c\n\x1alogging.googleapis.com/Log\x12\x34\n\x08resource\x18\x02 \x01(\x0b\x32\x1d.google.api.MonitoredResourceB\x03\xe0\x41\x01\x12J\n\x06labels\x18\x03 \x03(\x0b\x32\x35.google.logging.v2.WriteLogEntriesRequest.LabelsEntryB\x03\xe0\x41\x01\x12\x31\n\x07\x65ntries\x18\x04 \x03(\x0b\x32\x1b.google.logging.v2.LogEntryB\x03\xe0\x41\x02\x12\x1c\n\x0fpartial_success\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\x12\x14\n\x07\x64ry_run\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x19\n\x17WriteLogEntriesResponse\"\xc8\x01\n\x1cWriteLogEntriesPartialErrors\x12]\n\x10log_entry_errors\x18\x01 \x03(\x0b\x32\x43.google.logging.v2.WriteLogEntriesPartialErrors.LogEntryErrorsEntry\x1aI\n\x13LogEntryErrorsEntry\x12\x0b\n\x03key\x18\x01 \x01(\x05\x12!\n\x05value\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status:\x02\x38\x01\"\xb0\x01\n\x15ListLogEntriesRequest\x12:\n\x0eresource_names\x18\x08 \x03(\tB\"\xe0\x41\x02\xfa\x41\x1c\x12\x1alogging.googleapis.com/Log\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x05 \x01(\tB\x03\xe0\x41\x01\"_\n\x16ListLogEntriesResponse\x12,\n\x07\x65ntries\x18\x01 \x03(\x0b\x32\x1b.google.logging.v2.LogEntry\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Z\n\'ListMonitoredResourceDescriptorsRequest\x12\x16\n\tpage_size\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\x8a\x01\n(ListMonitoredResourceDescriptorsResponse\x12\x45\n\x14resource_descriptors\x18\x01 \x03(\x0b\x32\'.google.api.MonitoredResourceDescriptor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb2\x01\n\x0fListLogsRequest\x12\x32\n\x06parent\x18\x01 \x01(\tB\"\xe0\x41\x02\xfa\x41\x1c\x12\x1alogging.googleapis.com/Log\x12:\n\x0eresource_names\x18\x08 \x03(\tB\"\xe0\x41\x01\xfa\x41\x1c\x12\x1alogging.googleapis.com/Log\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\">\n\x10ListLogsResponse\x12\x11\n\tlog_names\x18\x03 \x03(\t\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x80\x01\n\x15TailLogEntriesRequest\x12\x1b\n\x0eresource_names\x18\x01 \x03(\tB\x03\xe0\x41\x02\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x35\n\rbuffer_window\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\"\xdf\x02\n\x16TailLogEntriesResponse\x12,\n\x07\x65ntries\x18\x01 \x03(\x0b\x32\x1b.google.logging.v2.LogEntry\x12S\n\x10suppression_info\x18\x02 \x03(\x0b\x32\x39.google.logging.v2.TailLogEntriesResponse.SuppressionInfo\x1a\xc1\x01\n\x0fSuppressionInfo\x12P\n\x06reason\x18\x01 \x01(\x0e\x32@.google.logging.v2.TailLogEntriesResponse.SuppressionInfo.Reason\x12\x18\n\x10suppressed_count\x18\x02 \x01(\x05\"B\n\x06Reason\x12\x16\n\x12REASON_UNSPECIFIED\x10\x00\x12\x0e\n\nRATE_LIMIT\x10\x01\x12\x10\n\x0cNOT_CONSUMED\x10\x02\x32\xe9\r\n\x10LoggingServiceV2\x12\x93\x02\n\tDeleteLog\x12#.google.logging.v2.DeleteLogRequest\x1a\x16.google.protobuf.Empty\"\xc8\x01\x82\xd3\xe4\x93\x02\xb6\x01* /v2/{log_name=projects/*/logs/*}Z\x1b*\x19/v2/{log_name=*/*/logs/*}Z\'*%/v2/{log_name=organizations/*/logs/*}Z!*\x1f/v2/{log_name=folders/*/logs/*}Z)*\'/v2/{log_name=billingAccounts/*/logs/*}\xda\x41\x08log_name\x12\xa9\x01\n\x0fWriteLogEntries\x12).google.logging.v2.WriteLogEntriesRequest\x1a*.google.logging.v2.WriteLogEntriesResponse\"?\x82\xd3\xe4\x93\x02\x16\"\x11/v2/entries:write:\x01*\xda\x41 log_name,resource,labels,entries\x12\xa3\x01\n\x0eListLogEntries\x12(.google.logging.v2.ListLogEntriesRequest\x1a).google.logging.v2.ListLogEntriesResponse\"<\x82\xd3\xe4\x93\x02\x15\"\x10/v2/entries:list:\x01*\xda\x41\x1eresource_names,filter,order_by\x12\xc5\x01\n ListMonitoredResourceDescriptors\x12:.google.logging.v2.ListMonitoredResourceDescriptorsRequest\x1a;.google.logging.v2.ListMonitoredResourceDescriptorsResponse\"(\x82\xd3\xe4\x93\x02\"\x12 /v2/monitoredResourceDescriptors\x12\x8b\x04\n\x08ListLogs\x12\".google.logging.v2.ListLogsRequest\x1a#.google.logging.v2.ListLogsResponse\"\xb5\x03\x82\xd3\xe4\x93\x02\xa5\x03\x12\x15/v2/{parent=*/*}/logsZ\x1e\x12\x1c/v2/{parent=projects/*}/logsZ#\x12!/v2/{parent=organizations/*}/logsZ\x1d\x12\x1b/v2/{parent=folders/*}/logsZ%\x12#/v2/{parent=billingAccounts/*}/logsZ<\x12:/v2/{parent=projects/*/locations/*/buckets/*/views/*}/logsZA\x12?/v2/{parent=organizations/*/locations/*/buckets/*/views/*}/logsZ;\x12\x39/v2/{parent=folders/*/locations/*/buckets/*/views/*}/logsZC\x12\x41/v2/{parent=billingAccounts/*/locations/*/buckets/*/views/*}/logs\xda\x41\x06parent\x12\x86\x01\n\x0eTailLogEntries\x12(.google.logging.v2.TailLogEntriesRequest\x1a).google.logging.v2.TailLogEntriesResponse\"\x1b\x82\xd3\xe4\x93\x02\x15\"\x10/v2/entries:tail:\x01*(\x01\x30\x01\x1a\x8d\x02\xca\x41\x16logging.googleapis.com\xd2\x41\xf0\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-only,https://www.googleapis.com/auth/logging.admin,https://www.googleapis.com/auth/logging.read,https://www.googleapis.com/auth/logging.writeB\xb2\x01\n\x15\x63om.google.logging.v2B\x0cLoggingProtoP\x01Z5cloud.google.com/go/logging/apiv2/loggingpb;loggingpb\xf8\x01\x01\xaa\x02\x17Google.Cloud.Logging.V2\xca\x02\x17Google\\Cloud\\Logging\\V2\xea\x02\x1aGoogle::Cloud::Logging::V2b\x06proto3"

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
    ["google.api.MonitoredResource", "google/api/monitored_resource.proto"],
    ["google.logging.v2.LogEntry", "google/logging/v2/log_entry.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Logging
      module V2
        DeleteLogRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.DeleteLogRequest").msgclass
        WriteLogEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.WriteLogEntriesRequest").msgclass
        WriteLogEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.WriteLogEntriesResponse").msgclass
        WriteLogEntriesPartialErrors = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.WriteLogEntriesPartialErrors").msgclass
        ListLogEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListLogEntriesRequest").msgclass
        ListLogEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListLogEntriesResponse").msgclass
        ListMonitoredResourceDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListMonitoredResourceDescriptorsRequest").msgclass
        ListMonitoredResourceDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListMonitoredResourceDescriptorsResponse").msgclass
        ListLogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListLogsRequest").msgclass
        ListLogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.ListLogsResponse").msgclass
        TailLogEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.TailLogEntriesRequest").msgclass
        TailLogEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.TailLogEntriesResponse").msgclass
        TailLogEntriesResponse::SuppressionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.TailLogEntriesResponse.SuppressionInfo").msgclass
        TailLogEntriesResponse::SuppressionInfo::Reason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.TailLogEntriesResponse.SuppressionInfo.Reason").enummodule
      end
    end
  end
end
