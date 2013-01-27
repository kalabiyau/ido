module Ido::Runner
  class << self
    def run(hash)
      cmd = hash[:cmd]
      debug = true
      puts cmd if debug
      system "#{cmd} > /dev/null 2>&1"
    end

    def get(hash)
      `#{hash[:cmd]}`.chomp
    end
  end
end
