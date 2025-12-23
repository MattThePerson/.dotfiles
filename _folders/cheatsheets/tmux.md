# tmux Cheatsheet

## Prefix
- Default: `Ctrl+b`

---

## Session Management

| Action                  | Command                                      |
|-------------------------|---------------------------------------------|
| List sessions           | `tmux ls`                                   |
| Create new session      | `tmux new -s name`                          |
| Attach to session       | `tmux attach -t name`                       |
| Detach from session     | `Ctrl+b d`                                  |
| Rename current session  | `Ctrl+b :rename-session new_name`          |
| Kill session            | `tmux kill-session -t name`                 |

---

## Window Management

| Action                  | Command                                      |
|-------------------------|---------------------------------------------|
| New window              | `Ctrl+b c`                                  |
| Next window             | `Ctrl+b n`                                  |
| Previous window         | `Ctrl+b p`                                  |
| Go to window by number  | `Ctrl+b <num>`                              |
| Rename window           | `Ctrl+b ,`                                  |
| Close window            | `Ctrl+b &`                                  |

---

## Pane Management

| Action                  | Command                                      |
|-------------------------|---------------------------------------------|
| Split horizontally      | `Ctrl+b "`                                  |
| Split vertically        | `Ctrl+b %`                                  |
| Toggle between panes    | `Ctrl+b o`                                  |
| Resize pane             | `Ctrl+b :resize-pane -L/-R/-U/-D <n>`      |
| Kill pane               | `Ctrl+b x`                                  |

---

## Copy / Paste Mode

| Action                  | Command                                      |
|-------------------------|---------------------------------------------|
| Enter copy mode         | `Ctrl+b [`                                  |
| Start selection         | `Space`                                     |
| Scroll                  | Arrow keys / PgUp / PgDn                    |
| Copy selection          | `Enter`                                     |
| Paste buffer            | `Ctrl+b ]`                                  |

---

## Other Useful Commands

| Action                  | Command                                      |
|-------------------------|---------------------------------------------|
| List key bindings       | `Ctrl+b ?`                                  |
| Reload config           | `Ctrl+b :source-file ~/.tmux.conf`         |
| Show messages           | `Ctrl+b :display-message "msg"`            |


