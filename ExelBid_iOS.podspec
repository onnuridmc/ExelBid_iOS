Pod::Spec.new do |s|

  s.name         = "ExelBid_iOS"
  s.version      = "1.3.14"
  s.summary      = "ExelBidSDK.xcframework"
  s.homepage     = "https://github.com/onnuridmc/ExelBid_iOS"
  s.license      = { :type => "Commercial",
:text => <<-LICENSE
All text and design is copyright 2014-2016 onnuridmc, Inc.
All rights reserved.
https://github.com/onnuridmc/ExelBid_iOS
LICENSE
}

  s.ios.deployment_target = '9.0'
  s.author             = { "Motiv Intelligence" => "dev@motiv-i.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/onnuridmc/ExelBid_iOS.git", :tag => "#{s.version}" }
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  s.ios.vendored_frameworks = 'ExelBidSDK.xcframework'
  s.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'UIKit', 'CoreLocation', 'CoreGraphics', 'AdSupport', 'CoreMedia','MediaPlayer','MessageUI','QuartzCore','StoreKit','WebKit'

  s.requires_arc = true
end
