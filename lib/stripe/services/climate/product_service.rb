# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    class ProductService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Lists all available Climate product objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/climate/products",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a Climate product with the given ID.
      def retrieve(product, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/climate/products/%<product>s", { product: CGI.escape(product) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
