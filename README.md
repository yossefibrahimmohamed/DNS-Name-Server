# Zone Transfer Enumeration (zone.sh)

A simple Bash script for **DNS Zone Transfer (AXFR) testing** using the `host` command.

The script retrieves the domain's authoritative Name Servers (NS Records), then attempts a DNS Zone Transfer against each Name Server and filters the results to display records containing IP addresses.

## Requirements

- Linux (Kali Linux / Ubuntu / Debian)
- Bash
- `host` command (provided by the `dnsutils` package)

Install the required package:

```bash
sudo apt update
sudo apt install dnsutils -y
```

## Installation

Clone the repository:

```bash
git clone https://github.com/yossefibrahimmohamed/DNS-Name-Server.git
```

Navigate to the project directory:

```bash
cd zone.sh
```

Give the script execution permission:

```bash
chmod +x zone.sh
```

## Usage

Run the script by providing a target domain:

```bash
./zone.sh example.com
```

### Example

```bash
./zone.sh example.com
```

The script will:

1. Retrieve the domain's Name Servers (NS Records).
2. Extract the Name Server hostnames.
3. Attempt a DNS Zone Transfer (AXFR) against each Name Server.
4. Display DNS records containing IP addresses if the transfer is successful.

## How It Works

```bash
host -t ns example.com
```

Retrieves the authoritative Name Servers.

```bash
host -l example.com ns1.example.com
```

Attempts a DNS Zone Transfer (AXFR).

```bash
grep "has address"
```

Filters the output to show records containing IP addresses.

## Disclaimer

This tool is intended for educational purposes and authorized security testing only.

Only test domains and DNS servers that you own or have explicit permission to assess.

Unauthorized DNS Zone Transfer attempts may violate applicable laws or policies.

## Author

**Youssef Ibrahim**

Cyber Security Engineer | Penetration Tester | Network Security
