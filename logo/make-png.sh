if [ "$4" = "" ];then
    echo "Usage $0 <input_svg> <output_png> <width> <height>"
    exit;
fi
inkscape -z -e $2 -w $3 -h $4 $1
