for i in `cat ./iplist.txt | awk '{print $1}'`
do
  echo $i
  ssh root@$i 'bash /root/fabric-test/first-network/tools/clean_dockers.sh'
done
