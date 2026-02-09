# IPv4 Addressing Fundamentals 🌐

Documentation of IPv4 concepts, addressing types, and class structures based on my networking studies.

## 1. IP Address Types
The Internet Protocol (IP) serves as the identification system for networks. Addresses are divided into two main categories:

### Public vs. Private IPs
| Type | Description | Assignment Method |
| :--- | :--- | :--- |
| **Public IP** | Unique worldwide. Required to access the internet. | Assigned by the **ISP** (Internet Service Provider). |
| **Private IP** | Used within a Local Area Network (LAN). Non-routable on the internet. | Assigned by the Router via **DHCP** (Dynamic Host Configuration Protocol). |

> **Note on NAT:** To allow private devices to access the internet, **NAT (Network Address Translation)** is used to translate private internal IPs into a single public IP.

---

## 2. IP Classes (Classful Addressing)
IPv4 addresses are categorized by their first octet to determine network size.

| Class | First Octet Range | Default Subnet Mask | CIDR | Max Hosts | Use Case |
| :--- | :---: | :---: | :---: | :--- | :--- |
| **A** | `1` - `126`* | `255.0.0.0` | `/8` | ~16 Million | Large Enterprises / ISPs |
| **B** | `128` - `191` | `255.255.0.0` | `/16` | ~65,000 | Medium Organizations |
| **C** | `192` - `223` | `255.255.255.0`| `/24` | 254 | Small Offices / Home Networks |

> **Correction:** While Class A technically starts at 0, the range **127.x.x.x** is reserved for **Loopback** (e.g., `127.0.0.1` or localhost) and cannot be assigned to a network.

---

## 3. Reserved Addresses in a Subnet
In every network block, two addresses are always reserved and cannot be assigned to devices:

1.  **Network ID (First IP):** Identifies the network segment itself.
2.  **Broadcast Address (Last IP):** Used to transmit data to all devices within that specific subnet.
