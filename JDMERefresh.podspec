Pod::Spec.new do |s|
  s.name             = 'JDMERefresh'
  s.version          = '0.1.0'
  s.summary          = '读取gif播放时间自动设置，并居中显示的下拉刷新'

  s.homepage         = 'http://source.jd.com/app/JDMERefresh'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '王方帅' => 'wangfangshuai@jd.com' }
  s.source           = { :git => 'http://source.jd.com/app/JDMERefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = '../JDMERefresh/JDMERefresh/Classes/**/*'


  s.public_header_files = 'JDMERefresh/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'MJRefresh', '~> 3.1.12'
  s.dependency 'SDWebImage', '~> 4.0.0'
end
































