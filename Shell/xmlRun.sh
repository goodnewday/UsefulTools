#!/bin/bash
i=1

while(($i<=5))
do
	echo "$i"
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><server xmlns=\"urn:skylight\" version='1.0'><action>startmerging</action><picForm>gif</picForm><s3BucketZone>s3.cn-north-1.amazonaws.com.cn</s3BucketZone><srcPicKey>skl-developer/device/gifmerge/snapshot_yubo$i.tar</srcPicKey><disPicKey>skl-developer/device/gifmerge/$i.gif</disPicKey><disPicFileID>3707239024716353584</disPicFileID></server>" > $i.txt
	let "i++"
done

