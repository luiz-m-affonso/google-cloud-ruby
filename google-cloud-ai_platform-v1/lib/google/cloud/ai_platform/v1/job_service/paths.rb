# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module AIPlatform
      module V1
        module JobService
          # Path helper methods for the JobService API.
          module Paths
            ##
            # Create a fully-qualified BatchPredictionJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/batchPredictionJobs/{batch_prediction_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param batch_prediction_job [String]
            #
            # @return [::String]
            def batch_prediction_job_path project:, location:, batch_prediction_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/batchPredictionJobs/#{batch_prediction_job}"
            end

            ##
            # Create a fully-qualified Context resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/metadataStores/{metadata_store}/contexts/{context}`
            #
            # @param project [String]
            # @param location [String]
            # @param metadata_store [String]
            # @param context [String]
            #
            # @return [::String]
            def context_path project:, location:, metadata_store:, context:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "metadata_store cannot contain /" if metadata_store.to_s.include? "/"

              "projects/#{project}/locations/#{location}/metadataStores/#{metadata_store}/contexts/#{context}"
            end

            ##
            # Create a fully-qualified CustomJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/customJobs/{custom_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param custom_job [String]
            #
            # @return [::String]
            def custom_job_path project:, location:, custom_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/customJobs/#{custom_job}"
            end

            ##
            # Create a fully-qualified DataLabelingJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataLabelingJobs/{data_labeling_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param data_labeling_job [String]
            #
            # @return [::String]
            def data_labeling_job_path project:, location:, data_labeling_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataLabelingJobs/#{data_labeling_job}"
            end

            ##
            # Create a fully-qualified Dataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/datasets/{dataset}`
            #
            # @param project [String]
            # @param location [String]
            # @param dataset [String]
            #
            # @return [::String]
            def dataset_path project:, location:, dataset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/datasets/#{dataset}"
            end

            ##
            # Create a fully-qualified Endpoint resource string.
            #
            # @overload endpoint_path(project:, location:, endpoint:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/endpoints/{endpoint}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param endpoint [String]
            #
            # @overload endpoint_path(project:, location:, publisher:, model:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param publisher [String]
            #   @param model [String]
            #
            # @return [::String]
            def endpoint_path **args
              resources = {
                "endpoint:location:project" => (proc do |project:, location:, endpoint:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/endpoints/#{endpoint}"
                end),
                "location:model:project:publisher" => (proc do |project:, location:, publisher:, model:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "publisher cannot contain /" if publisher.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/publishers/#{publisher}/models/#{model}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified HyperparameterTuningJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/hyperparameterTuningJobs/{hyperparameter_tuning_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param hyperparameter_tuning_job [String]
            #
            # @return [::String]
            def hyperparameter_tuning_job_path project:, location:, hyperparameter_tuning_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/hyperparameterTuningJobs/#{hyperparameter_tuning_job}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Model resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/models/{model}`
            #
            # @param project [String]
            # @param location [String]
            # @param model [String]
            #
            # @return [::String]
            def model_path project:, location:, model:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/models/#{model}"
            end

            ##
            # Create a fully-qualified ModelDeploymentMonitoringJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param model_deployment_monitoring_job [String]
            #
            # @return [::String]
            def model_deployment_monitoring_job_path project:, location:, model_deployment_monitoring_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/modelDeploymentMonitoringJobs/#{model_deployment_monitoring_job}"
            end

            ##
            # Create a fully-qualified NasJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/nasJobs/{nas_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param nas_job [String]
            #
            # @return [::String]
            def nas_job_path project:, location:, nas_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/nasJobs/#{nas_job}"
            end

            ##
            # Create a fully-qualified NasTrialDetail resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/nasJobs/{nas_job}/nasTrialDetails/{nas_trial_detail}`
            #
            # @param project [String]
            # @param location [String]
            # @param nas_job [String]
            # @param nas_trial_detail [String]
            #
            # @return [::String]
            def nas_trial_detail_path project:, location:, nas_job:, nas_trial_detail:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "nas_job cannot contain /" if nas_job.to_s.include? "/"

              "projects/#{project}/locations/#{location}/nasJobs/#{nas_job}/nasTrialDetails/#{nas_trial_detail}"
            end

            ##
            # Create a fully-qualified Network resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/global/networks/{network}`
            #
            # @param project [String]
            # @param network [String]
            #
            # @return [::String]
            def network_path project:, network:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/global/networks/#{network}"
            end

            ##
            # Create a fully-qualified NotificationChannel resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/notificationChannels/{notification_channel}`
            #
            # @param project [String]
            # @param notification_channel [String]
            #
            # @return [::String]
            def notification_channel_path project:, notification_channel:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/notificationChannels/#{notification_channel}"
            end

            ##
            # Create a fully-qualified Tensorboard resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
            #
            # @param project [String]
            # @param location [String]
            # @param tensorboard [String]
            #
            # @return [::String]
            def tensorboard_path project:, location:, tensorboard:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/tensorboards/#{tensorboard}"
            end

            ##
            # Create a fully-qualified Trial resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/studies/{study}/trials/{trial}`
            #
            # @param project [String]
            # @param location [String]
            # @param study [String]
            # @param trial [String]
            #
            # @return [::String]
            def trial_path project:, location:, study:, trial:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "study cannot contain /" if study.to_s.include? "/"

              "projects/#{project}/locations/#{location}/studies/#{study}/trials/#{trial}"
            end

            extend self
          end
        end
      end
    end
  end
end
