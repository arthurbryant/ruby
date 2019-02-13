def lock!(*args)
  fail 'no block passed' unless block_given?

  puts "block given!"
end


def test(*args)
  lock!(*args) do
    yield
  end
end

test
