require "lib_c"
require "process"

lib LibC
  fun setsid : PidT
end

def Process.daemonize(&block)
  self.fork {
    LibC.setsid
    yield
  }
end
