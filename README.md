
# WebForge 🛠️⚔️

**WebForge** is a simple and powerful bash script for wrapping around common web hacking tools to make your penetration testing workflow easier. It currently supports tools like **Gobuster**, **Nikto**, and a custom tool **ShellForge**.

---

## Features
- **Gobuster**: Directory brute-forcing with customizable threads and wordlists.
- **Nikto**: Web server vulnerability scanner.
- **ShellForge**: Custom post-exploitation tool (Python).

---

## Installation

### 1. Clone the repository:
```bash
git clone https://github.com/yourusername/WebForge.git
cd WebForge
```

### 2. Install required dependencies:
Make sure you have the following tools installed:

- **Gobuster** (Directory brute-forcing tool)
- **Nikto** (Web server vulnerability scanner)
- **Python 3** (for ShellForge)

Install **Gobuster** and **Nikto** and **Shellforge** using:
```bash
sudo apt install gobuster nikto
sudo git clone https://github.com/UnexpectedRandom/ShellForge.git
```

For **ShellForge**, ensure you have Python 3 installed:
```bash
sudo apt install python3
```

---

## Usage

```bash
./main.sh -u <URI> -w <wordlist> -t <threads> [-s to run ShellForge] [-n to run Nikto] [-h for help]
```

### Options
- `-u <URI>`: Target URL to scan (required)
- `-w <wordlist>`: Wordlist for Gobuster (required)
- `-t <threads>`: Number of threads for Gobuster (default: 10)
- `-s`: Run ShellForge (your custom post-exploitation tool)
- `-n`: Run Nikto to scan the target for vulnerabilities
- `-h`: Show help and usage information

### Example Commands
Run **Gobuster** with a wordlist and 50 threads:
```bash
./main.sh -u http://target.com -w wordlists/small.txt -t 50
```

Run **ShellForge**:
```bash
./main.sh -s
```

Run **Nikto**:
```bash
./main.sh -n -u http://target.com
```

## Requirements
- **Gobuster**: Directory and DNS brute-forcing tool.
- **Nikto**: Web server scanner.
- **Python 3**: For running ShellForge (a custom post-exploitation tool).

---

## Contributing

Feel free to fork the project and create pull requests for improvements or additional tools. Issues and suggestions are welcome!

