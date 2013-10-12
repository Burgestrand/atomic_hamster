# Atomic Hamster

> Because naming things is sometimes funny.

We have:

- [Atomic](http://rubygems.org/gems/atomic): <https://github.com/headius/ruby-atomic>

  An atomic reference implementation for JRuby, Rubinius, and MRI.

- [Hamster](http://rubygems.org/gems/hamster): <https://github.com/harukizaemon/hamster>

  Efficient, Immutable, Thread-Safe Collection classes for Ruby.

When writing threaded code, the [Atomic](http://rubygems.org/gems/atomic)[ ](http://rubygems.org/gems/atomic_hamster)[Hamster](http://rubygems.org/gems/hamster) guards and protects your shared mutable state.

```ruby
require "atomic_hamster"

hash = Atomic.new(Hamster.list)

1000.times.map do |i|
  Thread.new do
    hash.update do |list|
      list.cons(i)
    end
  end
end.map(&:join)

puts hash.value.length # => 1000
```

## Credits

All credits go to the [Atomic](http://rubygems.org/gems/atomic)[ ](http://rubygems.org/gems/atomic_hamster)[Hamster](http://rubygems.org/gems/hamster). I did not do anything.
