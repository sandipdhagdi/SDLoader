
Pod::Spec.new do |s|
s.name             = 'SDLoader'
s.version          = '0.1.0'
s.summary          = 'Simple activity loader.'
s.description      = 'Simple activity loader. fully customised'
s.homepage         = 'https://github.com/sandipdhagdi/SDLoader'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'sandipdhagdi@gmail.com' => 'sandipdhagdi@gmail.com' }
s.source           = { :git => 'https://github.com/sandipdhagdi/SDLoader.git', :tag => s.version }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.requires_arc = true
s.ios.deployment_target = "10.0"

s.source_files = 'SDLoader/Classes/**/*'

# s.resource_bundles = {
#   'SDLoader' => ['SDLoader/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
