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

defmodule GoogleApi.Content.V2.Model.TransitTable do
  @moduledoc """


  ## Attributes

  - postalCodeGroupNames ([String.t]): A list of postal group names. The last value can be \&quot;all other locations\&quot;. Example: [\&quot;zone 1\&quot;, \&quot;zone 2\&quot;, \&quot;all other locations\&quot;]. The referred postal code groups must match the delivery country of the service. Defaults to: `null`.
  - rows ([TransitTableTransitTimeRow]):  Defaults to: `null`.
  - transitTimeLabels ([String.t]): A list of transit time labels. The last value can be \&quot;all other labels\&quot;. Example: [\&quot;food\&quot;, \&quot;electronics\&quot;, \&quot;all other labels\&quot;]. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postalCodeGroupNames => list(any()),
          :rows => list(GoogleApi.Content.V2.Model.TransitTableTransitTimeRow.t()),
          :transitTimeLabels => list(any())
        }

  field(:postalCodeGroupNames, type: :list)
  field(:rows, as: GoogleApi.Content.V2.Model.TransitTableTransitTimeRow, type: :list)
  field(:transitTimeLabels, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.TransitTable do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.TransitTable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.TransitTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
