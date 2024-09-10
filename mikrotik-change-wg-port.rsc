:local owgp [:put [/interface/wireguard/peers/get 0 endpoint-port ]];
:local nwgp ($owgp + 1);
:do {
interface/wireguard/set numbers=0 listen-port=$nwgp;
interface/wireguard/peers/set number=0 endpoint-port=$nwgp;
interface/wireguard/disable numbers=0;
interface/wireguard/enable numbers=0;
interface/wireguard/peers/disable numbers=0;
interface/wireguard/peers/enable numbers=0;
}