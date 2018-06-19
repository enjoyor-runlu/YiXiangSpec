#
# Be sure to run `pod lib lint YXPaylibraryManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YXPaylibraryManager'
  s.version          = '2.0.0'
  s.summary          = 'YXPaylibraryManager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://www.baidu.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiaguoshang' => 'jia12216@163.com' }
  s.source           = { :git => 'https://github.com/enjoyor-runlu/YXPaylibraryManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

   #s.source_files  = 'YXPaylibraryManager/weChat/*.{h,m}'
   s.subspec 'weChat' do |weChat|
   weChat.source_files = 'YXPaylibraryManager/weChat/*.{h,m}'
   #weChat.vendored_libraries = 'YXPaylibraryManager/weChat/libWeChatSDK.a'
   weChat.libraries = 'stdc++','z','sqlite3'
   weChat.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
   end

   s.subspec 'aliPay' do |aliPay|
   aliPay.resource = 'YXPaylibraryManager/aliPay/Assets/AlipaySDK.bundle'
   aliPay.libraries = 'stdc++','z','sqlite3'
   aliPay.vendored_frameworks = 'YXPaylibraryManager/aliPay/Frameworks/AlipaySDK.framework' 
   aliPay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
   end
   
   s.subspec 'llPay' do |llPay|
   llPay.resource = 'YXPaylibraryManager/llPay/Assets/walletResources.bundle'
   llPay.vendored_libraries = 'YXPaylibraryManager/llPay/Frameworks/libPaySdkColor.a'
   llPay.source_files = 'YXPaylibraryManager/llPay/LLPayClass/*.{h}'
   llPay.libraries = 'stdc++','z','sqlite3'
   llPay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
   end


  # s.resource_bundles = {
  #    'YXRequestManager' => ['YXPaylibraryManager/Classes/*.xcassets']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'Foundation'
 #  s.dependency 'YXFDCategories'
 #  s.dependency 'AFNetworking', '3.1.0'
 #  s.dependency 'TMCache'
end
