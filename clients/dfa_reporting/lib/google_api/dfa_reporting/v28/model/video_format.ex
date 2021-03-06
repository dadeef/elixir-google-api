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

defmodule GoogleApi.DFAReporting.V28.Model.VideoFormat do
  @moduledoc """
  Contains information about supported video formats.

  ## Attributes

  - fileType (String.t): File type of the video format. Defaults to: `null`.
    - Enum - one of [FLV, M3U8, MP4, THREEGPP, WEBM]
  - id (integer()): ID of the video format. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#videoFormat\&quot;. Defaults to: `null`.
  - resolution (Size): The resolution of this video format. Defaults to: `null`.
  - targetBitRate (integer()): The target bit rate of this video format. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileType => any(),
          :id => any(),
          :kind => any(),
          :resolution => GoogleApi.DFAReporting.V28.Model.Size.t(),
          :targetBitRate => any()
        }

  field(:fileType)
  field(:id)
  field(:kind)
  field(:resolution, as: GoogleApi.DFAReporting.V28.Model.Size)
  field(:targetBitRate)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.VideoFormat do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.VideoFormat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.VideoFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
