Pod::Spec.new do |spec|
  spec.name             = 'YXSynchronousLog'
  spec.version          = '0.0.3'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/enjoyor-runlu/YXSynchronousLog'
  spec.author           = { '' => '' }
  spec.summary          = 'YXSynchronousLog.'
  spec.source           = { :git => 'https://github.com/enjoyor-runlu/YXSynchronousLog.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.source_files = 'YXSynchronousLog/Classes/*.{h,m}'
  
  spec.frameworks = 'UIKit', 'Foundation'
end
