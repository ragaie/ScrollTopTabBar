
Pod::Spec.new do |s|
  s.platform = :ios
  s.name             = 'ScrollTopTabBarChtar'
  s.version          = '0.2'
  s.summary          = 'Scroll to TapBar for iOS  '
 
  s.description      = <<-DESC
That like similar to android tabBar for iOS
                       DESC
 
  s.homepage         = 'https://github.com/ragaie/ScrollTopTabBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ragaie Alfy' => 'eng.ragaie@gmail.com' }
  s.source           = { :git => 'https://github.com/ragaie/ScrollTopTabBar.git', :tag => s.version.to_s }
 
  s.framework = "UIKit","Foundation"
  s.ios.deployment_target = '8.0'

  s.source_files = 'ScrollTopTabBar/scrollLibrary/*.swift'
  s.resources = 'ScrollTopTabBar/scrollLibrary/*.xib'
  s.resource_bundle = {'ScrollTopTabBarChtar' => ['ScrollTopTabBar/scrollLibrary/ButtonCell.xib','ScrollTopTabBar/scrollLibrary/ScrollTopTabBar.xib','ScrollTopTabBar/scrollLibrary/ViewCell.xib']}

  
end
