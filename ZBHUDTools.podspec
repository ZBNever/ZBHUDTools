
Pod::Spec.new do |s|
  s.name         = "ZBHUDTools"
  s.version      = "0.0.1"
  s.summary      = "MBProgressHUD 封装"
  s.description  = <<-DESC
	MBProgressHUD 封装 使用简单快捷
                   DESC

  s.homepage     = "https://github.com/ZBNever/ZBHUDTools"
  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Never" => "Never1750@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ZBNever/ZBHUDTools.git", :tag => "{s.version}" }
  s.source_files  = "ZBHUDTools/Tools/*.{h,m}"
  s.requires_arc = true
  s.dependency "MBProgressHUD", "~> 1.0.0"

end
