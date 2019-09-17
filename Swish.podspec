Pod::Spec.new do |spec|
  spec.name = 'ToznySwish'
  spec.version = '5.0.0'
  spec.summary = 'Nothing but net(working)'
  spec.homepage = 'https://github.com/tozny/Swish'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = {
    'Gordon Fontenot' => 'gordon@thoughtbot.com',
    'Sid Raval' => 'sid@thoughtbot.com',
    'thoughtbot' => nil,
  }
  spec.source = { :git => 'https://github.com/tozny/Swish.git', :tag => "v#{spec.version}" }
  spec.source_files = 'Source/**/*.{h,swift}'

  spec.dependency 'Result', '~> 4.1'

  spec.requires_arc = true

  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.9'
  spec.watchos.deployment_target = '2.0'
  spec.tvos.deployment_target = '9.0'
end
