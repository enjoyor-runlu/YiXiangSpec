Pod::Spec.new do |spec|
  spec.name             = 'YXPaylibraryManager'
  spec.version          = '2.0.8'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/enjoyor-runlu/YXPaylibraryManager'
  spec.author           = { '' => '' }
  spec.summary          = 'YXPaylibraryManager.'
  spec.source           = { :git => 'https://github.com/enjoyor-runlu/YXPaylibraryManager.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.subspec 'Alipay' do |Alipay|
    Alipay.resource = 'YXPaylibraryManager/Alipay/Assets/AlipaySDK.bundle'
    Alipay.libraries = 'stdc++','z','sqlite3'
    Alipay.vendored_frameworks = 'YXPaylibraryManager/Alipay/Frameworks/AlipaySDK.framework' 
    Alipay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end
   
  spec.subspec 'Lianpay' do |Lianpay|
    Lianpay.resource = 'YXPaylibraryManager/Lianpay/Assets/walletResources.bundle'
    Lianpay.vendored_libraries = 'YXPaylibraryManager/Lianpay/Frameworks/libPaySdkColor.a'
    Lianpay.source_files = 'YXPaylibraryManager/Lianpay/LLPayClass/*.{h}'
    Lianpay.libraries = 'stdc++','z','sqlite3'
    Lianpay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.subspec 'Wxpay' do |Wxpay|
    Wxpay.source_files = 'YXPaylibraryManager/Wxpay/*.{h,m}'
    Wxpay.vendored_libraries = 'YXPaylibraryManager/Wxpay/Frameworks/libWeChatSDK.a'
    Wxpay.libraries = 'stdc++','z','sqlite3'
    Wxpay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.frameworks = 'UIKit', 'Foundation'
end
