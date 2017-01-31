if [ "$3" = "" ];then
    echo "Usage $0 <input_svg> <output_svg> <color_hex>"
    exit;
fi
sed "s/c4692c/$3/g" $1 > $2
