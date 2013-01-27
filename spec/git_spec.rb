require 'spec_helper'
require 'fileutils'

describe Ido::Git do

  before(:all) do
    test_dir = 'dummy'
    FileUtils.rm_rf(test_dir) if Dir.exist?(test_dir)
    Dir.mkdir(test_dir)
    Dir.chdir(test_dir)
    Ido::Runner.run(:cmd => "git init && touch README.TXT && git add . && git commit -am Test")
  end

  describe "#current_branch" do
    it "get current git branch in current branch" do
      Ido::Git.current_branch.should eq "master"
    end
  end

  describe "#checkout_to_task" do
    it "should checkout to new branch with passed name" do
      Ido::Git.checkout_to("test")
      Ido::Git.current_branch.should eq "test"
    end
  end

end
