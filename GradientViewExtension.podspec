Pod::Spec.new do |spec|

  spec.name         = "GradientViewExtension"
  spec.version      = "0.0.1"
  spec.summary      = "This package extends UIView to set a gradient background."
  spec.homepage     = "https://github.com/robinlieb/GradientViewExtension"
  spec.license      = "MIT"
  spec.author    = "Robin Lieb"
  spec.source       = { :git => "https://github.com/robinlieb/GradientViewExtension.git", :tag => "#{spec.version}" }
  spec.documentation_url = "https://github.com/robinlieb/GradientViewExtension"

  spec.platform     = :ios, "12.0"
  spec.swift_versions = ['5.0', '5.1']

  spec.source_files  = "Sources/GradientViewExtension/*.swift"

end
