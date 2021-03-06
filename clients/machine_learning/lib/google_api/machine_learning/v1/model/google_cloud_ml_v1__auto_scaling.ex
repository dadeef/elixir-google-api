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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling do
  @moduledoc """
  Options for automatically scaling a model.

  ## Attributes

  - minNodes (integer()): Optional. The minimum number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed. Therefore, the cost of operating this model will be at least &#x60;rate&#x60; * &#x60;min_nodes&#x60; * number of hours since last billing cycle, where &#x60;rate&#x60; is the cost per node-hour as documented in the [pricing guide](/ml-engine/docs/pricing), even if no predictions are performed. There is additional cost for each prediction performed.  Unlike manual scaling, if the load gets too heavy for the nodes that are up, the service will automatically add nodes to handle the increased load as well as scale back as traffic drops, always maintaining at least &#x60;min_nodes&#x60;. You will be charged for the time in which additional nodes are used.  If not specified, &#x60;min_nodes&#x60; defaults to 0, in which case, when traffic to a model stops (and after a cool-down period), nodes will be shut down and no charges will be incurred until traffic to the model resumes.  You can set &#x60;min_nodes&#x60; when creating the model version, and you can also update &#x60;min_nodes&#x60; for an existing version: &lt;pre&gt; update_body.json: {   &#39;autoScaling&#39;: {     &#39;minNodes&#39;: 5   } } &lt;/pre&gt; HTTP request: &lt;pre&gt; PATCH https://ml.googleapis.com/v1/{name&#x3D;projects/*/models/*/versions/*}?update_mask&#x3D;autoScaling.minNodes -d @./update_body.json &lt;/pre&gt; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :minNodes => any()
        }

  field(:minNodes)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1AutoScaling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
