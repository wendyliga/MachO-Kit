Pod::Spec.new do |s|
  s.name             = "MachOKit"
  s.version          = "0.0.1"
  s.summary          = ""

  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/DeVaukz/MachO-Kit"
  s.license          = 'MIT'
  s.author           = { "Devin Vaukz" => "devin.vaukz@gmail.com" }
  s.source           = { :git => "https://github.com/DeVaukz/MachO-Kit.git", :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.6'
  s.watchos.deployment_target = '1.0'
  s.tvos.deployment_target = '9.0'
  
  s.source_files = 'MachOKit/**/*'
  s.resources = 'MachOKit/**/*'
  s.public_header_files = 'MachOKit/MachOKit.h'
  s.header_mappings_dir = 'MachOKit/'
  
  s.xcconfig = { 
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/MachOKit/**"',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
  
  s.pod_target_xcconfig = { 
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/MachOKit/**"',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end