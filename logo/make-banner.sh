if [ "$2" = "" ];then
    echo "Usage $0 <input_svg> <output_svg>"
    exit;
fi
sed 's/000000/ffffff/g' $1 > $2
