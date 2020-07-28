# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/texttospeech/v1beta1/cloud_tts.proto for package 'Google.Cloud.TextToSpeech.V1beta1'
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

require 'grpc'
require 'google/cloud/texttospeech/v1beta1/cloud_tts_pb'

module Google
  module Cloud
    module TextToSpeech
      module V1beta1
        module TextToSpeech
          # Service that implements Google Cloud Text-to-Speech API.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.texttospeech.v1beta1.TextToSpeech'

            # Returns a list of Voice supported for synthesis.
            rpc :ListVoices, Google::Cloud::TextToSpeech::V1beta1::ListVoicesRequest, Google::Cloud::TextToSpeech::V1beta1::ListVoicesResponse
            # Synthesizes speech synchronously: receive results after all text input
            # has been processed.
            rpc :SynthesizeSpeech, Google::Cloud::TextToSpeech::V1beta1::SynthesizeSpeechRequest, Google::Cloud::TextToSpeech::V1beta1::SynthesizeSpeechResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
