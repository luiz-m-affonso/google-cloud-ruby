# Copyright 2018 Google LLC
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


module Google
  module Cloud
    module Bigquery
      module DataTransfer
        ##
        # # BigQuery Data Transfer API Contents
        #
        # | Class | Description |
        # | ----- | ----------- |
        # | [DataTransferServiceClient][] | The Google BigQuery Data Transfer Service API enables BigQuery users to configure the transfer of their data from other Google Products into BigQuery. |
        # | [Data Types][] | Data types for Google::Cloud::Bigquery::DataTransfer::V1 |
        #
        # [DataTransferServiceClient]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-bigquery-data_transfer/latest/google/cloud/bigquery/datatransfer/v1/datatransferserviceclient
        # [Data Types]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-bigquery-data_transfer/latest/google/cloud/bigquery/datatransfer/v1/datatypes
        #
        module V1
          # Represents a data source parameter with validation rules, so that
          # parameters can be rendered in the UI. These parameters are given to us by
          # supported data sources, and include all needed information for rendering
          # and validation.
          # Thus, whoever uses this api can decide to generate either generic ui,
          # or custom data source specific forms.
          # @!attribute [rw] param_id
          #   @return [String]
          #     Parameter identifier.
          # @!attribute [rw] display_name
          #   @return [String]
          #     Parameter display name in the user interface.
          # @!attribute [rw] description
          #   @return [String]
          #     Parameter description.
          # @!attribute [rw] type
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::DataSourceParameter::Type]
          #     Parameter type.
          # @!attribute [rw] required
          #   @return [true, false]
          #     Is parameter required.
          # @!attribute [rw] repeated
          #   @return [true, false]
          #     Can parameter have multiple values.
          # @!attribute [rw] validation_regex
          #   @return [String]
          #     Regular expression which can be used for parameter validation.
          # @!attribute [rw] allowed_values
          #   @return [Array<String>]
          #     All possible values for the parameter.
          # @!attribute [rw] min_value
          #   @return [Google::Protobuf::DoubleValue]
          #     For integer and double values specifies minimum allowed value.
          # @!attribute [rw] max_value
          #   @return [Google::Protobuf::DoubleValue]
          #     For integer and double values specifies maxminum allowed value.
          # @!attribute [rw] fields
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::DataSourceParameter>]
          #     When parameter is a record, describes child fields.
          # @!attribute [rw] validation_description
          #   @return [String]
          #     Description of the requirements for this field, in case the user input does
          #     not fulfill the regex pattern or min/max values.
          # @!attribute [rw] validation_help_url
          #   @return [String]
          #     URL to a help document to further explain the naming requirements.
          # @!attribute [rw] immutable
          #   @return [true, false]
          #     Cannot be changed after initial creation.
          # @!attribute [rw] recurse
          #   @return [true, false]
          #     If set to true, schema should be taken from the parent with the same
          #     parameter_id. Only applicable when parameter type is RECORD.
          class DataSourceParameter
            # Parameter type.
            module Type
              # Type unspecified.
              TYPE_UNSPECIFIED = 0

              # String parameter.
              STRING = 1

              # Integer parameter (64-bits).
              # Will be serialized to json as string.
              INTEGER = 2

              # Double precision floating point parameter.
              DOUBLE = 3

              # Boolean parameter.
              BOOLEAN = 4

              # Record parameter.
              RECORD = 5

              # Page ID for a Google+ Page.
              PLUS_PAGE = 6
            end
          end

          # Represents data source metadata. Metadata is sufficient to
          # render UI and request proper OAuth tokens.
          # @!attribute [rw] name
          #   @return [String]
          #     Data source resource name.
          # @!attribute [rw] data_source_id
          #   @return [String]
          #     Data source id.
          # @!attribute [rw] display_name
          #   @return [String]
          #     User friendly data source name.
          # @!attribute [rw] description
          #   @return [String]
          #     User friendly data source description string.
          # @!attribute [rw] client_id
          #   @return [String]
          #     Data source client id which should be used to receive refresh token.
          #     When not supplied, no offline credentials are populated for data transfer.
          # @!attribute [rw] scopes
          #   @return [Array<String>]
          #     Api auth scopes for which refresh token needs to be obtained. Only valid
          #     when +client_id+ is specified. Ignored otherwise. These are scopes needed
          #     by a data source to prepare data and ingest them into BigQuery,
          #     e.g., https://www.googleapis.com/auth/bigquery
          # @!attribute [rw] transfer_type
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::TransferType]
          #     Transfer type. Currently supports only batch transfers,
          #     which are transfers that use the BigQuery batch APIs (load or
          #     query) to ingest the data.
          # @!attribute [rw] supports_multiple_transfers
          #   @return [true, false]
          #     Indicates whether the data source supports multiple transfers
          #     to different BigQuery targets.
          # @!attribute [rw] update_deadline_seconds
          #   @return [Integer]
          #     The number of seconds to wait for an update from the data source
          #     before BigQuery marks the transfer as failed.
          # @!attribute [rw] default_schedule
          #   @return [String]
          #     Default data transfer schedule.
          #     Examples of valid schedules include:
          #     +1st,3rd monday of month 15:30+,
          #     +every wed,fri of jan,jun 13:15+, and
          #     +first sunday of quarter 00:00+.
          # @!attribute [rw] supports_custom_schedule
          #   @return [true, false]
          #     Specifies whether the data source supports a user defined schedule, or
          #     operates on the default schedule.
          #     When set to +true+, user can override default schedule.
          # @!attribute [rw] parameters
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::DataSourceParameter>]
          #     Data source parameters.
          # @!attribute [rw] help_url
          #   @return [String]
          #     Url for the help document for this data source.
          # @!attribute [rw] authorization_type
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::DataSource::AuthorizationType]
          #     Indicates the type of authorization.
          # @!attribute [rw] data_refresh_type
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::DataSource::DataRefreshType]
          #     Specifies whether the data source supports automatic data refresh for the
          #     past few days, and how it's supported.
          #     For some data sources, data might not be complete until a few days later,
          #     so it's useful to refresh data automatically.
          # @!attribute [rw] default_data_refresh_window_days
          #   @return [Integer]
          #     Default data refresh window on days.
          #     Only meaningful when +data_refresh_type+ = +SLIDING_WINDOW+.
          # @!attribute [rw] manual_runs_disabled
          #   @return [true, false]
          #     Disables backfilling and manual run scheduling
          #     for the data source.
          # @!attribute [rw] minimum_schedule_interval
          #   @return [Google::Protobuf::Duration]
          #     The minimum interval for scheduler to schedule runs.
          class DataSource
            # The type of authorization needed for this data source.
            module AuthorizationType
              # Type unspecified.
              AUTHORIZATION_TYPE_UNSPECIFIED = 0

              # Use OAuth 2 authorization codes that can be exchanged
              # for a refresh token on the backend.
              AUTHORIZATION_CODE = 1

              # Return an authorization code for a given Google+ page that can then be
              # exchanged for a refresh token on the backend.
              GOOGLE_PLUS_AUTHORIZATION_CODE = 2
            end

            # Represents how the data source supports data auto refresh.
            module DataRefreshType
              # The data source won't support data auto refresh, which is default value.
              DATA_REFRESH_TYPE_UNSPECIFIED = 0

              # The data source supports data auto refresh, and runs will be scheduled
              # for the past few days. Does not allow custom values to be set for each
              # transfer config.
              SLIDING_WINDOW = 1

              # The data source supports data auto refresh, and runs will be scheduled
              # for the past few days. Allows custom values to be set for each transfer
              # config.
              CUSTOM_SLIDING_WINDOW = 2
            end
          end

          # A request to get data source info.
          # @!attribute [rw] name
          #   @return [String]
          #     The field will contain name of the resource requested, for example:
          #     +projects/\\{project_id}/dataSources/\\{data_source_id}+
          class GetDataSourceRequest; end

          # Request to list supported data sources and their data transfer settings.
          # @!attribute [rw] parent
          #   @return [String]
          #     The BigQuery project id for which data sources should be returned.
          #     Must be in the form: +projects/\\{project_id}+
          # @!attribute [rw] page_token
          #   @return [String]
          #     Pagination token, which can be used to request a specific page
          #     of +ListDataSourcesRequest+ list results. For multiple-page
          #     results, +ListDataSourcesResponse+ outputs
          #     a +next_page+ token, which can be used as the
          #     +page_token+ value to request the next page of list results.
          # @!attribute [rw] page_size
          #   @return [Integer]
          #     Page size. The default page size is the maximum value of 1000 results.
          class ListDataSourcesRequest; end

          # Returns list of supported data sources and their metadata.
          # @!attribute [rw] data_sources
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::DataSource>]
          #     List of supported data sources and their transfer settings.
          # @!attribute [rw] next_page_token
          #   @return [String]
          #     Output only. The next-pagination token. For multiple-page list results,
          #     this token can be used as the
          #     +ListDataSourcesRequest.page_token+
          #     to request the next page of list results.
          class ListDataSourcesResponse; end

          # A request to create a data transfer configuration. If new credentials are
          # needed for this transfer configuration, an authorization code must be
          # provided. If an authorization code is provided, the transfer configuration
          # will be associated with the user id corresponding to the
          # authorization code. Otherwise, the transfer configuration will be associated
          # with the calling user.
          # @!attribute [rw] parent
          #   @return [String]
          #     The BigQuery project id where the transfer configuration should be created.
          #     Must be in the format /projects/\\{project_id}/locations/\\{location_id}
          #     If specified location and location of the destination bigquery dataset
          #     do not match - the request will fail.
          # @!attribute [rw] transfer_config
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig]
          #     Data transfer configuration to create.
          # @!attribute [rw] authorization_code
          #   @return [String]
          #     Optional OAuth2 authorization code to use with this transfer configuration.
          #     This is required if new credentials are needed, as indicated by
          #     +CheckValidCreds+.
          #     In order to obtain authorization_code, please make a
          #     request to
          #     https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
          #
          #     * client_id should be OAuth client_id of BigQuery DTS API for the given
          #       data source returned by ListDataSources method.
          #     * data_source_scopes are the scopes returned by ListDataSources method.
          #     * redirect_uri is an optional parameter. If not specified, then
          #       authorization code is posted to the opener of authorization flow window.
          #       Otherwise it will be sent to the redirect uri. A special value of
          #       urn:ietf:wg:oauth:2.0:oob means that authorization code should be
          #       returned in the title bar of the browser, with the page text prompting
          #       the user to copy the code and paste it in the application.
          class CreateTransferConfigRequest; end

          # A request to update a transfer configuration. To update the user id of the
          # transfer configuration, an authorization code needs to be provided.
          # @!attribute [rw] transfer_config
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig]
          #     Data transfer configuration to create.
          # @!attribute [rw] authorization_code
          #   @return [String]
          #     Optional OAuth2 authorization code to use with this transfer configuration.
          #     If it is provided, the transfer configuration will be associated with the
          #     authorizing user.
          #     In order to obtain authorization_code, please make a
          #     request to
          #     https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?client_id=<datatransferapiclientid>&scope=<data_source_scopes>&redirect_uri=<redirect_uri>
          #
          #     * client_id should be OAuth client_id of BigQuery DTS API for the given
          #       data source returned by ListDataSources method.
          #     * data_source_scopes are the scopes returned by ListDataSources method.
          #     * redirect_uri is an optional parameter. If not specified, then
          #       authorization code is posted to the opener of authorization flow window.
          #       Otherwise it will be sent to the redirect uri. A special value of
          #       urn:ietf:wg:oauth:2.0:oob means that authorization code should be
          #       returned in the title bar of the browser, with the page text prompting
          #       the user to copy the code and paste it in the application.
          # @!attribute [rw] update_mask
          #   @return [Google::Protobuf::FieldMask]
          #     Required list of fields to be updated in this request.
          class UpdateTransferConfigRequest; end

          # A request to get data transfer information.
          # @!attribute [rw] name
          #   @return [String]
          #     The field will contain name of the resource requested, for example:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}+
          class GetTransferConfigRequest; end

          # A request to delete data transfer information. All associated transfer runs
          # and log messages will be deleted as well.
          # @!attribute [rw] name
          #   @return [String]
          #     The field will contain name of the resource requested, for example:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}+
          class DeleteTransferConfigRequest; end

          # A request to get data transfer run information.
          # @!attribute [rw] name
          #   @return [String]
          #     The field will contain name of the resource requested, for example:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}/runs/\\{run_id}+
          class GetTransferRunRequest; end

          # A request to delete data transfer run information.
          # @!attribute [rw] name
          #   @return [String]
          #     The field will contain name of the resource requested, for example:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}/runs/\\{run_id}+
          class DeleteTransferRunRequest; end

          # A request to list data transfers configured for a BigQuery project.
          # @!attribute [rw] parent
          #   @return [String]
          #     The BigQuery project id for which data sources
          #     should be returned: +projects/\\{project_id}+.
          # @!attribute [rw] data_source_ids
          #   @return [Array<String>]
          #     When specified, only configurations of requested data sources are returned.
          # @!attribute [rw] page_token
          #   @return [String]
          #     Pagination token, which can be used to request a specific page
          #     of +ListTransfersRequest+ list results. For multiple-page
          #     results, +ListTransfersResponse+ outputs
          #     a +next_page+ token, which can be used as the
          #     +page_token+ value to request the next page of list results.
          # @!attribute [rw] page_size
          #   @return [Integer]
          #     Page size. The default page size is the maximum value of 1000 results.
          class ListTransferConfigsRequest; end

          # The returned list of pipelines in the project.
          # @!attribute [rw] transfer_configs
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferConfig>]
          #     Output only. The stored pipeline transfer configurations.
          # @!attribute [rw] next_page_token
          #   @return [String]
          #     Output only. The next-pagination token. For multiple-page list results,
          #     this token can be used as the
          #     +ListTransferConfigsRequest.page_token+
          #     to request the next page of list results.
          class ListTransferConfigsResponse; end

          # A request to list data transfer runs. UI can use this method to show/filter
          # specific data transfer runs. The data source can use this method to request
          # all scheduled transfer runs.
          # @!attribute [rw] parent
          #   @return [String]
          #     Name of transfer configuration for which transfer runs should be retrieved.
          #     Format of transfer configuration resource name is:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}+.
          # @!attribute [rw] states
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferState>]
          #     When specified, only transfer runs with requested states are returned.
          # @!attribute [rw] page_token
          #   @return [String]
          #     Pagination token, which can be used to request a specific page
          #     of +ListTransferRunsRequest+ list results. For multiple-page
          #     results, +ListTransferRunsResponse+ outputs
          #     a +next_page+ token, which can be used as the
          #     +page_token+ value to request the next page of list results.
          # @!attribute [rw] page_size
          #   @return [Integer]
          #     Page size. The default page size is the maximum value of 1000 results.
          # @!attribute [rw] run_attempt
          #   @return [Google::Cloud::Bigquery::DataTransfer::V1::ListTransferRunsRequest::RunAttempt]
          #     Indicates how run attempts are to be pulled.
          class ListTransferRunsRequest
            # Represents which runs should be pulled.
            module RunAttempt
              # All runs should be returned.
              RUN_ATTEMPT_UNSPECIFIED = 0

              # Only latest run per day should be returned.
              LATEST = 1
            end
          end

          # The returned list of pipelines in the project.
          # @!attribute [rw] transfer_runs
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferRun>]
          #     Output only. The stored pipeline transfer runs.
          # @!attribute [rw] next_page_token
          #   @return [String]
          #     Output only. The next-pagination token. For multiple-page list results,
          #     this token can be used as the
          #     +ListTransferRunsRequest.page_token+
          #     to request the next page of list results.
          class ListTransferRunsResponse; end

          # A request to get user facing log messages associated with data transfer run.
          # @!attribute [rw] parent
          #   @return [String]
          #     Transfer run name in the form:
          #     +projects/\\{project_id}/transferConfigs/\\{config_Id}/runs/\\{run_id}+.
          # @!attribute [rw] page_token
          #   @return [String]
          #     Pagination token, which can be used to request a specific page
          #     of +ListTransferLogsRequest+ list results. For multiple-page
          #     results, +ListTransferLogsResponse+ outputs
          #     a +next_page+ token, which can be used as the
          #     +page_token+ value to request the next page of list results.
          # @!attribute [rw] page_size
          #   @return [Integer]
          #     Page size. The default page size is the maximum value of 1000 results.
          # @!attribute [rw] message_types
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferMessage::MessageSeverity>]
          #     Message types to return. If not populated - INFO, WARNING and ERROR
          #     messages are returned.
          class ListTransferLogsRequest; end

          # The returned list transfer run messages.
          # @!attribute [rw] transfer_messages
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferMessage>]
          #     Output only. The stored pipeline transfer messages.
          # @!attribute [rw] next_page_token
          #   @return [String]
          #     Output only. The next-pagination token. For multiple-page list results,
          #     this token can be used as the
          #     +GetTransferRunLogRequest.page_token+
          #     to request the next page of list results.
          class ListTransferLogsResponse; end

          # A request to determine whether the user has valid credentials. This method
          # is used to limit the number of OAuth popups in the user interface. The
          # user id is inferred from the API call context.
          # If the data source has the Google+ authorization type, this method
          # returns false, as it cannot be determined whether the credentials are
          # already valid merely based on the user id.
          # @!attribute [rw] name
          #   @return [String]
          #     The data source in the form:
          #     +projects/\\{project_id}/dataSources/\\{data_source_id}+
          class CheckValidCredsRequest; end

          # A response indicating whether the credentials exist and are valid.
          # @!attribute [rw] has_valid_creds
          #   @return [true, false]
          #     If set to +true+, the credentials exist and are valid.
          class CheckValidCredsResponse; end

          # A request to schedule transfer runs for a time range.
          # @!attribute [rw] parent
          #   @return [String]
          #     Transfer configuration name in the form:
          #     +projects/\\{project_id}/transferConfigs/\\{config_id}+.
          # @!attribute [rw] start_time
          #   @return [Google::Protobuf::Timestamp]
          #     Start time of the range of transfer runs. For example,
          #     +"2017-05-25T00:00:00+00:00"+.
          # @!attribute [rw] end_time
          #   @return [Google::Protobuf::Timestamp]
          #     End time of the range of transfer runs. For example,
          #     +"2017-05-30T00:00:00+00:00"+.
          class ScheduleTransferRunsRequest; end

          # A response to schedule transfer runs for a time range.
          # @!attribute [rw] runs
          #   @return [Array<Google::Cloud::Bigquery::DataTransfer::V1::TransferRun>]
          #     The transfer runs that were scheduled.
          class ScheduleTransferRunsResponse; end
        end
      end
    end
  end
end
