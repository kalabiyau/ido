module Ido::Git
  class << self

    def current_branch
      Ido::Runner.get(:cmd => 'git rev-parse --abbrev-ref HEAD')
    end

    def checkout_to(task)
      Ido::Runner.run(:cmd => "git checkout -b #{task}")
      puts Ido::Git.current_branch
      #raise "Cannot Checkout to #{task} branch" unless self.current_branch
    end
  end
end
