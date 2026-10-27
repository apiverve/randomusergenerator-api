Pod::Spec.new do |s|
  s.name             = 'APIVerveRandomUserGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone...'
  s.description      = <<-'DESC'
Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

This iOS/macOS SDK provides a convenient way to access the Random User Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/randomusergenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/randomusergenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveRandomUserGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
