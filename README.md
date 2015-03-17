# Lifematon

Simple Encoding for Your Life

## Installation


```ruby
gem 'lifematon'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lifematon

## Usage

### Set State -- String#state!

```ruby
"b".state! "Born"
````

### Merge state -- String#state_merge

```ruby
life = "b".state! "Born"
life.state_merge([
  "s".state!("Study"),
  "d".state!("Die")
  ])
```

### Write Your Life -- String#life!

```ruby
life = "s".state! "Study"
life.life! "sssssssss"
```

### And Decode! -- String#to_life

```ruby
life = "s".state! "Study"
life.life! "sss"
life.to_life # => ["Study", "Study", "Study"]
```

### Raw string with your life? -- String#by_life

```ruby
life = "b".state! "Born"
life = life.state_merge(["s".state!("Study"), "d".state!("Die")])
life = life.life "bsssd"
life.match(/s+/) { |md| md[0].by_life life } # => ["Study", "Study", "Study"]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/lifematon/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
