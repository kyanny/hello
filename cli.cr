require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "WELCOME TO THE CLI!"
  parser.on "-n NAME", "--name=NAME", "NAME" do |name|
    puts "Hi #{name}"
    exit
  end
  parser.on "-v", "--version", "SHOW VERSION" do
    puts "1.0.0"
    exit
  end
  parser.on "-h", "--help", "SHOW HELP" do
    puts parser
    exit
  end
  
  parser.missing_option do |option_flag|
    puts "ERROR: #{option_flag} is missing"
    exit 254
  end
  parser.invalid_option do |option_flag|
    puts "ERROR: #{option_flag} is invalid"
    exit 255
  end
end

