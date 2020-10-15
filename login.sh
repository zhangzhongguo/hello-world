ubuntu@5gc-server:~$ cat login.sh
echo -e "\033[38;49;5m **\033[39;49;0m\033[36;49;5m **\033[37;49;0m\033[38;49;5m **\033[39;49;0m\033[36;49;5m **\033[39;49;0m\033[38;49;5m **\033[39;49;0m\033[36;49;5m **\033[39;49;0m\033[38;49;5m **\033[37;49;0m\033[36;49;5m **\033[39;49;0m\033[38;49;5m **\033[37;49;0m
"
echo -n " 1.HN_AMF01222
"
echo -n " 2.HN_AMF03
"
echo -n " 3.HN_SMF01
"
echo -n " 4.HN_SMF03
"
echo -n " 5.HA_AMF01
"
echo -n " 6.HA_AMF03
"
echo -n " 7.HA_SMF01
"
echo -n " 8.HA_SMF03
"
echo -n " 9.HB_AMF01
"
echo -n " 10.HB_AMF03
"
echo -n " 11.HB_SMF01
"
echo -n " 12.HB_SMF03
"
echo -n " 13.HN_AMF02
"
echo -n " 14.HN_SMF02
"
echo -n " 15.GX_AMF02
"
echo -n " 16.GX_AMF04
"
echo -n " 17.GX_SMF02
"
echo -n " 18.HN_AMF04
"
echo -n " 19.HN_SMF04
"
echo -n " 20.HA_AMF02
"
echo -n " 21.HA_AMF04
"
echo -n " 22.HA_SMF02
"
echo -n " 23.HA_SMF04
"
echo -n " 24.HB_SMF02
"
echo -n " 25.HB_SMF04
"
echo -n " 26.HB_AMF02
"
echo -n " 27.HB_AMF04
"
echo -n " 28.HN_SMF05
"
echo -n " 29.HN_SMF06
"
echo -n " 30.HN_SMF07
"
echo -n " 31.HN_SMF08
"
echo -n " a.atlas
"

echo -n "  Please choose one ^_^ :"

read num
case $num in
1)
        ssh sysadm@10.245.90.112
        ;;
2)
        ssh sysadmin@10.245.90.114
        ;;
3)
        ssh ericsson@10.245.90.116
        ;;
4)
        ssh ericsson@10.245.90.118
        ;;
5)
        ssh sysadm@10.245.90.104
        ;;
6)
        ssh sysadm@10.245.90.106
        ;;
7)
        ssh ericsson@10.245.89.244
        ;;
8)
        ssh ericsson@10.245.90.110
        ;;
9)
        ssh sysadm@10.245.90.120
        ;;
10)
        ssh sysadm@10.245.90.122
        ;;
11)
        ssh ericsson@10.245.90.124
        ;;
12)
        ssh ericsson@10.245.90.126
        ;;
13)
        ssh ipnets@10.245.64.64
        ;;
14)
        ssh ericsson@10.245.64.67
        ;;
15)
        ssh sysadm@10.245.90.32
        ;;
16)
        ssh sysadm@10.245.90.34
        ;;
17)
        ssh ericsson@10.245.90.20
        ;;
18)
        ssh ipnets@10.245.64.65
        ;;
19)
        ssh ericsson@10.245.64.70
        ;;
20)
        ssh ipnets@10.245.62.140
        ;;
21)
        ssh ipnets@10.245.62.141
        ;;
22)
        ssh ericsson@10.245.62.143
        ;;
23)
        ssh ericsson@10.245.62.146
        ;;
24)
        ssh ericsson@10.245.61.159
        ;;
25)
        ssh ericsson@10.245.61.162
        ;;
26)
        ssh ipnets@10.245.61.156
        ;;
27)
        ssh ipnets@10.245.61.167
        ;;
28)
        ssh ericsson@10.245.90.88
        ;;
29)
        ssh ericsson@10.245.64.76
        ;;
30)
        ssh ericsson@10.245.90.90
        ;;
31)
        ssh ericsson@10.245.64.78
        ;;
a)
        ssh atlasadm@10.245.81.34
        ;;
*)
        echo "Please choose again ^_^"
        ;;

esac
