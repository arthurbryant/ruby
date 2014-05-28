class BaseWorer
  def exhausted_retry(&block)
    yield
  end
end

class IosUploadWorker < BaseWorer
  def exhausted_retry(&block)
    super
    yield
  end
end

bw = BaseWorer.new
bw.exhausted_retry do
  puts "pass block"
end

iuw = IosUploadWorker.new
iuw.exhausted_retry do
  puts "pass block"
end
