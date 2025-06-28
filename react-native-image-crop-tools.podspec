require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "rn-image-crop-tools"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  rn-image-crop-tools
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  s.authors      = { "Hunaid Hassan" => "hhunaid@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/hhunaid/rn-image-crop-tools.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React-Core"
  s.dependency 'TOCropViewController', '2.5.3'
end

