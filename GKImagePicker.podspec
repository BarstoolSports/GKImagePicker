Pod::Spec.new do |s|
  s.name             = 'GKImagePicker'
  s.version          = '1.0.0'
  s.summary          = 'Image Crop Picker'
  s.homepage         = 'https://github.com/BarstoolSports/GKImagePicker'
  s.license          = 'MIT'
  s.author           = { 'David Jeong' => 'djeong@barstoolsports.com' }
  s.source           = { :git => 'https://github.com/BarstoolSports/GKImagePicker.git', :tag => s.version.to_s }

  s.requires_arc     = true
  s.swift_version    = '5.0'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.11'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '10.0'

  s.source_files = 'GKClasses/**/*.{h,m,swift}'
  s.public_header_files = 'GKClasses/**/*.h'

end
