require "bundler/setup"
require "atomic_hamster"

hash = Atomic.new(Hamster.list)
iterations = 1_000

iterations.times.map do |i|
  Thread.new do
    hash.update do |list|
      list.cons(i)
    end
  end
end.map(&:join)

if hash.value.length == iterations
  $stderr.puts "Atomic Hamster succeeds spectacularly."
  exit true
else
  $stderr.puts "Atomic Hamster fails humbly with a stunning #{hash.value.length} of #{iterations}."
  exit false
end