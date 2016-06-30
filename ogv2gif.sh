OGV=$1
TMPDIR=`mktemp -d`

mplayer -ao null $OGV -vo jpeg:outdir=$TMPDIR

convert $TMPDIR/* $OGV-unoptimized.gif

convert $OGV-unoptimized.gif -fuzz 10% -layers Optimize $OGV.gif
