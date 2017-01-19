

map_files = Dir["skeleton/lib/tree-house-prince/*.*"]
map_files.each do |f|
stripped = File.basename(f, "*.*")
puts stripped
require stripped
end
