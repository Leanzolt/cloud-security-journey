# Process Management & Monitoring ⚙️

Identifying malicious or runaway processes is a key task for a SOC Analyst.

## Key Commands
| Command | Description |
| :--- | :--- |
| `ps aux` | Snapshot of all running processes. |
| `top` / `htop` | Real-time system monitoring (CPU/RAM usage). |
| `kill -9 <PID>` | Forcefully terminate a process. |
| `lsof -i` | List open files and network connections. |

## Hunting Suspicious Processes
**Scenario:** High CPU usage detected on a web server.
1. Run `top` to identify the Process ID (PID).
2. Check the command path: `ls -l /proc/<PID>/exe`.
3. If unknown, terminate it: `kill -9 <PID>`.
