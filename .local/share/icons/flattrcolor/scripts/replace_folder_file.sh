#!/usr/bin/env bash
#	default color: 178984
oldglyph=#582c35
newglyph=#344b44

#	Front
#	default color: 36d7b7
oldfront=#9f4f5f
newfront=#5f887c

#	Back
#	default color: 1ba39c
oldback=#6d3641
newback=#415d55

sed -i "s/#524954/$oldglyph/g" $1
sed -i "s/#9b8aa0/$oldfront/g" $1
sed -i "s/#716475/$oldback/g" $1
sed -i "s/$oldglyph;/$newglyph;/g" $1
sed -i "s/$oldfront;/$newfront;/g" $1
sed -i "s/$oldback;/$newback;/g" $1
