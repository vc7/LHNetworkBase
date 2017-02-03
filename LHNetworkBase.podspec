#
#  Be sure to run `pod spec lint LHNetworkBase.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LHNetworkBase"
  s.version      = "0.0.3"
  s.summary      = "A base networking layer built on top of Alamofire and SwiftyJSON."
  s.homepage     = "https://qiita.com/vc7"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "vc7" => "vince78718@gmail.com" }
  s.social_media_url   = "http://twitter.com/vince78718"

  s.platform     = :ios
  s.ios.deployment_target = "10.0"

  s.source       = { :git => "https://github.com/vc7/LHNetworkBase.git", :tag => "#{s.version}" }

  s.source_files  = "LHNetworkBase/*{swift}"

  s.requires_arc = true

  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'

end
