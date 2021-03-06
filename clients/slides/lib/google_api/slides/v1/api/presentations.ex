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

defmodule GoogleApi.Slides.V1.Api.Presentations do
  @moduledoc """
  API calls for all endpoints tagged `Presentations`.
  """

  alias GoogleApi.Slides.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Applies one or more updates to the presentation.  Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied.  Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests.  For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies: the reply to the third request, and another empty reply, in that order.  Because other users may be editing the presentation, the presentation might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the presentation should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.

  ## Parameters

  - connection (GoogleApi.Slides.V1.Connection): Connection to server
  - presentation_id (String.t): The presentation to apply the updates to.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (BatchUpdatePresentationRequest): 

  ## Returns

  {:ok, %GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse{}} on success
  {:error, info} on failure
  """
  @spec slides_presentations_batch_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse.t()}
          | {:error, Tesla.Env.t()}
  def slides_presentations_batch_update(
        connection,
        presentation_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/presentations/{presentationId}:batchUpdate", %{
        "presentationId" => URI.encode_www_form(presentation_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Slides.V1.Model.BatchUpdatePresentationResponse{}]
    )
  end

  @doc """
  Creates a blank presentation using the title given in the request. If a &#x60;presentationId&#x60; is provided, it is used as the ID of the new presentation. Otherwise, a new ID is generated. Other fields in the request, including any provided content, are ignored. Returns the created presentation.

  ## Parameters

  - connection (GoogleApi.Slides.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Presentation): 

  ## Returns

  {:ok, %GoogleApi.Slides.V1.Model.Presentation{}} on success
  {:error, info} on failure
  """
  @spec slides_presentations_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.Presentation.t()} | {:error, Tesla.Env.t()}
  def slides_presentations_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/presentations")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Presentation{}])
  end

  @doc """
  Gets the latest version of the specified presentation.

  ## Parameters

  - connection (GoogleApi.Slides.V1.Connection): Connection to server
  - presentation_id (String.t): The ID of the presentation to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Slides.V1.Model.Presentation{}} on success
  {:error, info} on failure
  """
  @spec slides_presentations_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.Presentation.t()} | {:error, Tesla.Env.t()}
  def slides_presentations_get(connection, presentation_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{+presentationId}", %{
        "presentationId" => URI.encode_www_form(presentation_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Presentation{}])
  end

  @doc """
  Gets the latest version of the specified page in the presentation.

  ## Parameters

  - connection (GoogleApi.Slides.V1.Connection): Connection to server
  - presentation_id (String.t): The ID of the presentation to retrieve.
  - page_object_id (String.t): The object ID of the page to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Slides.V1.Model.Page{}} on success
  {:error, info} on failure
  """
  @spec slides_presentations_pages_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Slides.V1.Model.Page.t()} | {:error, Tesla.Env.t()}
  def slides_presentations_pages_get(
        connection,
        presentation_id,
        page_object_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{presentationId}/pages/{pageObjectId}", %{
        "presentationId" => URI.encode_www_form(presentation_id),
        "pageObjectId" => URI.encode_www_form(page_object_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Page{}])
  end

  @doc """
  Generates a thumbnail of the latest version of the specified page in the presentation and returns a URL to the thumbnail image.  This request counts as an [expensive read request](/slides/limits) for quota purposes.

  ## Parameters

  - connection (GoogleApi.Slides.V1.Connection): Connection to server
  - presentation_id (String.t): The ID of the presentation to retrieve.
  - page_object_id (String.t): The object ID of the page whose thumbnail to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :thumbnailProperties.mimeType (String.t): The optional mime type of the thumbnail image.  If you don&#39;t specify the mime type, the default mime type will be PNG.
    - :thumbnailProperties.thumbnailSize (String.t): The optional thumbnail image size.  If you don&#39;t specify the size, the server chooses a default size of the image.

  ## Returns

  {:ok, %GoogleApi.Slides.V1.Model.Thumbnail{}} on success
  {:error, info} on failure
  """
  @spec slides_presentations_pages_get_thumbnail(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Slides.V1.Model.Thumbnail.t()} | {:error, Tesla.Env.t()}
  def slides_presentations_pages_get_thumbnail(
        connection,
        presentation_id,
        page_object_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :"thumbnailProperties.mimeType" => :query,
      :"thumbnailProperties.thumbnailSize" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/presentations/{presentationId}/pages/{pageObjectId}/thumbnail", %{
        "presentationId" => URI.encode_www_form(presentation_id),
        "pageObjectId" => URI.encode_www_form(page_object_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Slides.V1.Model.Thumbnail{}])
  end
end
