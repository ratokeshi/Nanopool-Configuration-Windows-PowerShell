######################################################################################################################################################################
# minerlaunch.ps1 from https://github.com/ratokeshi/Nanopool-Configuration-Windows-PowerShell
# 
# Created by ratokeshi Roy A. Tokeshi @ratokeshi
# Last modified: 2017.12.03
# Comments: Powershell script to simply configure the Clymore dualminer based on https://eth.nanopool.org/help for windows based miners
#
#
######################################################################################################################################################################

#------------------------------------------------------
# Configure these settings to customise your miner
#------------------------------------------------------
# What is your wallet id?
$wallet = "0x3f2A6cF5f8C6C44De71C61703050eA30D541a3d4"
#
# What is your email?
$email = "me@gmail.com"
#
# What is the path to your Claymore folder?
$minerpath = "C:\Users\Administrator\Downloads\Claymore.s.Dual.Ethereum.Decred_Siacoin_Lbry_Pascal.AMD.NVIDIA.GPU.Miner.v10.0"
#
# Only uncomment (remove leading hash) from one of the following lines.
$pool = "eth-us-west1.nanopool.org:9999"
#$pool ="eth-eu1.nanopool.org:9999"
#$pool ="eth-eu2.nanopool.org:9999"
#$pool ="eth-us-east1.nanopool.org:9999"
#$pool ="eth-us-west1.nanopool.org:9999"
#$pool ="eth-asia1.nanopool.org:9999"
#
# Probably don't need to change any of these
$miner = "EthDcrMiner64.exe"
$espw = "x"
$mode = "1"
$ftime = "10"

#-----------------------------------------------------------------------
# These are the reccomended settings from https://eth.nanopool.org/help
# -- Probably don't need to change these lines
#-----------------------------------------------------------------------
setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

#-----------------------------------------------------------------------
# Here is whare the magic happens
# -- Probably don't need to change these lines
#-----------------------------------------------------------------------
$launchminer = "./" + $miner + " -epool " + $pool + " -ewal " + $wallet + "/" + $env:computername + "/" + $email + " -epsw " + $espw + " -mode " + $mode + " -ftime " + $ftime 
cd $minerpath
Write-host "Launching EthDcrMiner64.exe with configured parameters:"
iex $launchminer