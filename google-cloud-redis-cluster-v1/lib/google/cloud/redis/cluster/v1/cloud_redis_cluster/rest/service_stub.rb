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

require "google/cloud/redis/cluster/v1/cloud_redis_cluster_pb"

module Google
  module Cloud
    module Redis
      module Cluster
        module V1
          module CloudRedisCluster
            module Rest
              ##
              # REST service stub for the CloudRedisCluster service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                def initialize endpoint:, credentials:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                               numeric_enums: true,
                                                               raise_faraday_errors: false
                end

                ##
                # Baseline implementation for the list_clusters REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::ListClustersRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Redis::Cluster::V1::ListClustersResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Redis::Cluster::V1::ListClustersResponse]
                #   A result object deserialized from the server's reply
                def list_clusters request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_clusters_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Redis::Cluster::V1::ListClustersResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the get_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::GetClusterRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Redis::Cluster::V1::Cluster]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Redis::Cluster::V1::Cluster]
                #   A result object deserialized from the server's reply
                def get_cluster request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_cluster_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Redis::Cluster::V1::Cluster.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the update_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::UpdateClusterRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def update_cluster request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_cluster_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the delete_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::DeleteClusterRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def delete_cluster request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_cluster_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the create_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::CreateClusterRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def create_cluster request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_cluster_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_clusters REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::ListClustersRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_clusters_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/clusters",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::GetClusterRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_cluster_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/clusters/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::UpdateClusterRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_cluster_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/v1/{cluster.name}",
                                                            body: "cluster",
                                                            matches: [
                                                              ["cluster.name", %r{^projects/[^/]+/locations/[^/]+/clusters/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::DeleteClusterRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_cluster_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/clusters/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_cluster REST call
                #
                # @param request_pb [::Google::Cloud::Redis::Cluster::V1::CreateClusterRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_cluster_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/clusters",
                                                            body: "cluster",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
