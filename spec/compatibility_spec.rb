require 'spec_helper'

module RedisFile
  describe "Compatibility" do
    it "should be accessible through RedisFile::Redis" do
      lambda { RedisFile::Redis.new }.should_not raise_error
    end
  end
end
