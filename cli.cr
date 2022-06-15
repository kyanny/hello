require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "WELCOME TO THE CLI!"
  parser.on "-v", "--version", "SHOW VERSION" do
    puts "1.0.0"
    exit
  end
  parser.on "-h", "--help", "SHOW HELP" do
    puts parser
    exit
  end
end

