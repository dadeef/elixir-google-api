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

defmodule GoogleApi.Content.V2.Model.OrderLineItem do
  @moduledoc """


  ## Attributes

  - annotations ([OrderMerchantProvidedAnnotation]): Annotations that are attached to the line item. Defaults to: `null`.
  - cancellations ([OrderCancellation]): Cancellations of the line item. Defaults to: `null`.
  - id (String.t): The ID of the line item. Defaults to: `null`.
  - price (Price): Total price for the line item. For example, if two items for $10 are purchased, the total price will be $20. Defaults to: `null`.
  - product (OrderLineItemProduct): Product data as seen by customer from the time of the order placement. Note that certain attributes values (e.g. title or gtin) might be reformatted and no longer match values submitted via product feed. Defaults to: `null`.
  - quantityCanceled (integer()): Number of items canceled. Defaults to: `null`.
  - quantityDelivered (integer()): Number of items delivered. Defaults to: `null`.
  - quantityOrdered (integer()): Number of items ordered. Defaults to: `null`.
  - quantityPending (integer()): Number of items pending. Defaults to: `null`.
  - quantityReturned (integer()): Number of items returned. Defaults to: `null`.
  - quantityShipped (integer()): Number of items shipped. Defaults to: `null`.
  - returnInfo (OrderLineItemReturnInfo): Details of the return policy for the line item. Defaults to: `null`.
  - returns ([OrderReturn]): Returns of the line item. Defaults to: `null`.
  - shippingDetails (OrderLineItemShippingDetails): Details of the requested shipping for the line item. Defaults to: `null`.
  - tax (Price): Total tax amount for the line item. For example, if two items are purchased, and each have a cost tax of $2, the total tax amount will be $4. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => list(GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation.t()),
          :cancellations => list(GoogleApi.Content.V2.Model.OrderCancellation.t()),
          :id => any(),
          :price => GoogleApi.Content.V2.Model.Price.t(),
          :product => GoogleApi.Content.V2.Model.OrderLineItemProduct.t(),
          :quantityCanceled => any(),
          :quantityDelivered => any(),
          :quantityOrdered => any(),
          :quantityPending => any(),
          :quantityReturned => any(),
          :quantityShipped => any(),
          :returnInfo => GoogleApi.Content.V2.Model.OrderLineItemReturnInfo.t(),
          :returns => list(GoogleApi.Content.V2.Model.OrderReturn.t()),
          :shippingDetails => GoogleApi.Content.V2.Model.OrderLineItemShippingDetails.t(),
          :tax => GoogleApi.Content.V2.Model.Price.t()
        }

  field(:annotations, as: GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation, type: :list)
  field(:cancellations, as: GoogleApi.Content.V2.Model.OrderCancellation, type: :list)
  field(:id)
  field(:price, as: GoogleApi.Content.V2.Model.Price)
  field(:product, as: GoogleApi.Content.V2.Model.OrderLineItemProduct)
  field(:quantityCanceled)
  field(:quantityDelivered)
  field(:quantityOrdered)
  field(:quantityPending)
  field(:quantityReturned)
  field(:quantityShipped)
  field(:returnInfo, as: GoogleApi.Content.V2.Model.OrderLineItemReturnInfo)
  field(:returns, as: GoogleApi.Content.V2.Model.OrderReturn, type: :list)
  field(:shippingDetails, as: GoogleApi.Content.V2.Model.OrderLineItemShippingDetails)
  field(:tax, as: GoogleApi.Content.V2.Model.Price)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderLineItem do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderLineItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderLineItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
