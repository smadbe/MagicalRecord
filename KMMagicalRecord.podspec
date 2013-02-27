
Pod::Spec.new do |s|

  s.name = 'KMMagicalRecord'
  s.version = '1'
  s.license = 'MIT'
  s.summary = 'Super Awesome Easy Fetching for Core Data 1!!!11!!!!1!.'
  s.homepage = 'https://github.com/magicalpanda/MagicalRecord.git'
  s.author = { 'Saul Mora' => 'saul@magicalpanda.com' }
  s.source = { :git => 'https://github.com/smadbe/MagicalRecord'  }
  s.description = 'Handy fetching, threading and data import helpers to make Core Data a little easier to use.'
  s.source_files = 'MagicalRecord/**/*.{h,m}'
  s.framework = 'CoreData'
  s.requires_arc = true

end


