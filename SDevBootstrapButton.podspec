Pod::Spec.new do |s|
	s.name				= 'BootstrapButton'
	s.version			= '0.0.1'
	s.summary			= 'Twitter Bootstrap buttons for Swift'
	s.homepage			= 'https://github.com/0x73/SDevBootstrapButton'
	s.license			= 'MIT'
	s.screenshots		= ['https://raw.githubusercontent.com/0x73/SDevBootstrapButton/master/Screenshots/screenshot0.png']
	s.authors			= { 'Sedat CIFTCI' => 'me@sedat.us'}
	s.social_media_url	= 'https://twitter.com/sdt_ciftci'
	s.source			= { :git => 'https://github.com/0x73/SDevBootstrapButton.git', :tag => s.version.to_s }
	s.platform			= :ios, '7.0'
	s.source_files		= 'SDevBootstrapButton/Classes/*'
	s.resource			= 'SDevBootstrapButton/Resources/*'
	s.frameworks		= 'CoreGraphics'
	s.requires_arc		= true
end