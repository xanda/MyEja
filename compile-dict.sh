grep -v '^ *$' ms-MY.txt | sort | uniq > ms-MY.tmp
mv ms-MY.tmp ms-MY.txt
grep -v '^ *$' ms-MY.txt | sort | uniq | wc -l | grep -E -o '[0-9]{1,}' > dictionaries/ms-MY.dic
echo "" >> dictionaries/ms-MY.dic
grep -v '^ *$' ms-MY.txt | sort | uniq >> dictionaries/ms-MY.dic
#echo "" >> dictionaries/ms-MY.dic
echo ""
echo "Dictionaries compiled!"
