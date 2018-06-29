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

defmodule GoogleApi.Surveys.V2.Model.SurveyCost do
  @moduledoc """
  Message defining the cost to run a given survey through API.

  ## Attributes

  - costPerResponseNanos (String.t): Cost per survey response in nano units of the given currency. To get the total cost for a survey, multiply this value by wanted_response_count. Defaults to: `null`.
  - currencyCode (String.t): Currency code that the cost is given in. Defaults to: `null`.
  - maxCostPerResponseNanos (String.t): *Deprecated* Threshold to start a survey automatically if the quoted price is at most this value. When a survey has a Screener (threshold) question, it must go through an incidence pricing test to determine the final cost per response. Typically you will have to make a followup call to start the survey giving the final computed cost per response. If the survey has no threshold_answers, setting this property will return an error. By specifying this property, you indicate the max price per response you are willing to pay in advance of the incidence test. If the price turns out to be lower than the specified value, the survey will begin immediately and you will be charged at the rate determined by the incidence pricing test. If the price turns out to be greater than the specified value the survey will not be started and you will instead be notified what price was determined by the incidence test. At that point, you must raise the value of this property to be greater than or equal to that cost before attempting to start the survey again. This will immediately start the survey as long the incidence test was run within the last 21 days. This will no longer be available after June 2018. Defaults to: `null`.
  - nanos (String.t): Cost of survey in nano units of the given currency. DEPRECATED in favor of cost_per_response_nanos Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :costPerResponseNanos => any(),
          :currencyCode => any(),
          :maxCostPerResponseNanos => any(),
          :nanos => any()
        }

  field(:costPerResponseNanos)
  field(:currencyCode)
  field(:maxCostPerResponseNanos)
  field(:nanos)
end

defimpl Poison.Decoder, for: GoogleApi.Surveys.V2.Model.SurveyCost do
  def decode(value, options) do
    GoogleApi.Surveys.V2.Model.SurveyCost.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Surveys.V2.Model.SurveyCost do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
