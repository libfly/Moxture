Pod::Spec.new do |s|
  s.name             = "Moxture"
  s.version          = "1.0"
  s.summary          = "Mocking and fixture making framework for Swift"
  s.description      = "Moxture - the framework that easily makes mocks and fixtures for your tests"

  s.homepage         = "https://github.com/Moxture/Moxture"
  s.license          = 'MIT'
  s.author           = 'Moxture Contributors'
  s.source           = { git: "https://github.com/Moxture/Moxture.git", tag: s.version.to_s }

  s.swift_version    = '5.0'
  s.source_files     = 'Sources/**/*.swift'

  s.ios.deployment_target     = '9.0'
  s.osx.deployment_target     = '10.9'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target    = '9.0'
end
