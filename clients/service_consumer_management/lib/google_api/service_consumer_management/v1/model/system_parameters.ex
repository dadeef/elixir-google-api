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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters do
  @moduledoc """
  ### System parameter configuration  A system parameter is a special kind of parameter defined by the API system, not by an individual API. It is typically mapped to an HTTP header and/or a URL query parameter. This configuration specifies which methods change the names of the system parameters.

  ## Attributes

  - rules ([SystemParameterRule]): Define system parameters.  The parameters defined here will override the default parameters implemented by the system. If this field is missing from the service config, default system parameters will be used. Default system parameters and names is implementation-dependent.  Example: define api key for all methods      system_parameters       rules:         - selector: \&quot;*\&quot;           parameters:             - name: api_key               url_query_parameter: api_key   Example: define 2 api key names for a specific method.      system_parameters       rules:         - selector: \&quot;/ListShelves\&quot;           parameters:             - name: api_key               http_header: Api-Key1             - name: api_key               http_header: Api-Key2  **NOTE:** All service configuration rules follow \&quot;last one wins\&quot; order. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rules => list(GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameterRule.t())
        }

  field(:rules, as: GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameterRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
