# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceRenderingTemplateService < StripeService
    # Updates the status of an invoice rendering template to ‘archived' so no new Stripe objects (customers, invoices, etc.) can reference it. The template can also no longer be updated. However, if the template is already set on a Stripe object, it will continue to be applied on invoices generated by it.
    def archive(template, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/archive", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List all templates, ordered by creation date, with the most recently created template appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/invoice_rendering_templates",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an invoice rendering template with the given ID. It by default returns the latest version of the template. Optionally, specify a version to see previous versions.
    def retrieve(template, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoice_rendering_templates/%<template>s", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Unarchive an invoice rendering template so it can be used on new Stripe objects again.
    def unarchive(template, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/invoice_rendering_templates/%<template>s/unarchive", { template: CGI.escape(template) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
