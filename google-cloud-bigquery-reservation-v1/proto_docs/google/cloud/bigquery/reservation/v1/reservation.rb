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
    module Bigquery
      module Reservation
        module V1
          # A reservation is a mechanism used to guarantee slots to users.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the reservation, e.g.,
          #     `projects/*/locations/*/reservations/team1-prod`.
          #     The reservation_id must only contain lower case alphanumeric characters or
          #     dashes. It must start with a letter and must not end with a dash. Its
          #     maximum length is 64 characters.
          # @!attribute [rw] slot_capacity
          #   @return [::Integer]
          #     Minimum slots available to this reservation. A slot is a unit of
          #     computational power in BigQuery, and serves as the unit of parallelism.
          #
          #     Queries using this reservation might use more slots during runtime if
          #     ignore_idle_slots is set to false.
          #
          #     If total slot_capacity of the reservation and its siblings
          #     exceeds the total slot_count of all capacity commitments, the request will
          #     fail with `google.rpc.Code.RESOURCE_EXHAUSTED`.
          #
          #
          #     NOTE: for reservations in US or EU multi-regions, slot capacity constraints
          #     are checked separately for default and auxiliary regions. See
          #     multi_region_auxiliary flag for more details.
          # @!attribute [rw] ignore_idle_slots
          #   @return [::Boolean]
          #     If false, any query or pipeline job using this reservation will use idle
          #     slots from other reservations within the same admin project. If true, a
          #     query or pipeline job using this reservation will execute with the slot
          #     capacity specified in the slot_capacity field at most.
          # @!attribute [rw] autoscale
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Reservation::Autoscale]
          #     The configuration parameters for the auto scaling feature. Note this is an
          #     alpha feature.
          # @!attribute [rw] concurrency
          #   @return [::Integer]
          #     Job concurrency target which sets a soft upper bound on the number of jobs
          #     that can run concurrently in this reservation. This is a soft target due to
          #     asynchronous nature of the system and various optimizations for small
          #     queries.
          #     Default value is 0 which means that concurrency target will be
          #     automatically computed by the system.
          #     NOTE: this field is exposed as `target_job_concurrency` in the Information
          #     Schema, DDL and BQ CLI.
          # @!attribute [r] creation_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Creation time of the reservation.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Last update time of the reservation.
          # @!attribute [rw] multi_region_auxiliary
          #   @return [::Boolean]
          #     Applicable only for reservations located within one of the BigQuery
          #     multi-regions (US or EU).
          #
          #     If set to true, this reservation is placed in the organization's
          #     secondary region which is designated for disaster recovery purposes.
          #     If false, this reservation is placed in the organization's default region.
          #
          #     NOTE: this is a preview feature. Project must be allow-listed in order to
          #     set this field.
          # @!attribute [rw] edition
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Edition]
          #     Edition of the reservation.
          class Reservation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Auto scaling settings.
            # @!attribute [r] current_slots
            #   @return [::Integer]
            #     Output only. The slot capacity added to this reservation when autoscale
            #     happens. Will be between [0, max_slots].
            # @!attribute [rw] max_slots
            #   @return [::Integer]
            #     Number of slots to be scaled when needed.
            class Autoscale
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Capacity commitment is a way to purchase compute capacity for BigQuery jobs
          # (in the form of slots) with some committed period of usage. Annual
          # commitments renew by default. Commitments can be removed after their
          # commitment end time passes.
          #
          # In order to remove annual commitment, its plan needs to be changed
          # to monthly or flex first.
          #
          # A capacity commitment resource exists as a child resource of the admin
          # project.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. The resource name of the capacity commitment, e.g.,
          #     `projects/myproject/locations/US/capacityCommitments/123`
          #     The commitment_id must only contain lower case alphanumeric characters or
          #     dashes. It must start with a letter and must not end
          #     with a dash. Its maximum length is 64 characters.
          # @!attribute [rw] slot_count
          #   @return [::Integer]
          #     Number of slots in this commitment.
          # @!attribute [rw] plan
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment::CommitmentPlan]
          #     Capacity commitment commitment plan.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment::State]
          #     Output only. State of the commitment.
          # @!attribute [r] commitment_start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The start of the current commitment period. It is applicable
          #     only for ACTIVE capacity commitments.
          # @!attribute [r] commitment_end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The end of the current commitment period. It is applicable
          #     only for ACTIVE capacity commitments.
          # @!attribute [r] failure_status
          #   @return [::Google::Rpc::Status]
          #     Output only. For FAILED commitment plan, provides the reason of failure.
          # @!attribute [rw] renewal_plan
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment::CommitmentPlan]
          #     The plan this capacity commitment is converted to after commitment_end_time
          #     passes. Once the plan is changed, committed period is extended according to
          #     commitment plan. Only applicable for ANNUAL and TRIAL commitments.
          # @!attribute [rw] multi_region_auxiliary
          #   @return [::Boolean]
          #     Applicable only for commitments located within one of the BigQuery
          #     multi-regions (US or EU).
          #
          #     If set to true, this commitment is placed in the organization's
          #     secondary region which is designated for disaster recovery purposes.
          #     If false, this commitment is placed in the organization's default region.
          #
          #     NOTE: this is a preview feature. Project must be allow-listed in order to
          #     set this field.
          # @!attribute [rw] edition
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Edition]
          #     Edition of the capacity commitment.
          class CapacityCommitment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Commitment plan defines the current committed period. Capacity commitment
            # cannot be deleted during it's committed period.
            module CommitmentPlan
              # Invalid plan value. Requests with this value will be rejected with
              # error code `google.rpc.Code.INVALID_ARGUMENT`.
              COMMITMENT_PLAN_UNSPECIFIED = 0

              # Flex commitments have committed period of 1 minute after becoming ACTIVE.
              # After that, they are not in a committed period anymore and can be removed
              # any time.
              FLEX = 3

              # Same as FLEX, should only be used if flat-rate commitments are still
              # available.
              FLEX_FLAT_RATE = 7

              # Trial commitments have a committed period of 182 days after becoming
              # ACTIVE. After that, they are converted to a new commitment based on the
              # `renewal_plan`. Default `renewal_plan` for Trial commitment is Flex so
              # that it can be deleted right after committed period ends.
              TRIAL = 5

              # Monthly commitments have a committed period of 30 days after becoming
              # ACTIVE. After that, they are not in a committed period anymore and can be
              # removed any time.
              MONTHLY = 2

              # Same as MONTHLY, should only be used if flat-rate commitments are still
              # available.
              MONTHLY_FLAT_RATE = 8

              # Annual commitments have a committed period of 365 days after becoming
              # ACTIVE. After that they are converted to a new commitment based on the
              # renewal_plan.
              ANNUAL = 4

              # Same as ANNUAL, should only be used if flat-rate commitments are still
              # available.
              ANNUAL_FLAT_RATE = 9

              # 3-year commitments have a committed period of 1095(3 * 365) days after
              # becoming ACTIVE. After that they are converted to a new commitment based
              # on the renewal_plan.
              THREE_YEAR = 10

              # Should only be used for `renewal_plan` and is only meaningful if
              # edition is specified to values other than EDITION_UNSPECIFIED. Otherwise
              # CreateCapacityCommitmentRequest or UpdateCapacityCommitmentRequest will
              # be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`. If the
              # renewal_plan is NONE, capacity commitment will be removed at the end of
              # its commitment period.
              NONE = 6
            end

            # Capacity commitment can either become ACTIVE right away or transition
            # from PENDING to ACTIVE or FAILED.
            module State
              # Invalid state value.
              STATE_UNSPECIFIED = 0

              # Capacity commitment is pending provisioning. Pending capacity commitment
              # does not contribute to the project's slot_capacity.
              PENDING = 1

              # Once slots are provisioned, capacity commitment becomes active.
              # slot_count is added to the project's slot_capacity.
              ACTIVE = 2

              # Capacity commitment is failed to be activated by the backend.
              FAILED = 3
            end
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#create_reservation ReservationService.CreateReservation}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Project, location. E.g.,
          #     `projects/myproject/locations/US`
          # @!attribute [rw] reservation_id
          #   @return [::String]
          #     The reservation ID. It must only contain lower case alphanumeric
          #     characters or dashes. It must start with a letter and must not end
          #     with a dash. Its maximum length is 64 characters.
          # @!attribute [rw] reservation
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Reservation]
          #     Definition of the new reservation to create.
          class CreateReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_reservations ReservationService.ListReservations}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource name containing project and location, e.g.:
          #       `projects/myproject/locations/US`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return per page.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListReservationsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_reservations ReservationService.ListReservations}.
          # @!attribute [rw] reservations
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::Reservation>]
          #     List of reservations visible to the user.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class ListReservationsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#get_reservation ReservationService.GetReservation}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the reservation to retrieve. E.g.,
          #        `projects/myproject/locations/US/reservations/team1-prod`
          class GetReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#delete_reservation ReservationService.DeleteReservation}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the reservation to retrieve. E.g.,
          #        `projects/myproject/locations/US/reservations/team1-prod`
          class DeleteReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#update_reservation ReservationService.UpdateReservation}.
          # @!attribute [rw] reservation
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Reservation]
          #     Content of the reservation to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Standard field mask for the set of fields to be updated.
          class UpdateReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#create_capacity_commitment ReservationService.CreateCapacityCommitment}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Resource name of the parent reservation. E.g.,
          #        `projects/myproject/locations/US`
          # @!attribute [rw] capacity_commitment
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment]
          #     Content of the capacity commitment to create.
          # @!attribute [rw] enforce_single_admin_project_per_org
          #   @return [::Boolean]
          #     If true, fail the request if another project in the organization has a
          #     capacity commitment.
          # @!attribute [rw] capacity_commitment_id
          #   @return [::String]
          #     The optional capacity commitment ID. Capacity commitment name will be
          #     generated automatically if this field is empty.
          #     This field must only contain lower case alphanumeric characters or dashes.
          #     The first and last character cannot be a dash. Max length is 64 characters.
          #     NOTE: this ID won't be kept if the capacity commitment is split or merged.
          class CreateCapacityCommitmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_capacity_commitments ReservationService.ListCapacityCommitments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Resource name of the parent reservation. E.g.,
          #        `projects/myproject/locations/US`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListCapacityCommitmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_capacity_commitments ReservationService.ListCapacityCommitments}.
          # @!attribute [rw] capacity_commitments
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment>]
          #     List of capacity commitments visible to the user.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class ListCapacityCommitmentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#get_capacity_commitment ReservationService.GetCapacityCommitment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the capacity commitment to retrieve. E.g.,
          #        `projects/myproject/locations/US/capacityCommitments/123`
          class GetCapacityCommitmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#delete_capacity_commitment ReservationService.DeleteCapacityCommitment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the capacity commitment to delete. E.g.,
          #        `projects/myproject/locations/US/capacityCommitments/123`
          # @!attribute [rw] force
          #   @return [::Boolean]
          #     Can be used to force delete commitments even if assignments exist. Deleting
          #     commitments with assignments may cause queries to fail if they no longer
          #     have access to slots.
          class DeleteCapacityCommitmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#update_capacity_commitment ReservationService.UpdateCapacityCommitment}.
          # @!attribute [rw] capacity_commitment
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment]
          #     Content of the capacity commitment to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Standard field mask for the set of fields to be updated.
          class UpdateCapacityCommitmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#split_capacity_commitment ReservationService.SplitCapacityCommitment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The resource name e.g.,:
          #      `projects/myproject/locations/US/capacityCommitments/123`
          # @!attribute [rw] slot_count
          #   @return [::Integer]
          #     Number of slots in the capacity commitment after the split.
          class SplitCapacityCommitmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#split_capacity_commitment ReservationService.SplitCapacityCommitment}.
          # @!attribute [rw] first
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment]
          #     First capacity commitment, result of a split.
          # @!attribute [rw] second
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::CapacityCommitment]
          #     Second capacity commitment, result of a split.
          class SplitCapacityCommitmentResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#merge_capacity_commitments ReservationService.MergeCapacityCommitments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Parent resource that identifies admin project and location e.g.,
          #      `projects/myproject/locations/us`
          # @!attribute [rw] capacity_commitment_ids
          #   @return [::Array<::String>]
          #     Ids of capacity commitments to merge.
          #     These capacity commitments must exist under admin project and location
          #     specified in the parent.
          #     ID is the last portion of capacity commitment name e.g., 'abc' for
          #     projects/myproject/locations/US/capacityCommitments/abc
          class MergeCapacityCommitmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An assignment allows a project to submit jobs
          # of a certain type using slots from the specified reservation.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Name of the resource. E.g.:
          #     `projects/myproject/locations/US/reservations/team1-prod/assignments/123`.
          #     The assignment_id must only contain lower case alphanumeric characters or
          #     dashes and the max length is 64 characters.
          # @!attribute [rw] assignee
          #   @return [::String]
          #     The resource which will use the reservation. E.g.
          #     `projects/myproject`, `folders/123`, or `organizations/456`.
          # @!attribute [rw] job_type
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Assignment::JobType]
          #     Which type of jobs will use the reservation.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Assignment::State]
          #     Output only. State of the assignment.
          class Assignment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Types of job, which could be specified when using the reservation.
            module JobType
              # Invalid type. Requests with this value will be rejected with
              # error code `google.rpc.Code.INVALID_ARGUMENT`.
              JOB_TYPE_UNSPECIFIED = 0

              # Pipeline (load/export) jobs from the project will use the reservation.
              PIPELINE = 1

              # Query jobs from the project will use the reservation.
              QUERY = 2

              # BigQuery ML jobs that use services external to BigQuery for model
              # training. These jobs will not utilize idle slots from other reservations.
              ML_EXTERNAL = 3

              # Background jobs that BigQuery runs for the customers in the background.
              BACKGROUND = 4
            end

            # Assignment will remain in PENDING state if no active capacity commitment is
            # present. It will become ACTIVE when some capacity commitment becomes
            # active.
            module State
              # Invalid state value.
              STATE_UNSPECIFIED = 0

              # Queries from assignee will be executed as on-demand, if related
              # assignment is pending.
              PENDING = 1

              # Assignment is ready.
              ACTIVE = 2
            end
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#create_assignment ReservationService.CreateAssignment}.
          # Note: "bigquery.reservationAssignments.create" permission is required on the
          # related assignee.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource name of the assignment
          #     E.g. `projects/myproject/locations/US/reservations/team1-prod`
          # @!attribute [rw] assignment
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Assignment]
          #     Assignment resource to create.
          # @!attribute [rw] assignment_id
          #   @return [::String]
          #     The optional assignment ID. Assignment name will be generated automatically
          #     if this field is empty.
          #     This field must only contain lower case alphanumeric characters or dashes.
          #     Max length is 64 characters.
          class CreateAssignmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_assignments ReservationService.ListAssignments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource name e.g.:
          #
          #     `projects/myproject/locations/US/reservations/team1-prod`
          #
          #     Or:
          #
          #     `projects/myproject/locations/US/reservations/-`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return per page.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListAssignmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#list_assignments ReservationService.ListAssignments}.
          # @!attribute [rw] assignments
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::Assignment>]
          #     List of assignments visible to the user.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class ListAssignmentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#delete_assignment ReservationService.DeleteAssignment}.
          # Note: "bigquery.reservationAssignments.delete" permission is required on the
          # related assignee.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the resource, e.g.
          #       `projects/myproject/locations/US/reservations/team1-prod/assignments/123`
          class DeleteAssignmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#search_assignments ReservationService.SearchAssignments}.
          # Note: "bigquery.reservationAssignments.search" permission is required on the
          # related assignee.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The resource name of the admin project(containing project and
          #     location), e.g.:
          #       `projects/myproject/locations/US`.
          # @!attribute [rw] query
          #   @return [::String]
          #     Please specify resource name as assignee in the query.
          #
          #     Examples:
          #
          #     * `assignee=projects/myproject`
          #     * `assignee=folders/123`
          #     * `assignee=organizations/456`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return per page.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class SearchAssignmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#search_all_assignments ReservationService.SearchAllAssignments}.
          # Note: "bigquery.reservationAssignments.search" permission is required on the
          # related assignee.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The resource name with location (project name could be the
          #     wildcard '-'), e.g.:
          #       `projects/-/locations/US`.
          # @!attribute [rw] query
          #   @return [::String]
          #     Please specify resource name as assignee in the query.
          #
          #     Examples:
          #
          #     * `assignee=projects/myproject`
          #     * `assignee=folders/123`
          #     * `assignee=organizations/456`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return per page.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class SearchAllAssignmentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#search_assignments ReservationService.SearchAssignments}.
          # @!attribute [rw] assignments
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::Assignment>]
          #     List of assignments visible to the user.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class SearchAssignmentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#search_all_assignments ReservationService.SearchAllAssignments}.
          # @!attribute [rw] assignments
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::Assignment>]
          #     List of assignments visible to the user.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class SearchAllAssignmentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#move_assignment ReservationService.MoveAssignment}.
          #
          # **Note**: "bigquery.reservationAssignments.create" permission is required on
          # the destination_id.
          #
          # **Note**: "bigquery.reservationAssignments.create" and
          # "bigquery.reservationAssignments.delete" permission are required on the
          # related assignee.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The resource name of the assignment,
          #     e.g.
          #     `projects/myproject/locations/US/reservations/team1-prod/assignments/123`
          # @!attribute [rw] destination_id
          #   @return [::String]
          #     The new reservation ID, e.g.:
          #       `projects/myotherproject/locations/US/reservations/team2-prod`
          # @!attribute [rw] assignment_id
          #   @return [::String]
          #     The optional assignment ID. A new assignment name is generated if this
          #     field is empty.
          #
          #     This field can contain only lowercase alphanumeric characters or dashes.
          #     Max length is 64 characters.
          class MoveAssignmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for
          # {::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#update_assignment ReservationService.UpdateAssignment}.
          # @!attribute [rw] assignment
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::Assignment]
          #     Content of the assignment to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Standard field mask for the set of fields to be updated.
          class UpdateAssignmentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Fully qualified reference to BigQuery table.
          # Internally stored as google.cloud.bi.v1.BqTableReference.
          # @!attribute [rw] project_id
          #   @return [::String]
          #     The assigned project ID of the project.
          # @!attribute [rw] dataset_id
          #   @return [::String]
          #     The ID of the dataset in the above project.
          # @!attribute [rw] table_id
          #   @return [::String]
          #     The ID of the table in the above dataset.
          class TableReference
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a BI Reservation.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the singleton BI reservation.
          #     Reservation names have the form
          #     `projects/{project_id}/locations/{location_id}/biReservation`.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The last update timestamp of a reservation.
          # @!attribute [rw] size
          #   @return [::Integer]
          #     Size of a reservation, in bytes.
          # @!attribute [rw] preferred_tables
          #   @return [::Array<::Google::Cloud::Bigquery::Reservation::V1::TableReference>]
          #     Preferred tables to use BI capacity for.
          class BiReservation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A request to get a singleton BI reservation.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the requested reservation, for example:
          #     `projects/{project_id}/locations/{location_id}/biReservation`
          class GetBiReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A request to update a BI reservation.
          # @!attribute [rw] bi_reservation
          #   @return [::Google::Cloud::Bigquery::Reservation::V1::BiReservation]
          #     A reservation to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     A list of fields to be updated in this request.
          class UpdateBiReservationRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type of editions.
          # Different features and behaviors are provided to different editions
          # Capacity commitments and reservations are linked to editions.
          module Edition
            # Default value, which will be treated as ENTERPRISE.
            EDITION_UNSPECIFIED = 0

            # Standard edition.
            STANDARD = 1

            # Enterprise edition.
            ENTERPRISE = 2

            # Enterprise plus edition.
            ENTERPRISE_PLUS = 3
          end
        end
      end
    end
  end
end
