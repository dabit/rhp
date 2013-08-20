require 'erb'

module RHP
  class Server
    def self.call(env)
      path = File.join(".", env["PATH_INFO"])
      if path =~ /.erb$/
        template = template_from_file(path)
        body     = parse_template(template)
        [200, {}, StringIO.new(body)]
      else
        [500, {}, ["Only .erb files allowed"]]
      end
    end

    def self.template_from_file(path)
      File.open(path, "r").read
    end

    def self.parse_template(template)
      ERB.new(template).result
    end
  end
end
