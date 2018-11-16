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

defmodule GoogleApi.Analytics.V3.Model.RemarketingAudience do
  @moduledoc """
  JSON template for an Analytics remarketing audience.

  ## Attributes

  - accountId (String.t): Account ID to which this remarketing audience belongs. Defaults to: `null`.
  - audienceDefinition (RemarketingAudienceAudienceDefinition):  Defaults to: `null`.
  - audienceType (String.t): The type of audience, either SIMPLE or STATE_BASED. Defaults to: `null`.
  - created (DateTime.t): Time this remarketing audience was created. Defaults to: `null`.
  - description (String.t): The description of this remarketing audience. Defaults to: `null`.
  - id (String.t): Remarketing Audience ID. Defaults to: `null`.
  - internalWebPropertyId (String.t): Internal ID for the web property to which this remarketing audience belongs. Defaults to: `null`.
  - kind (String.t): Collection type. Defaults to: `null`.
  - linkedAdAccounts ([LinkedForeignAccount]): The linked ad accounts associated with this remarketing audience. A remarketing audience can have only one linkedAdAccount currently. Defaults to: `null`.
  - linkedViews ([String.t]): The views (profiles) that this remarketing audience is linked to. Defaults to: `null`.
  - name (String.t): The name of this remarketing audience. Defaults to: `null`.
  - stateBasedAudienceDefinition (RemarketingAudienceStateBasedAudienceDefinition):  Defaults to: `null`.
  - updated (DateTime.t): Time this remarketing audience was last modified. Defaults to: `null`.
  - webPropertyId (String.t): Web property ID of the form UA-XXXXX-YY to which this remarketing audience belongs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :audienceDefinition =>
            GoogleApi.Analytics.V3.Model.RemarketingAudienceAudienceDefinition.t(),
          :audienceType => any(),
          :created => DateTime.t(),
          :description => any(),
          :id => any(),
          :internalWebPropertyId => any(),
          :kind => any(),
          :linkedAdAccounts => list(GoogleApi.Analytics.V3.Model.LinkedForeignAccount.t()),
          :linkedViews => list(any()),
          :name => any(),
          :stateBasedAudienceDefinition =>
            GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinition.t(),
          :updated => DateTime.t(),
          :webPropertyId => any()
        }

  field(:accountId)

  field(
    :audienceDefinition,
    as: GoogleApi.Analytics.V3.Model.RemarketingAudienceAudienceDefinition
  )

  field(:audienceType)
  field(:created, as: DateTime)
  field(:description)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:linkedAdAccounts, as: GoogleApi.Analytics.V3.Model.LinkedForeignAccount, type: :list)
  field(:linkedViews, type: :list)
  field(:name)

  field(
    :stateBasedAudienceDefinition,
    as: GoogleApi.Analytics.V3.Model.RemarketingAudienceStateBasedAudienceDefinition
  )

  field(:updated, as: DateTime)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudience do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RemarketingAudience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end