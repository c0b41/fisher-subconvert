# SYNOPSIS
#   subconvert [options]
#
# USAGE
#   Options
#   {srt} original subtitle
#   {newsrt} new subtitle
#

function subconvert
  if type -t iconv
    iconv -f Windows-1254 -t UTF-8 $argv[1] > $argv[2]
  else
    echo "📂  Please install iconv first!"
  end
end
