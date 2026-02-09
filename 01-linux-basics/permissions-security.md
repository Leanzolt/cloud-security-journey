# Linux Permissions & File Security 🔐

Mastering file permissions is critical for hardening systems and preventing unauthorized access.

## 1. Standard Permissions (rwx)
| Symbol | Value | Description |
| :--- | :--- | :--- |
| **r** (Read) | 4 | View file contents or list directory. |
| **w** (Write) | 2 | Modify file contents or create/delete files. |
| **x** (Execute)| 1 | Run a file as a program or enter a directory. |

### Common Security Configurations
- **`chmod 755` (rwxr-xr-x):** Standard for scripts/directories. Owner can write; everyone else can only read/execute.
- **`chmod 644` (rw-r--r--):** Standard for text files. Owner can read/write; others can only read.
- **`chmod 600` (rw-------):** **High Security.** Only the owner can read/write. Used for config files containing passwords.
- **`chmod 400` (r--------):** **Strict Security.** Read-only for owner. Required for AWS SSH Keys (`.pem`).

---

## 2. Special Permissions (The Danger Zone) ⚠️

### SUID (Set User ID)
- **Concept:** When a file with SUID is executed, it runs with the permissions of the **file owner** (usually `root`), not the user who ran it.
- **Risk:** If a SUID binary has a vulnerability, a standard user can exploit it to execute commands as root (**Privilege Escalation**).
- **Indicator:** Look for an **`s`** in the user permission slot (e.g., `-rwsr-xr-x`).

#### Example: The `passwd` command
The `passwd` command needs SUID because a normal user needs to update `/etc/shadow` (owned by root) to change their password.
```bash
ls -l /usr/bin/passwd
# Output: -rwsr-xr-x 1 root root ...
