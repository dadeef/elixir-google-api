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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  @moduledoc """
  A single resource related to a threat hit.

  ## Attributes

  - referrer (String.t): Referrer of the resource. Only set if the referrer is available. Defaults to: `null`.
  - remoteIp (String.t): The remote IP of the resource in ASCII format. Either IPv4 or IPv6. Defaults to: `null`.
  - type (String.t): The type of source reported. Defaults to: `null`.
    - Enum - one of [THREAT_SOURCE_TYPE_UNSPECIFIED, MATCHING_URL, TAB_URL, TAB_REDIRECT, TAB_RESOURCE]
  - url (String.t): The URL of the resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :referrer => any(),
          :remoteIp => any(),
          :type => any(),
          :url => any()
        }

  field(:referrer)
  field(:remoteIp)
  field(:type)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ThreatSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
