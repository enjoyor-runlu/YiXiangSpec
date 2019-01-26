Pod::Spec.new do |spec|
  spec.name             = 'YXPaylibraryManager'
  spec.version          = '2.0.6'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/enjoyor-runlu/YXPaylibraryManager'
  spec.author           = { '' => '' }
  spec.summary          = 'YXPaylibraryManager.'
  spec.source           = { :git => 'https://github.com/enjoyor-runlu/YXPaylibraryManager.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.subspec 'weChat' do |weChat|
    weChat.source_files = 'YXPaylibraryManager/weChat/*.{h,m}'
    #weChat.vendored_libraries = 'YXPaylibraryManager/weChat/libWeChatSDK.a'
    weChat.libraries = 'stdc++','z','sqlite3'
    weChat.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.subspec 'aliPay' do |aliPay|
    aliPay.resource = 'YXPaylibraryManager/aliPay/Assets/AlipaySDK.bundle'
    aliPay.libraries = 'stdc++','z','sqlite3'
    aliPay.vendored_frameworks = 'YXPaylibraryManager/aliPay/Frameworks/AlipaySDK.framework' 
    aliPay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end
   
  spec.subspec 'llPay' do |llPay|
    llPay.resource = 'YXPaylibraryManager/llPay/Assets/walletResources.bundle'
    llPay.vendored_libraries = 'YXPaylibraryManager/llPay/Frameworks/libPaySdkColor.a'
    llPay.source_files = 'YXPaylibraryManager/llPay/LLPayClass/*.{h}'
    llPay.libraries = 'stdc++','z','sqlite3'
    llPay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.frameworks = 'UIKit', 'Foundation'
end
