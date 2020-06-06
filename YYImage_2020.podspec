Pod::Spec.new do |s|
  s.name         = 'YYImage_2020'
  s.summary      = 'Image framework for iOS to display/encode/decode animated WebP, APNG, GIF, and more.'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'fysteven' => 'fysteven@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/fysteven/YYImage'
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source       = { :git => 'https://github.com/fysteven/YYImage.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = 'YYImage/*.{h,m}'
    core.public_header_files = 'YYImage/*.{h}'
    core.libraries = 'z'
    core.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'ImageIO', 'Accelerate'
  end
  
  s.subspec 'WebP' do |webp|
    webp.dependency 'YYImage/Core'
    webp.ios.vendored_frameworks = 'Vendor/WebP.framework'
  end

end
