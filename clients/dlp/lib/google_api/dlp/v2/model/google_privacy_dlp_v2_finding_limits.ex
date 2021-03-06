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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  @moduledoc """


  ## Attributes

  - maxFindingsPerInfoType ([GooglePrivacyDlpV2InfoTypeLimit]): Configuration of findings limit given for specified infoTypes. Defaults to: `null`.
  - maxFindingsPerItem (integer()): Max number of findings that will be returned for each item scanned. When set within &#x60;InspectDataSourceRequest&#x60;, the maximum returned is 1000 regardless if this is set higher. When set within &#x60;InspectContentRequest&#x60;, this field is ignored. Defaults to: `null`.
  - maxFindingsPerRequest (integer()): Max number of findings that will be returned per request/job. When set within &#x60;InspectContentRequest&#x60;, the maximum returned is 1000 regardless if this is set higher. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxFindingsPerInfoType =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeLimit.t()),
          :maxFindingsPerItem => any(),
          :maxFindingsPerRequest => any()
        }

  field(
    :maxFindingsPerInfoType,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeLimit,
    type: :list
  )

  field(:maxFindingsPerItem)
  field(:maxFindingsPerRequest)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
