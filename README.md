# daemon

Daemonize Your Process

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     daemon:
       github: pynixwang/daemon
   ```

2. Run `shards install`

## Usage

just like `Process.fork`

```crystal
require "daemon"
require "http/server"


Process.daemonize {
  server = HTTP::Server.new do |context|
    context.response.content_type = "text/plain"
    context.response.print "Hello world, got #{context.request.path}!"
  end

  puts "Listening on http://127.0.0.1:8080"
  server.listen(8080)
}

```

