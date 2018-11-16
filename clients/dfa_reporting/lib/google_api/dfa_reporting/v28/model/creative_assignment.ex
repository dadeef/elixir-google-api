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

defmodule GoogleApi.DFAReporting.V28.Model.CreativeAssignment do
  @moduledoc """
  Creative Assignment.

  ## Attributes

  - active (boolean()): Whether this creative assignment is active. When true, the creative will be included in the ad&#39;s rotation. Defaults to: `null`.
  - applyEventTags (boolean()): Whether applicable event tags should fire when this creative assignment is rendered. If this value is unset when the ad is inserted or updated, it will default to true for all creative types EXCEPT for INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO. Defaults to: `null`.
  - clickThroughUrl (ClickThroughUrl): Click-through URL of the creative assignment. Defaults to: `null`.
  - companionCreativeOverrides ([CompanionClickThroughOverride]): Companion creative overrides for this creative assignment. Applicable to video ads. Defaults to: `null`.
  - creativeGroupAssignments ([CreativeGroupAssignment]): Creative group assignments for this creative assignment. Only one assignment per creative group number is allowed for a maximum of two assignments. Defaults to: `null`.
  - creativeId (String.t): ID of the creative to be assigned. This is a required field. Defaults to: `null`.
  - creativeIdDimensionValue (DimensionValue): Dimension value for the ID of the creative. This is a read-only, auto-generated field. Defaults to: `null`.
  - endTime (DateTime.t): Date and time that the assigned creative should stop serving. Must be later than the start time. Defaults to: `null`.
  - richMediaExitOverrides ([RichMediaExitOverride]): Rich media exit overrides for this creative assignment. Applicable when the creative type is any of the following:  - DISPLAY - RICH_MEDIA_INPAGE - RICH_MEDIA_INPAGE_FLOATING - RICH_MEDIA_IM_EXPAND - RICH_MEDIA_EXPANDING - RICH_MEDIA_INTERSTITIAL_FLOAT - RICH_MEDIA_MOBILE_IN_APP - RICH_MEDIA_MULTI_FLOATING - RICH_MEDIA_PEEL_DOWN - VPAID_LINEAR - VPAID_NON_LINEAR Defaults to: `null`.
  - sequence (integer()): Sequence number of the creative assignment, applicable when the rotation type is CREATIVE_ROTATION_TYPE_SEQUENTIAL. Acceptable values are 1 to 65535, inclusive. Defaults to: `null`.
  - sslCompliant (boolean()): Whether the creative to be assigned is SSL-compliant. This is a read-only field that is auto-generated when the ad is inserted or updated. Defaults to: `null`.
  - startTime (DateTime.t): Date and time that the assigned creative should start serving. Defaults to: `null`.
  - weight (integer()): Weight of the creative assignment, applicable when the rotation type is CREATIVE_ROTATION_TYPE_RANDOM. Value must be greater than or equal to 1. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :active => any(),
          :applyEventTags => any(),
          :clickThroughUrl => GoogleApi.DFAReporting.V28.Model.ClickThroughUrl.t(),
          :companionCreativeOverrides =>
            list(GoogleApi.DFAReporting.V28.Model.CompanionClickThroughOverride.t()),
          :creativeGroupAssignments =>
            list(GoogleApi.DFAReporting.V28.Model.CreativeGroupAssignment.t()),
          :creativeId => any(),
          :creativeIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :endTime => DateTime.t(),
          :richMediaExitOverrides =>
            list(GoogleApi.DFAReporting.V28.Model.RichMediaExitOverride.t()),
          :sequence => any(),
          :sslCompliant => any(),
          :startTime => DateTime.t(),
          :weight => any()
        }

  field(:active)
  field(:applyEventTags)
  field(:clickThroughUrl, as: GoogleApi.DFAReporting.V28.Model.ClickThroughUrl)

  field(
    :companionCreativeOverrides,
    as: GoogleApi.DFAReporting.V28.Model.CompanionClickThroughOverride,
    type: :list
  )

  field(
    :creativeGroupAssignments,
    as: GoogleApi.DFAReporting.V28.Model.CreativeGroupAssignment,
    type: :list
  )

  field(:creativeId)
  field(:creativeIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:endTime, as: DateTime)

  field(
    :richMediaExitOverrides,
    as: GoogleApi.DFAReporting.V28.Model.RichMediaExitOverride,
    type: :list
  )

  field(:sequence)
  field(:sslCompliant)
  field(:startTime, as: DateTime)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CreativeAssignment do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CreativeAssignment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CreativeAssignment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end