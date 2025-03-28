# sumahealth 🦎
Script to monitor the status of the SUMA or SMLM services  
SMLM version: 5.0 
## Install it
```bash
curl -L https://raw.githubusercontent.com/gpaolettig/sumahealth/master/sumahealth.sh -o sumahealth.sh
chmod +x sumahealth.sh
```
## Try it
```
./sumahealth.sh --help
Usage: sumahealth [OPTIONS]

OPTIONS:
  -r, --resume	Show the number of active and inactive services.
  -a, --all	Show the status of services with symbols ● (active) or ○ (inactive).
 -in, --inactive	Show the inactive services.
  -h, --help	Show this help message.
```
