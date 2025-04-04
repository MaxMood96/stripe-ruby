# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ConfirmationTokenService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Retrieves an existing ConfirmationToken object
    def retrieve(confirmation_token, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/confirmation_tokens/%<confirmation_token>s", { confirmation_token: CGI.escape(confirmation_token) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
