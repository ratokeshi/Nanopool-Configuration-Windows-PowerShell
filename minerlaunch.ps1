setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

$minerpath = "C:\Users\Administrator\Downloads\Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v10.0"
$miner = "EthDcrMiner64.exe"
$pool = "eth-us-west1.nanopool.org:9999"
$wallet = "0x3f2A6cF5f8C6C44De71C61703050eA30D541a3d4"
$email = "roy.tokeshi@gmail.com"
$espw = "x"
$mode = "1"
$ftime = "10"


$launchminer = "./" + $miner + " -epool " + $pool + " -ewal " + $wallet + "/" + $env:computername + "/" + $email + " -epsw " + $espw + " -mode " + $mode + " -ftime " + $ftime 
cd $minerpath
iex $launchminer

#EthDcrMiner64.exe -epool eth-us-west1.nanopool.org:9999 -ewal 0x3f2A6cF5f8C6C44De71C61703050eA30D541a3d4/svr16bravo/roy.tokeshi@gmail.com -epsw x -mode 1 -ftime 10