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

defmodule GoogleApi.YouTube.V3.Model.ChannelSectionTargeting do
  @moduledoc """
  ChannelSection targeting setting.

  ## Attributes

  - countries ([String.t]): The country the channel section is targeting. Defaults to: `null`.
  - languages ([String.t]): The language the channel section is targeting. Defaults to: `null`.
  - regions ([String.t]): The region the channel section is targeting. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countries => list(any()),
          :languages => list(any()),
          :regions => list(any())
        }

  field(:countries, type: :list)
  field(:languages, type: :list)
  field(:regions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionTargeting do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ChannelSectionTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ChannelSectionTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
