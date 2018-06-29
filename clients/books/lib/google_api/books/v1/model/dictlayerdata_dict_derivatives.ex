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

defmodule GoogleApi.Books.V1.Model.DictlayerdataDictDerivatives do
  @moduledoc """


  ## Attributes

  - source (DictlayerdataDictSource1):  Defaults to: `null`.
  - text (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :source => GoogleApi.Books.V1.Model.DictlayerdataDictSource1.t(),
          :text => any()
        }

  field(:source, as: GoogleApi.Books.V1.Model.DictlayerdataDictSource1)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.DictlayerdataDictDerivatives do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.DictlayerdataDictDerivatives.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.DictlayerdataDictDerivatives do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
