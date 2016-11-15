# Uncomment this line to define a global platform for your project
# platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!

target 'DependencyInjectionSwiftExample' do

pod 'Swinject', '2.0.0-beta.2'
pod 'SwinjectStoryboard', '1.0.0-beta.2'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
