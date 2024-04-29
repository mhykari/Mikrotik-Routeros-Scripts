:global owgp [:put [/interface/wireguard/peers/get 0 endpoint-port ]];
:global nwgp ($owgp + 5);
:if ([/ping "ip address" interval=500ms count=10]<5) do={
:log error "message";
:do {/tool e-mail send to="email address" subject="subject" body="body";
interface/wireguard/set numbers=0 listen-port=$nwgp;
interface/wireguard/peers/set number=0 endpoint-port=$nwgp;
interface/wireguard/disable numbers=0;
interface/wireguard/enable numbers=0;
interface/wireguard/peers/disable numbers=0;
interface/wireguard/peers/enable numbers=0;
}
}