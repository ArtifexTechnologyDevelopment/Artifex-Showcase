Pod::Spec.new do |s|
  s.name                = 'Artifex-Showcase'
  s.version             = '1.0.0'
  s.summary             = 'Small libraries to showcase images in a slider. Adapted for latest Swift version (Swift 5).'
  s.swift_version       = '5.0'

  s.description      = <<-DESC
This library will help to manage multiple image that you want to showcase in the same showroom. Multiple customization options have been added to this library.
                       DESC

  s.homepage         = 'https://github.com/ArtifexTechnologyDevelopment/Artifex-Showcase'
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
                            Licensed under the Apache License, Version 2.0 (the "License");
                            you may not use this file except in compliance with the License.
                            You may obtain a copy of the License at

                            http://www.apache.org/licenses/LICENSE-2.0

                            Unless required by applicable law or agreed to in writing, software
                            distributed under the License is distributed on an "AS IS" BASIS,
                            WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                            See the License for the specific language governing permissions and
                            limitations under the License.
                            LICENSE
  }
  s.author           = { 'Artifex Tech Development' => 'developer@artifextechdevelopment.com' }
  s.source           = { :git => 'https://github.com/ArtifexTechnologyDevelopment/Artifex-Showcase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'Artifex-Showcase/lib/*.swift'
  s.resource_bundle = { 'Artifex-Showcase' => 'Artifex-Showcase/lib/ArtifexShowcase.bundle' }

end
