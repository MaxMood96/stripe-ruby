# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve
  # individual top-ups, as well as list all top-ups. Top-ups are identified by a
  # unique, random ID.
  #
  # Related guide: [Topping up your platform account](https://stripe.com/docs/connect/top-ups)
  class Topup < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "topup"
    def self.object_name
      "topup"
    end

    class ListParams < Stripe::RequestParams
      class Amount < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # A positive integer representing how much to transfer.
      attr_accessor :amount
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
      attr_accessor :status

      def initialize(
        amount: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      )
        @amount = amount
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end

    class CreateParams < Stripe::RequestParams
      # A positive integer representing how much to transfer.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https://stripe.com/docs/connect/testing#testing-top-ups)).
      attr_accessor :source
      # Extra information about a top-up for the source's bank statement. Limited to 15 ASCII characters.
      attr_accessor :statement_descriptor
      # A string that identifies this top-up as part of a group.
      attr_accessor :transfer_group

      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        source: nil,
        statement_descriptor: nil,
        transfer_group: nil
      )
        @amount = amount
        @currency = currency
        @description = description
        @expand = expand
        @metadata = metadata
        @source = source
        @statement_descriptor = statement_descriptor
        @transfer_group = transfer_group
      end
    end

    class UpdateParams < Stripe::RequestParams
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(description: nil, expand: nil, metadata: nil)
        @description = description
        @expand = expand
        @metadata = metadata
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end
    # Amount transferred.
    attr_reader :amount
    # ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
    attr_reader :balance_transaction
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    attr_reader :expected_availability_date
    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    attr_reader :failure_code
    # Message to user further explaining reason for top-up failure if available.
    attr_reader :failure_message
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The source field is deprecated. It might not always be present in the API response.
    attr_reader :source
    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    attr_reader :statement_descriptor
    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    attr_reader :status
    # A string that identifies this top-up as part of a group.
    attr_reader :transfer_group

    # Cancels a top-up. Only pending top-ups can be canceled.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels a top-up. Only pending top-ups can be canceled.
    def self.cancel(topup, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts
      )
    end

    # Top up the balance of an account
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/topups", params: params, opts: opts)
    end

    # Returns a list of top-ups.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/topups", params: params, opts: opts)
    end

    # Updates the metadata of a top-up. Other top-up details are not editable by design.
    def self.update(topup, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts
      )
    end
  end
end
