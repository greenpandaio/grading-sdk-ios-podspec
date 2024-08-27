#
# Be sure to run `pod lib lint PandasGradingSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PandasGradingSDK'
  s.version          = '1.3.1'
  s.summary          = 'Pandas Grading SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Pandas Grading SDK
                         DESC

  s.homepage         = 'https://github.com/greenpandaio/grading-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'PANDAS' => 'dev@pandas.io' }
  s.source           = { :git => 'git@github.com:greenpandaio/grading-sdk-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '4.0'
  
  s.source_files = 'Sources/PandasGradingSDK/Classes/**/*', 'Sources/PandasGradingSDK/Classes/**/*.{h,m,mm}'
  s.public_header_files = "Sources/PandasGradingSDK/Classes/SoundWaveManager/**/*.{h}"
  s.private_header_files = "Sources/PandasGradingSDK/Classes/SoundCoder/**/*.{h,hpp}"

  s.resource_bundles = {
    'PandasGradingSDK' => ['Sources/PandasGradingSDK/Assets/*', 'Sources/PandasGradingSDK/Assets/**/*.{mp4,gif,ttf,otf}']
  }

  s.exclude_files = 'PandasGradingSDK/**/*-iphonesimulator.*'
  
  s.static_framework = true
  
  s.dependency 'SwiftyXMLParser', '5.6.0'
  s.dependency 'FLAnimatedImage', '1.0.17'
  s.dependency 'TensorFlowLiteSwift', '2.13.0'
  s.dependency 'TensorFlowLiteTaskVision', '0.4.3'
  s.dependency 'AWSS3', '2.16.0'
  s.dependency 'Ably', '1.2.20'
    
end
