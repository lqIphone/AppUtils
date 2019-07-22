Pod::Spec.new do |spec|
  spec.name         = 'AppUtils'
  spec.version      = '1.0.0'
  spec.license      = 'MIT'
  spec.author       = { "Quan Li" => "1083099465@qq.com" }
  spec.summary      = 'iOS 公共工具'
  spec.homepage     = 'https://github.com/lqIphone/AppUtils'
  spec.source       = { :git => 'https://github.com/lqIphone/AppUtils.git', :tag => '1.0.0' }
  spec.source_files  = "AppUtils/**/*.swift"
  spec.requires_arc = true
  spec.platform     = :ios, "9.0"
end

