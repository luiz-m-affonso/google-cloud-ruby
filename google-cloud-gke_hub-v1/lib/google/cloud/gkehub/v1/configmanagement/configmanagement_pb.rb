# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkehub/v1/configmanagement/configmanagement.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'


descriptor_data = "\n>google/cloud/gkehub/v1/configmanagement/configmanagement.proto\x12\'google.cloud.gkehub.configmanagement.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe6\x03\n\x0fMembershipState\x12\x14\n\x0c\x63luster_name\x18\x01 \x01(\t\x12P\n\x0fmembership_spec\x18\x02 \x01(\x0b\x32\x37.google.cloud.gkehub.configmanagement.v1.MembershipSpec\x12N\n\x0eoperator_state\x18\x03 \x01(\x0b\x32\x36.google.cloud.gkehub.configmanagement.v1.OperatorState\x12S\n\x11\x63onfig_sync_state\x18\x04 \x01(\x0b\x32\x38.google.cloud.gkehub.configmanagement.v1.ConfigSyncState\x12_\n\x17policy_controller_state\x18\x05 \x01(\x0b\x32>.google.cloud.gkehub.configmanagement.v1.PolicyControllerState\x12\x65\n\x1ahierarchy_controller_state\x18\x07 \x01(\x0b\x32\x41.google.cloud.gkehub.configmanagement.v1.HierarchyControllerState\"\xa3\x02\n\x0eMembershipSpec\x12H\n\x0b\x63onfig_sync\x18\x01 \x01(\x0b\x32\x33.google.cloud.gkehub.configmanagement.v1.ConfigSync\x12T\n\x11policy_controller\x18\x02 \x01(\x0b\x32\x39.google.cloud.gkehub.configmanagement.v1.PolicyController\x12`\n\x14hierarchy_controller\x18\x04 \x01(\x0b\x32\x42.google.cloud.gkehub.configmanagement.v1.HierarchyControllerConfig\x12\x0f\n\x07version\x18\n \x01(\t\"d\n\nConfigSync\x12?\n\x03git\x18\x07 \x01(\x0b\x32\x32.google.cloud.gkehub.configmanagement.v1.GitConfig\x12\x15\n\rsource_format\x18\x08 \x01(\t\"\xbe\x01\n\tGitConfig\x12\x11\n\tsync_repo\x18\x01 \x01(\t\x12\x13\n\x0bsync_branch\x18\x02 \x01(\t\x12\x12\n\npolicy_dir\x18\x03 \x01(\t\x12\x16\n\x0esync_wait_secs\x18\x04 \x01(\x03\x12\x10\n\x08sync_rev\x18\x05 \x01(\t\x12\x13\n\x0bsecret_type\x18\x06 \x01(\t\x12\x13\n\x0bhttps_proxy\x18\x07 \x01(\t\x12!\n\x19gcp_service_account_email\x18\x08 \x01(\t\"\x89\x02\n\x10PolicyController\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\x12\'\n\x1atemplate_library_installed\x18\x02 \x01(\x08H\x00\x88\x01\x01\x12#\n\x16\x61udit_interval_seconds\x18\x03 \x01(\x03H\x01\x88\x01\x01\x12\x1d\n\x15\x65xemptable_namespaces\x18\x04 \x03(\t\x12!\n\x19referential_rules_enabled\x18\x05 \x01(\x08\x12\x1a\n\x12log_denies_enabled\x18\x06 \x01(\x08\x42\x1d\n\x1b_template_library_installedB\x19\n\x17_audit_interval_seconds\"x\n\x19HierarchyControllerConfig\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\x12\x1e\n\x16\x65nable_pod_tree_labels\x18\x02 \x01(\x08\x12*\n\"enable_hierarchical_resource_quota\x18\x03 \x01(\x08\"\xb8\x01\n\"HierarchyControllerDeploymentState\x12\x45\n\x03hnc\x18\x01 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12K\n\textension\x18\x02 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\"<\n\x1aHierarchyControllerVersion\x12\x0b\n\x03hnc\x18\x01 \x01(\t\x12\x11\n\textension\x18\x02 \x01(\t\"\xcc\x01\n\x18HierarchyControllerState\x12T\n\x07version\x18\x01 \x01(\x0b\x32\x43.google.cloud.gkehub.configmanagement.v1.HierarchyControllerVersion\x12Z\n\x05state\x18\x02 \x01(\x0b\x32K.google.cloud.gkehub.configmanagement.v1.HierarchyControllerDeploymentState\"\xbb\x01\n\rOperatorState\x12\x0f\n\x07version\x18\x01 \x01(\t\x12R\n\x10\x64\x65ployment_state\x18\x02 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12\x45\n\x06\x65rrors\x18\x03 \x03(\x0b\x32\x35.google.cloud.gkehub.configmanagement.v1.InstallError\"%\n\x0cInstallError\x12\x15\n\rerror_message\x18\x01 \x01(\t\"\x84\x02\n\x0f\x43onfigSyncState\x12K\n\x07version\x18\x01 \x01(\x0b\x32:.google.cloud.gkehub.configmanagement.v1.ConfigSyncVersion\x12\\\n\x10\x64\x65ployment_state\x18\x02 \x01(\x0b\x32\x42.google.cloud.gkehub.configmanagement.v1.ConfigSyncDeploymentState\x12\x46\n\nsync_state\x18\x03 \x01(\x0b\x32\x32.google.cloud.gkehub.configmanagement.v1.SyncState\"\x8d\x01\n\x11\x43onfigSyncVersion\x12\x10\n\x08importer\x18\x01 \x01(\t\x12\x0e\n\x06syncer\x18\x02 \x01(\t\x12\x10\n\x08git_sync\x18\x03 \x01(\t\x12\x0f\n\x07monitor\x18\x04 \x01(\t\x12\x1a\n\x12reconciler_manager\x18\x05 \x01(\t\x12\x17\n\x0froot_reconciler\x18\x06 \x01(\t\"\xf1\x03\n\x19\x43onfigSyncDeploymentState\x12J\n\x08importer\x18\x01 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12H\n\x06syncer\x18\x02 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12J\n\x08git_sync\x18\x03 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12I\n\x07monitor\x18\x04 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12T\n\x12reconciler_manager\x18\x05 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12Q\n\x0froot_reconciler\x18\x06 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\"\xbb\x03\n\tSyncState\x12\x14\n\x0csource_token\x18\x01 \x01(\t\x12\x14\n\x0cimport_token\x18\x02 \x01(\t\x12\x12\n\nsync_token\x18\x03 \x01(\t\x12\x15\n\tlast_sync\x18\x04 \x01(\tB\x02\x18\x01\x12\x32\n\x0elast_sync_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12I\n\x04\x63ode\x18\x05 \x01(\x0e\x32;.google.cloud.gkehub.configmanagement.v1.SyncState.SyncCode\x12\x42\n\x06\x65rrors\x18\x06 \x03(\x0b\x32\x32.google.cloud.gkehub.configmanagement.v1.SyncError\"\x93\x01\n\x08SyncCode\x12\x19\n\x15SYNC_CODE_UNSPECIFIED\x10\x00\x12\n\n\x06SYNCED\x10\x01\x12\x0b\n\x07PENDING\x10\x02\x12\t\n\x05\x45RROR\x10\x03\x12\x12\n\x0eNOT_CONFIGURED\x10\x04\x12\x11\n\rNOT_INSTALLED\x10\x05\x12\x10\n\x0cUNAUTHORIZED\x10\x06\x12\x0f\n\x0bUNREACHABLE\x10\x07\"\x81\x01\n\tSyncError\x12\x0c\n\x04\x63ode\x18\x01 \x01(\t\x12\x15\n\rerror_message\x18\x02 \x01(\t\x12O\n\x0f\x65rror_resources\x18\x03 \x03(\x0b\x32\x36.google.cloud.gkehub.configmanagement.v1.ErrorResource\"\xa8\x01\n\rErrorResource\x12\x13\n\x0bsource_path\x18\x01 \x01(\t\x12\x15\n\rresource_name\x18\x02 \x01(\t\x12\x1a\n\x12resource_namespace\x18\x03 \x01(\t\x12O\n\x0cresource_gvk\x18\x04 \x01(\x0b\x32\x39.google.cloud.gkehub.configmanagement.v1.GroupVersionKind\"@\n\x10GroupVersionKind\x12\r\n\x05group\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\t\x12\x0c\n\x04kind\x18\x03 \x01(\t\"\xc8\x01\n\x15PolicyControllerState\x12Q\n\x07version\x18\x01 \x01(\x0b\x32@.google.cloud.gkehub.configmanagement.v1.PolicyControllerVersion\x12\\\n\x10\x64\x65ployment_state\x18\x02 \x01(\x0b\x32\x42.google.cloud.gkehub.configmanagement.v1.GatekeeperDeploymentState\"*\n\x17PolicyControllerVersion\x12\x0f\n\x07version\x18\x01 \x01(\t\"\xd6\x01\n\x19GatekeeperDeploymentState\x12\x65\n#gatekeeper_controller_manager_state\x18\x01 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState\x12R\n\x10gatekeeper_audit\x18\x02 \x01(\x0e\x32\x38.google.cloud.gkehub.configmanagement.v1.DeploymentState*`\n\x0f\x44\x65ploymentState\x12 \n\x1c\x44\x45PLOYMENT_STATE_UNSPECIFIED\x10\x00\x12\x11\n\rNOT_INSTALLED\x10\x01\x12\r\n\tINSTALLED\x10\x02\x12\t\n\x05\x45RROR\x10\x03\x42\xa1\x02\n+com.google.cloud.gkehub.configmanagement.v1B\x15\x43onfigManagementProtoP\x01ZWcloud.google.com/go/gkehub/configmanagement/apiv1/configmanagementpb;configmanagementpb\xaa\x02\'Google.Cloud.GkeHub.ConfigManagement.V1\xca\x02\'Google\\Cloud\\GkeHub\\ConfigManagement\\V1\xea\x02+Google::Cloud::GkeHub::ConfigManagement::V1b\x06proto3"

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
    module GkeHub
      module ConfigManagement
        module V1
          MembershipState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.MembershipState").msgclass
          MembershipSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.MembershipSpec").msgclass
          ConfigSync = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.ConfigSync").msgclass
          GitConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.GitConfig").msgclass
          PolicyController = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.PolicyController").msgclass
          HierarchyControllerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.HierarchyControllerConfig").msgclass
          HierarchyControllerDeploymentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.HierarchyControllerDeploymentState").msgclass
          HierarchyControllerVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.HierarchyControllerVersion").msgclass
          HierarchyControllerState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.HierarchyControllerState").msgclass
          OperatorState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.OperatorState").msgclass
          InstallError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.InstallError").msgclass
          ConfigSyncState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.ConfigSyncState").msgclass
          ConfigSyncVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.ConfigSyncVersion").msgclass
          ConfigSyncDeploymentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.ConfigSyncDeploymentState").msgclass
          SyncState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.SyncState").msgclass
          SyncState::SyncCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.SyncState.SyncCode").enummodule
          SyncError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.SyncError").msgclass
          ErrorResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.ErrorResource").msgclass
          GroupVersionKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.GroupVersionKind").msgclass
          PolicyControllerState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.PolicyControllerState").msgclass
          PolicyControllerVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.PolicyControllerVersion").msgclass
          GatekeeperDeploymentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.GatekeeperDeploymentState").msgclass
          DeploymentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.configmanagement.v1.DeploymentState").enummodule
        end
      end
    end
  end
end
