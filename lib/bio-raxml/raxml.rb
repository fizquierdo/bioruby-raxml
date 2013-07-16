module BioRaxml
  class Raxml
    def initialize(opts)
      @phylip = opts[:phylip]
      @name = opts[:name]
    end
    def run_cmd
      cmd = "raxmlHPC-SSE3 -s #{@phylip} -n #{@name} -p 12345 -m GTRGAMMA"
    end
  end
end
