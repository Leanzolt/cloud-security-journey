# Linux Log Analysis with journalctl 🐧

This lab focuses on monitoring system logs, which is a critical skill for identifying security incidents and system failures.

## Key Commands
- **View all logs:** `journalctl`
- **Filter by service (e.g., SSH):** `journalctl -u ssh`
- **Show logs from today:** `journalctl --since today`
- **Show critical errors only:** `journalctl -p err..emerg`

## Security Use Case
Using `journalctl` to detect multiple failed login attempts through SSH, which could indicate a Brute Force attack.
 
