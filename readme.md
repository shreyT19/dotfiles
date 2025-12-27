# 🧰 Dotfiles (Zsh + Powerlevel10k)

A clean, fast, and reproducible Zsh setup using **oh-my-zsh**, **Powerlevel10k**, and modern CLI tools.

This repository is designed to make setting up a new machine painless and predictable.

---

## ✨ Features

- Zsh configuration
- oh-my-zsh (minimal plugins)
- Powerlevel10k prompt
- zoxide for smart directory navigation
- zsh-autosuggestions
- zsh-syntax-highlighting
- Essential Git aliases
- One-command installer
- No shell history or machine-specific clutter

---

## 📁 Structure

```

dotfiles/
├── zsh/
│ ├── zshrc
│ └── p10k.zsh
├── install.sh
└── README.md

```

---

## 🚀 Installation

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the installer

```bash
chmod +x install.sh
./install.sh
```

### 3. Restart your terminal

Your shell is now set up 🎉

---

## 🔁 Updating

To pull updates and apply them:

```bash
cd ~/dotfiles
git pull
source ~/.zshrc
```

---

## 🛠 Installed Tools

Installed automatically using Homebrew:

- zoxide
- fzf
- zsh-autosuggestions
- zsh-syntax-highlighting
- powerlevel10k
- git

Homebrew will be installed automatically if missing.

---

## 🎨 Customization

- Prompt configuration: `zsh/p10k.zsh`
  Or run:

  ```bash
  p10k configure
  ```

- Shell behavior and aliases: `zsh/zshrc`

---

## ⚠️ Notes

- macOS only (Homebrew-based)
- Uses zsh as the default shell
- Conda and shell history are intentionally disabled
- Safe to run the installer multiple times

---

## 📄 License

MIT

````

---

### ✅ What to do next

1. Replace `YOUR_USERNAME` with your GitHub username
2. Save as `README.md`
3. Commit & push:

```bash
git add README.md
git commit -m "Add README with installation steps"
git push
````
