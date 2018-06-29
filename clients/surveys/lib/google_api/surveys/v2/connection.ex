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

defmodule GoogleApi.Surveys.V2.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Surveys.V2.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # View and manage your surveys and results
      "https://www.googleapis.com/auth/surveys",
      # View your surveys and survey results
      "https://www.googleapis.com/auth/surveys.readonly",
      # View your email address
      "https://www.googleapis.com/auth/userinfo.email"
    ],
    otp_app: :google_api_surveys,
    base_url: "https://www.googleapis.com/surveys/v2"
end
