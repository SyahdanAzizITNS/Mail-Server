echo -n "telnet ip address: "
read -r telnet

echo -n "email from: "
read -r from

echo -n "receipt to: "
read -r message

echo -n "how many spam: "
read -r spam

for i in $ ( eval echo (1..$spam) )
do
echo "telnet $telnet 25 << EOF" >> run.sh
echo "mail from:$from" >> run.sh
echo "rcpt to:$to" >> run.sh
echo "data" >> run.sh
echo "$message" >> run.sh
echo "." >> run.sh
echo " " >> run.sh
done

bash run.sh
