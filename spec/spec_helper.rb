require 'simplecov'
require 'simplecov-console'
require 'timecop'

SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start

RSpec.configure do |config|
  config.before do
    time = Time.local(2018, 12, 3, 0, 0)
    Timecop.freeze(time)
  end

  config.after do
    Timecop.return
  end
end
