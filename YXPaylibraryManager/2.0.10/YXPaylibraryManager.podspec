Pod::Spec.new do |spec|
  spec.name             = 'YXPaylibraryManager'
  spec.version          = '2.0.10'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/enjoyor-runlu/YXPaylibraryManager'
  spec.author           = { '' => '' }
  spec.summary          = 'YXPaylibraryManager.'
  spec.source           = { :git => 'https://github.com/enjoyor-runlu/YXPaylibraryManager.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.subspec 'Alipay' do |alipay|
    alipay.resource = 'YXPaylibraryManager/Alipay/Assets/AlipaySDK.bundle'
    alipay.libraries = 'stdc++','z','sqlite3'
    alipay.vendored_frameworks = 'YXPaylibraryManager/Alipay/Frameworks/AlipaySDK.framework' 
    alipay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end
   
  spec.subspec 'Lianpay' do |lianpay|
    lianpay.resource = 'YXPaylibraryManager/Lianpay/Assets/walletResources.bundle'
    lianpay.vendored_libraries = 'YXPaylibraryManager/Lianpay/Frameworks/libPaySdkColor.a'
    lianpay.source_files = 'YXPaylibraryManager/Lianpay/LLPayClass/*.{h}'
    lianpay.libraries = 'stdc++','z','sqlite3'
    lianpay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.subspec 'Wxpay' do |wxpay|
    wxpay.source_files = 'YXPaylibraryManager/Wxpay/*.{h,m}'
    wxpay.libraries = 'stdc++','z','sqlite3'
    wxpay.frameworks = 'UIKit', 'Foundation','CoreMotion','CoreTelephony','SystemConfiguration'
  end

  spec.frameworks = 'UIKit', 'Foundation'
end
