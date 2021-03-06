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

defmodule GoogleApi.Container.V1.Model.SetLocationsRequest do
  @moduledoc """
  SetLocationsRequest sets the locations of the cluster.

  ## Attributes

  - clusterId (String.t): Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. Defaults to: `null`.
  - locations ([String.t]): The desired list of Google Compute Engine [zones](/compute/docs/zones#available) in which the cluster&#39;s nodes should be located. Changing the locations a cluster is in will result in nodes being either created or removed from the cluster, depending on whether locations are being added or removed.  This list must always include the cluster&#39;s primary zone. Defaults to: `null`.
  - name (String.t): The name (project, location, cluster) of the cluster to set locations. Specified in the format &#39;projects/*/locations/*/clusters/*&#39;. Defaults to: `null`.
  - projectId (String.t): Deprecated. The Google Developers Console [project ID or project number](https://support.google.com/cloud/answer/6158840). This field has been deprecated and replaced by the name field. Defaults to: `null`.
  - zone (String.t): Deprecated. The name of the Google Compute Engine [zone](/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => any(),
          :locations => list(any()),
          :name => any(),
          :projectId => any(),
          :zone => any()
        }

  field(:clusterId)
  field(:locations, type: :list)
  field(:name)
  field(:projectId)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetLocationsRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SetLocationsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetLocationsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
