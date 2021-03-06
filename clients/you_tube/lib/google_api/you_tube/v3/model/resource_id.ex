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

defmodule GoogleApi.YouTube.V3.Model.ResourceId do
  @moduledoc """
  A resource id is a generic reference that points to another YouTube resource.

  ## Attributes

  - channelId (String.t): The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel. Defaults to: `null`.
  - kind (String.t): The type of the API resource. Defaults to: `null`.
  - playlistId (String.t): The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist. Defaults to: `null`.
  - videoId (String.t): The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelId => any(),
          :kind => any(),
          :playlistId => any(),
          :videoId => any()
        }

  field(:channelId)
  field(:kind)
  field(:playlistId)
  field(:videoId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ResourceId do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ResourceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ResourceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
