PiggybakVariants Gem (Engine) --- This is a custom fork

========

Advanced variant support for Piggybak.

This variant gem varies from the original piggybak_variants gem found <a href="https://github.com/piggybak/piggybak_variants">here</a>

This gem is based of sprees variant modeling system which is talked about in End Points Blog. You can read more about it <a href="http://blog.endpoint.com/2012/12/advanced-product-options-variants-in.html">here</a>.

You no longer need to have subclasses for each type of product. You can have one product model. and each product has many variants and many options.

Install
========

In your Gemfile add `gem "piggybak_variants"`

Run `bundle install`

Run `rake piggybak_variants:install:migrations`

Migrate the DB `rake db:migrate`

Add `acts_as_sellable_with_variants` to any model that should have variants (like your Product model). 

Add `attr_accessable :piggybak_sellables_attributes, :piggybak_variants_attributes` to your sellable model. I didn't think you should have to add `:piggybak_sellable_attributes` to the sellable model since its included in the `acts_as_sellable_with_variants.rb` class in the gem. But its the only way I've found to not get random errors with the `<%= variants_cart_form(@instance) %>` form helper. 

In the admin, define option configurations and option values for each option, then create variants for your sellable instances.

Finally, add `<%= variant_cart_form(@instance) %>` to your sellable item's show page to render the cart form.

OPTION:  `<%= variant_cart_form(@instance, :controls => 'dropdowns') %>` to render dropdowns instead of radio buttons.

So either add that line, or if you already have it enabled just add `piggybak_variants/piggybak_variants.js` to the array of values.


Copyright
========

Copyright (c) 2013 End Point. See LICENSE for further details.
