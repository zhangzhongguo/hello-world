#!/bin/tcsh


if ( test"$1" == test"" ) then
echo Usage:
echo './movetogw {imsi|msisdn} {USER ID} {GATEWAY NAME}'
echo Example:
echo ./movetogw imsi 460022712461008 whsaegw33ber
echo ./movetogw msisdn 8615998452386 whsaegw33ber
exit 0
endif


if ( test"$3" == test"" ) then
echo Usage:
echo './movetogw {imsi|msisdn} {USER ID} {GATEWAY NAME}'
echo Example:
echo ./movetogw imsi 460022712461008 whsaegw33ber
echo ./movetogw msisdn 8615998452386 whsaegw33ber
exit 0
endif

if ( test"$1" == test'-h' ) then
echo Usage:
echo './movetogw {imsi|msisdn} {USER ID} {GATEWAY NAME}'
echo Example:
echo ./movetogw imsi 460022712461008 whsaegw33ber 
echo ./movetogw msisdn 8615998452386 whsaegw33ber
exit 0
endif



if (( test"$1" == test'imsi' ) || ( test"$1" == test'msisdn' )) then
echo "Moving...Press Ctrl+C to stop."
else
echo ERRoR: 1st parameter should be "imsi" or "msisdn"
exit 0
endif


set output = `gsh get_subscriber -$1 $2 -dl 2 | grep -E -A1 "PGW in use" | grep FQDN`
echo ID METHOD: $1
echo ID       : $2
echo GW       : $3

echo CURRENT info:
echo $output

set iscorrect=`echo $output| grep -i -o $3`
#echo $iscorrect

if ( test$iscorrect != test"" ) then 
echo "Done!" 
gsh get_subscriber -$1 $2  -dl 2 | grep -E -A1 "Address in use|PGW in use"

exit 0
endif 



set i = 1

while (!( test"$iscorrect" != test"" ))
set output = `gsh get_subscriber -$1 $2 -dl 2 | grep -E -A1 "PGW in use" | grep FQDN`
usleep 500000
echo "Moving...Not This Gateway. Continue..." 
while (!( test"$output" != test"" ))
set output = `gsh get_subscriber -$1 $2 -dl 2 | grep -E -A1 "PGW in use" | grep FQDN`
usleep 500000
echo "Moving...Subscriber is not registered yet. Waiting..."
end


echo $output

set iscorrect=`echo $output| grep -i -o $3`



if ( $iscorrect != "" ) then
echo "Done!"
gsh get_subscriber -$1 $2 -dl 2 | grep -E -A1 "Address in use|PGW in use"

exit 0
endif
gsh delete_subscriber -$1 $2 -dettype reattach_required


end

