#
# Be sure to run `pod lib lint GenericServices.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GenericServices'
  s.version          = '0.1.0'
  s.summary          = 'Generic classes for Services and Managers for your Codable models'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Provides generic protocols for layering access to your models in Managers and Services.
Also, by default, provides a default HTTP REST Service to be used as-is with the AnyService class,
as well as an AnyManager to go with it.
Both AnyService and AnyManager are generic and require a Codable-compliant model object to work with.
DESC

  s.homepage         = 'https://github.com/nameghino/GenericServices'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nameghino' => 'nicolas.ameghino@gmail.com' }
  s.source           = { :git => 'https://github.com/nameghino/GenericServices.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GenericServices/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GenericServices' => ['GenericServices/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
