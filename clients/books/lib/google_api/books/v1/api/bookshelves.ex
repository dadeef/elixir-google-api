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

defmodule GoogleApi.Books.V1.Api.Bookshelves do
  @moduledoc """
  API calls for all endpoints tagged `Bookshelves`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves metadata for a specific bookshelf for the specified user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - user_id (String.t): ID of user for whom to retrieve bookshelves.
  - shelf (String.t): ID of bookshelf to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Bookshelf{}} on success
  {:error, info} on failure
  """
  @spec books_bookshelves_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelf.t()} | {:error, Tesla.Env.t()}
  def books_bookshelves_get(connection, user_id, shelf, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/bookshelves/{shelf}", %{
        "userId" => URI.encode_www_form(user_id),
        "shelf" => URI.encode_www_form(shelf)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Books.V1.Model.Bookshelf{})
  end

  @doc """
  Retrieves a list of public bookshelves for the specified user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - user_id (String.t): ID of user for whom to retrieve bookshelves.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Bookshelves{}} on success
  {:error, info} on failure
  """
  @spec books_bookshelves_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelves.t()} | {:error, Tesla.Env.t()}
  def books_bookshelves_list(connection, user_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/bookshelves", %{
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Books.V1.Model.Bookshelves{})
  end

  @doc """
  Retrieves volumes in a specific bookshelf for the specified user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - user_id (String.t): ID of user for whom to retrieve bookshelf volumes.
  - shelf (String.t): ID of bookshelf to retrieve volumes.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of results to return
    - :showPreorders (boolean()): Set to true to show pre-ordered books. Defaults to false.
    - :source (String.t): String to identify the originator of this request.
    - :startIndex (integer()): Index of the first element to return (starts at 0)

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_bookshelves_volumes_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_bookshelves_volumes_list(connection, user_id, shelf, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :showPreorders => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userId}/bookshelves/{shelf}/volumes", %{
        "userId" => URI.encode_www_form(user_id),
        "shelf" => URI.encode_www_form(shelf)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Books.V1.Model.Volumes{})
  end
end
