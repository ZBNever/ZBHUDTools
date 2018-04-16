
Pod::Spec.new do |s|

  s.name         = "ZBHUDTools"
  s.version      = "0.1.3"
  s.summary      = "MBProgressHUD 封装"
  s.description  = <<-DESC
                    MBProgressHUD 封装 使用简单快捷
                   DESC

  s.homepage     = "https://github.com/ZBNever/ZBHUDTools"
  # s.license      = "MIT"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Never" => "Never1750@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ZBNever/ZBHUDTools.git", :tag => s.version}
  s.source_files = "ZBHUDTools/Tools/*.{h,m}"
  s.resource     = "ZBHUDTools/Tools/*.xcassets"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "ZBHUDTools/Tools/*.h"
  s.requires_arc = true
  s.dependency "MBProgressHUD"
  s.dependency "ZBMacroDefine"
  s.dependency "ZBUtils"
end
