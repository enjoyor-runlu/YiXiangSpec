#
# Be sure to run `pod lib lint YXPayManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YXPayManager'
  s.version          = '1.0.2'
  s.summary          = 'YXPayManager.'

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
  s.source           = { :git => 'https://github.com/enjoyor-runlu/YXPayManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

   s.source_files  = 'YXPayManager/YXPayManager/Classes/*.{h,m}'

   s.frameworks = 'UIKit', 'Foundation'
   s.dependency 'YXPaylibraryManager'
end
