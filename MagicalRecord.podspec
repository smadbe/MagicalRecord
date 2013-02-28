
Pod::Spec.new do |s|

  s.name = 'MagicalRecord'
  s.version = '1'
  s.license = 'MIT'
  s.summary = 'Super Awesome Easy Fetching for Core Data 1!!!11!!!!1!.'
  s.homepage = 'https://github.com/magicalpanda/MagicalRecord.git'
  s.author = { 'Saul Mora' => 'saul@magicalpanda.com' }
  s.source = { :git => 'https://github.com/smadbe/MagicalRecord.git' }
  s.description = 'Handy fetching, threading and data import helpers to make Core Data a little easier to use.'
  s.source_files = '**.{h,m}', 'Categories/*.{h,m}', 'Categories/DataImport/*.{h,m}'
  s.framework = 'CoreData'
  s.requires_arc = true

  def s.post_install(target)
      prefix_header = config.project_pods_root + target.prefix_header_filename
      prefix_header.open('a') do |file|
        file.puts(%{#ifdef __OBJC__\n#define MR_SHORTHAND\n#define MR_ENABLE_ACTIVE_RECORD_LOGGING 0\n#import "CoreData+MagicalRecord.h"\n#endif})
      end
  end
end


