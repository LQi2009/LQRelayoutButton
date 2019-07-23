#
#  Be sure to run `pod spec lint LQRelayoutButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "LQRelayoutButton"
  s.version      = "2.3.0"
  s.summary      = "调整标题位置在左和在下的Button"
  s.description  = <<-DESC
  调整标题位置在左和在下的Button，可以调用扩展方法，也可使用自定义子类
                   DESC

  s.homepage     = "https://github.com/LQi2009/LQRelayoutButton"
  s.license      = "MIT"
  s.author             = { "LiuQiqiang" => "lqq200912408@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LQi2009/LQRelayoutButton.git", :tag => "#{s.version}" }
  s.requires_arc = true

  # s.source_files  = "LQRelayoutButton", "LQRelayoutButton/LQRelayoutButton/LQRelayoutButton/*.{h,m}"
  
  s.default_subspec = 'OBJ_EXT'
  
  s.subspec 'OBJ_EXT' do |ext|
    ext.source_files  = "LQRelayoutButton/obj_ext/*.{h,m}"
  end

  s.subspec 'OBJ_SUB' do |sub|
    sub.source_files  = "LQRelayoutButton", "LQRelayoutButton/obj_sub/*.{h,m}"
  end

  s.subspec 'SF' do |sf|
    sf.source_files  = "LQRelayoutButton", "LQRelayoutButton/sf/*.{swift}"
    s.swift_version = "4.1"
  end

end
