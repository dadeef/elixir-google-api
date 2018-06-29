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

defmodule GoogleApi.Books.V1.Model.Volumeannotations do
  @moduledoc """


  ## Attributes

  - items ([Volumeannotation]): A list of volume annotations. Defaults to: `null`.
  - kind (String.t): Resource type Defaults to: `null`.
  - nextPageToken (String.t): Token to pass in for pagination for the next page. This will not be present if this request does not have more results. Defaults to: `null`.
  - totalItems (integer()): The total number of volume annotations found. Defaults to: `null`.
  - version (String.t): The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn&#39;t apply to the annotation data, just the information in this response (e.g. the location of annotations in the book). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Books.V1.Model.Volumeannotation.t()),
          :kind => any(),
          :nextPageToken => any(),
          :totalItems => any(),
          :version => any()
        }

  field(:items, as: GoogleApi.Books.V1.Model.Volumeannotation, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:totalItems)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Volumeannotations do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Volumeannotations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Volumeannotations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
