if [ "$2" = "" ];then
    echo "Usage $0 <input_svg> <output_svg>"
    exit;
fi
TEMP_NAME=svgtmp.svg
sed 's/width="440"/width="90"/g' $1 > /tmp/$TEMP_NAME && sed 's/0\ 0\ 440\ 90/0\ 0\ 90\ 90/g' /tmp/$TEMP_NAME > $2 && rm /tmp/$TEMP_NAME
