if [ "$4" = "" ];then
    echo "Usage $0 <theme_name> <input_svg> <output_dir> <color_hex>"
    exit;
fi
sh make-banner.sh $2 $3/logo-banner-$1.svg.tmp
sh make-small.sh $2 $3/logo-small-$1.svg.tmp
sh make-themed.sh $2 $3/logo-$1.svg $4
sh make-themed.sh $3/logo-banner-$1.svg.tmp $3/logo-banner-$1.svg $4
sh make-themed.sh $3/logo-small-$1.svg.tmp $3/logo-small-$1.svg $4
rm -f $3/logo-*-$1.svg.tmp
#sh make-png.sh $3/logo-$1.svg $3/logo-$1.png 320 70
#sh make-png.sh $3/logo-banner-$1.svg $3/logo-banner-$1.png 217 47
#sh make-png.sh $3/logo-small-$1.svg $3/logo-small-$1.png 45 45
echo "---------Run:----"
echo "rsvg-convert logo-small-$1.svg > logo-small-$1.png"
echo "rsvg-convert logo-$1.svg > logo-$1.png"
echo "rsvg-convert logo-banner-$1.svg > logo-banner-$1.png"
