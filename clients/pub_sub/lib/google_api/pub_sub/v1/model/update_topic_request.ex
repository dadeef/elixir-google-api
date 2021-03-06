# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.PubSub.V1.Model.UpdateTopicRequest do
  @moduledoc """
  Request for the UpdateTopic method.

  ## Attributes

  - topic (Topic): The updated topic object. Defaults to: `null`.
  - updateMask (String.t): Indicates which fields in the provided topic to update. Must be specified and non-empty. Note that if &#x60;update_mask&#x60; contains \&quot;message_storage_policy\&quot; then the new value will be determined based on the policy configured at the project or organization level. The &#x60;message_storage_policy&#x60; must not be set in the &#x60;topic&#x60; provided above. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :topic => GoogleApi.PubSub.V1.Model.Topic.t(),
          :updateMask => any()
        }

  field(:topic, as: GoogleApi.PubSub.V1.Model.Topic)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.UpdateTopicRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.UpdateTopicRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.UpdateTopicRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
