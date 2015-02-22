Pod::Spec.new do |s|
	s.name				= 'SDevBootstrapButton'
	s.version			= '0.0.3'
	s.summary			= 'Twitter Bootstrap buttons for Swift'
	s.homepage			= 'https://github.com/0x73/SDevBootstrapButton'
	s.license			= { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
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
	s.authors			= { 'Sedat CIFTCI' => 'me@sedat.us'}
	s.social_media_url	= 'https://twitter.com/sdt_ciftci'
	s.source			= { :git => 'https://github.com/0x73/SDevBootstrapButton.git', :tag => '0.0.3' }
	s.platform			= :ios, '8.0'
	s.source_files		= 'SDevBootstrapButton/Classes/*.swift'
	s.resource			= 'SDevBootstrapButton/Resources/FontAwesome.ttf'
	s.requires_arc		= true
end