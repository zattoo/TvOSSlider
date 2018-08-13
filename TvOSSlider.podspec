Pod::Spec.new do |s|
  s.name = 'TvOSSlider'
  s.author = 'Zattoo'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'TvOSSlider is an implementation of UISlider for tvOS.'
  s.homepage = 'https://github.com/zattoo/TvOSSlider'
  s.source = { :git => 'https://github.com/zattoo/TvOSSlider.git', :tag => s.version }
  s.tvos.deployment_target = '11.0'
  s.source_files = 'TvOSSlider/**/*.swift'
end
