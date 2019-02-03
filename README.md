# ViewUtils

ViewUtils is an alternative to rails helpers.
Everyone knows rails helpers are shitty, mainly because

* they pollute the global view namespace
* once added, you have a hard time removing them
* it's often not clear in which file they are living
* naming them is hard

ViewUtils are as easy as helpers, without the downsides:

```
<%= util(:user).avatar_image(user) %>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_utils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install view_utils

## Usage

To create your own ViewUtil:

```ruby
class UserUtil < ViewUtils::Base
  include ActionView::Helpers::AssetTagHelper

  def avatar_image(user, size: :small)
    image_tag user.avatar_image(size), class: "avatar-image"
  end
end
```

In your view:

```
<%= util(:user).avatar_image(user) %>
```

To use another util from within your util, you can use the
util helper within your utils as well:

```ruby
class UserUtil < ViewUtils::Base
  # ...

  def some_util
    util(:login).other_util
  end
end
```

For the rare cases, where you need access to the view object,
you can use the view directly:

```ruby
class UserUtil < ViewUtils::Base
  # ...

  def some_util
    view.root_url
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mrkamel/view_utils.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
