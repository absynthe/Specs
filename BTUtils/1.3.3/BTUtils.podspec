Pod::Spec.new do |s|
  s.name         = 'BTUtils'
  s.version      = '1.3.3'
  s.summary      = 'Usable utility methods and categories.'
  s.homepage     = 'https://github.com/borut-t/BTUtils'
  s.license      = { :type => 'zlib', :file => 'LICENCE.md' }
  s.author       = 'Borut Tomažin'
  s.platform     = :ios, '5.0'
  s.source       = { :git => 'https://github.com/borut-t/BTUtils.git', :tag => '1.3.3' }
  s.source_files = 'BTUtils/BTUtils.{h,m}'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

  s.subspec 'NSString' do |s1|
    s1.source_files = 'BTUtils/NSString/NSString+BTUtils.{h,m}'
    s1.requires_arc = true
    
    s1.subspec 'GTMNSString' do |s11|
      s11.source_files = 'BTUtils/NSString/GTMNSString+HTML.{h,m}'
      s11.requires_arc = false
    end
  end

  s.subspec 'NSData' do |s2|
    s2.source_files = 'BTUtils/NSData/*.{h,m}'
    s2.requires_arc = true
  end

  s.subspec 'UIImage' do |s3|
    s3.source_files = 'BTUtils/UIImage/*.{h,m}'
    s3.requires_arc = true
  end

  s.subspec 'UIView' do |s4|
    s4.source_files = 'BTUtils/UIView/*.{h,m}'
    s4.requires_arc = true
  end

  s.subspec 'UINavigationController' do |s5|
    s5.source_files = 'BTUtils/UINavigationController/*.{h,m}'
    s5.requires_arc = true
  end

  s.subspec 'UITabBar' do |s6|
    s6.source_files = 'BTUtils/UITabBarController/*.{h,m}'
    s6.requires_arc = true
  end
end
