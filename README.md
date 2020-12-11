# HasUniqueRandom

`has_unique_random` provides a simple way to automatically create randomized
strings for your models that are unique across the related database tables:

```rb
class Post < ApplicationRecord
  has_unique_random :url_id
end
```

This is most often used in URLs, like this:

```
https://example.com/users/4vtiOpS7
```

## Usage

First, make sure we have a model to work on:

```sh
$ rails g model Post
```

Now open up its database migration to add a column called `url_id`:

```rb
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :url_id
      # your own attributes...
      t.timestamps
    end
  end
end
```

Now migrate your database with `rake db:migrate`.

The last step is to hook in `has_unique_random` in your model:

```rb
class Post < ApplicationRecord
  has_unique_random :url_id
end
```

And you're done!
Try it with `rails c`:

```rb
post = Post.new
# set your own attributes...
post.save
post.url_id # => "4vtiOpS7", ...
```

### Adjusting the length

In some cases, you may need to adjust the random string's length. Doing this is
very easy:

```rb
class Post < ApplicationRecord
  has_unique_random :url_id, length: 12
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'has_unique_random'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install has_unique_random
```

## Contributing

Pull requests and issues are welcome at [https://github.com/ImMaax/has_unique_random](https://github.com/ImMaax/has_unique_random)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
