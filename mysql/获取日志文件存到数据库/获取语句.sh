#��ȡ�����ļ�
#for f in `ls $basedir/stat/*.log`
#��ȡָ�������ļ�
for f in `ls $basedir/stat/fr_*$date_dir.log`
do
       sql="LOAD DATA INFILE '$f' INTO TABLE alllogstat_temp character set 'gbk' FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n';";
       echo $sql > $basedir/alllogproc.sql
       $basedir/dbinser.sh $basedir/alllogproc.sql

	   echo $f>>$basedir/logs.log 
	   rm $f
done