Pod::Spec.new do |spec|

  spec.name         = "FlowConstraint"
  spec.version      = "0.0.1"
  spec.summary      = "Convenience API to configure Autolayout"

  spec.description  = <<-DESC
Avoid verbose Autolayout. Build it in convenient way.
                   DESC

  spec.homepage     = "https://github.com/muizidn/flowconstraint"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Muhammad Muizzsuddin" => "muiz.idn@gmail.com" }

  spec.ios.deployment_target = "9.0"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/muizidn/flowconstraint.git", :tag => "#{spec.version}" }
  spec.source_files  = "FlowConstraint/**/*.{h,m,swift}"

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'FlowConstraint/FlowConstraintTests/**/*.{h,m,swift}'
  end
end
