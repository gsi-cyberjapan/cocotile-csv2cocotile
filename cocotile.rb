require 'fileutils'

def check(zxy, ts, exts) 
  sleep(10) if File.exist?('sleep')
  print "test #{zxy}: "
  ts.each_index {|i|
    path = "/var/www/htdocs/xyz/#{ts[i]}/#{zxy}.#{exts[i]}"
    print File.exist?(path) ? 'o' : 'x'
  }
  print "\n"
end

def write(zxy, ts)
  path = "/var/www/htdocs/xyz/cocotile_new/#{zxy}.csv"
  FileUtils.mkdir_p(File.dirname(path)) unless File.directory?(File.dirname(path)) 
  File.open(path, 'w') {|w|
    w.print ts.join(','), "\n"
  }
  #print "wrote #{path}.\n"
end

while gets
  r = $_.strip.split("\t")
  ts = r[1].split(',').map{|v| v.split('/')[0..-4].join('/')}
  exts = r[1].split(',').map{|v| v.split('.')[-1]}
  #print r[0], ts, "\n"
  check(r[0], ts, exts) if rand(10) == 0
  write(r[0], ts)
end
