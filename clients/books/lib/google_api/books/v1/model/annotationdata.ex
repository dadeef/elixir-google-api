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

defmodule GoogleApi.Books.V1.Model.Annotationdata do
  @moduledoc """


  ## Attributes

  - annotationType (String.t): The type of annotation this data is for. Defaults to: `null`.
  - data (String.t):  Defaults to: `null`.
  - encoded_data (binary()): Base64 encoded data for this annotation data. Defaults to: `null`.
  - id (String.t): Unique id for this annotation data. Defaults to: `null`.
  - kind (String.t): Resource Type Defaults to: `null`.
  - layerId (String.t): The Layer id for this data. * Defaults to: `null`.
  - selfLink (String.t): URL for this resource. * Defaults to: `null`.
  - updated (DateTime.t): Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format). Defaults to: `null`.
  - volumeId (String.t): The volume id for this data. * Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationType => any(),
          :data => any(),
          :encoded_data => any(),
          :id => any(),
          :kind => any(),
          :layerId => any(),
          :selfLink => any(),
          :updated => DateTime.t(),
          :volumeId => any()
        }

  field(:annotationType)
  field(:data)
  field(:encoded_data)
  field(:id)
  field(:kind)
  field(:layerId)
  field(:selfLink)
  field(:updated, as: DateTime)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Annotationdata do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Annotationdata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Annotationdata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
