# Ports, Protocols & Transport Layer 🚢

A reference guide to essential network protocols, transport layers (TCP/UDP), and common ports used in Cloud Security configurations (AWS Security Groups).

## 1. The Transport Layer: TCP vs. UDP
The two main protocols for data transmission on the internet.

### 🛡️ TCP (Transmission Control Protocol)
- **Type:** Connection-oriented.
- **Characteristics:** Reliable, ordered, and error-checked.
- **Mechanism:** Uses the **3-Way Handshake** to establish a connection.
    1.  **SYN:** Client sends a synchronization request.
    2.  **SYN-ACK:** Server acknowledges and sends its own sync request.
    3.  **ACK:** Client acknowledges the server.
- **Use Case:** Web browsing (HTTP/HTTPS), Email, File Transfers.

### ⚡ UDP (User Datagram Protocol)
- **Type:** Connectionless ("Fire and Forget").
- **Characteristics:** Faster but unreliable (no guarantee of delivery or order).
- **Use Case:** Streaming, VoIP, Gaming, DNS lookups.

---

## 2. Common Ports "Cheatsheet"
Ports act as "doors" for specific services. 
- **Well-Known:** 0 - 1023
- **Registered:** 1024 - 49,151
- **Dynamic:** 49,152 - 65,535

| Port | Protocol | Service | Description | Security Context |
| :--- | :--- | :--- | :--- | :--- |
| **20/21** | TCP | **FTP** | File Transfer Protocol | ⚠️ **Unsafe.** Transmits data in cleartext. Use SFTP instead. |
| **22** | TCP | **SSH** | Secure Shell | **Critical.** Encrypted remote access. Never expose to 0.0.0.0/0. |
| **23** | TCP | **Telnet**| Remote Access | ⛔ **Obsolete/Dangerous.** Sends passwords in cleartext. |
| **25** | TCP | **SMTP** | Simple Mail Transfer | Email sending. Often blocked by cloud providers to prevent spam. |
| **53** | TCP/UDP| **DNS** | Domain Name System | Translates names (google.com) to IPs. UDP for queries, TCP for zone transfers. |
| **67/68**| UDP | **DHCP** | Dynamic Host Config | Assigns internal IPs to devices automatically. |
| **80** | TCP | **HTTP** | HyperText Transfer | Web traffic. **Unencrypted.** Vulnerable to Man-in-the-Middle attacks. |
| **443** | TCP | **HTTPS**| HTTP Secure | **Standard.** Web traffic encrypted via TLS/SSL. |
| **110** | TCP | **POP3** | Post Office Protocol | Retrieves emails (downloads and deletes from server). |
| **143** | TCP | **IMAP** | Internet Message Access | Retrieves emails (syncs with server). |
| **161** | UDP | **SNMP** | Network Management | Used to monitor network devices. |
| **3306** | TCP | **MySQL** | Database | Default port for MySQL databases. Should only be accessible internally. |
| **3389** | TCP | **RDP** | Remote Desktop | Windows remote GUI access. High target for brute-force attacks. |
| **8080** | TCP | **HTTP-Proxy**| Web Proxy | Often used for secondary web servers or development testing. |

---

## 3. Key Concepts Glossary

### Client vs. Server
- **Client:** The requester (e.g., your browser, or an SSH terminal).
- **Server:** The host providing the resource (e.g., the EC2 instance hosting the website).

### HTTP vs. HTTPS 🔒
- **HTTP:** Plain text communication. Anyone sniffing the network can read the data.
- **HTTPS:** Encrypted communication using TLS certificates. Protects against **Man-in-the-Middle (MitM)** attacks.

### DNS (Domain Name System) 🌍
- Acts as the "Phonebook of the Internet."
- **Function:** Resolves human-readable domain names (e.g., `google.com`) into machine-readable IP addresses (e.g., `142.250.1.1`).
