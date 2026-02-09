# Networking Fundamentals: VLSM & Subnetting 🌐

Documenting my progress in Variable Length Subnet Masking (VLSM) to optimize IP address allocation.

## Concepts Covered
- **VLSM Calculation:** Designing subnets for different department sizes.
- **WAN Links:** Configuring /30 subnets for point-to-point connections.
- **IP Addressing:** Network ID, Broadcast, and Usable range.

# Advanced VLSM & Network Design Labs 🌐

This document contains a series of Variable Length Subnet Masking (VLSM) exercises, demonstrating efficient IPv4 address allocation and network planning for scalable infrastructures.

## Project 1: Multi-Branch Network Design
**Scenario:** A company needs to segment its network for a Headquarters (HQ) and two remote branches, accounting for a 20% future growth in hosts.
**Base Network:** `172.28.0.0/16`

### 1. Headquarters (HQ)
- **Requirement:** 850 hosts (+20% growth = 1020 hosts).
- **Calculation:** 2^10 = 1024 hosts.
- **Subnet Mask:** /22 (255.255.252.0).
- **Network ID:** `172.28.0.0/22`
- **Gateway:** `172.28.0.1`
- **Broadcast:** `172.28.3.255`
- **Range:** `172.28.0.1` - `172.28.3.254`

### 2. Branch A
- **Requirement:** 220 hosts (+20% growth = 264 hosts).
- **Calculation:** 2^9 = 512 hosts (Selected for scalability).
- **Subnet Mask:** /23 (255.255.254.0).
- **Network ID:** `172.28.4.0/23`
- **Gateway:** `172.28.4.1`
- **Broadcast:** `172.28.5.255`

### 3. Branch B
- **Requirement:** 95 hosts (+20% growth = 114 hosts).
- **Calculation:** 2^7 = 128 hosts.
- **Subnet Mask:** /25 (255.255.255.128).
- **Network ID:** `172.28.6.0/25`
- **Gateway:** `172.28.6.1`
- **Broadcast:** `172.28.6.127`

---

## Project 2: Departmental Segmentation (Large Scale)
**Scenario:** Segmentation for a large corporation starting from `171.16.0.0/18`.

| Department | Hosts Needed | Subnet Mask | Network ID | Broadcast IP |
| :--- | :--- | :--- | :--- | :--- |
| **R&D** | 4,096 | /20 | `171.16.0.0` | `171.16.15.255` |
| **Sales & Marketing** | 2,048 | /21 | `171.16.16.0` | `171.16.23.255` |
| **Tech Support** | 512 | /23 | `171.16.24.0` | `171.16.25.255` |
| **HR** | 256 | /24 | `171.16.26.0` | `171.16.26.255` |
| **Admin** | 128 | /25 | `171.16.27.0` | `171.16.27.127` |

---

## Key Concepts Demonstrated
- **Scalability:** Calculated subnets with 20% buffer for future devices.
- **Binary Math:** Efficiently determined CIDR blocks (/22, /23, /25) to minimize IP wastage.
- **Network Hierarchy:** Ordered allocation from largest requirements to smallest to prevent address overlapping.
