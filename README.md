# Homebrew Tap for SketchyVim (skvim)

Security-hardened Homebrew tap for SketchyVim with allowlist support, comprehensive security fixes, and professional-grade implementation.

## Installation

```bash
brew tap tadeucbm/skvim
brew install skvim
```

## Security Features

This security-hardened version includes:

- **Memory safety**: Fixed critical buffer overflow and memory corruption vulnerabilities
- **Process security**: Replaced dangerous `vfork()` with secure `posix_spawn()` implementation  
- **Compiler hardening**: Stack protection, fortify source, and PIE enabled
- **Input validation**: Comprehensive bounds checking and validation throughout
- **Allowlist security model**: Only explicitly allowed applications get vim functionality (secure by default)
- **Bundle ID inheritance fix**: System overlays no longer incorrectly inherit vim functionality

## Configuration

After installation, edit `~/.config/skvim/allowlist` to add applications where you want vim functionality:

```
Safari
com.apple.Safari
TextEdit
com.apple.TextEdit
Visual Studio Code
com.microsoft.VSCode
```

## Service Management

Start the service:
```bash
brew services start skvim
```

Stop the service:
```bash
brew services stop skvim
```

Check service status:
```bash
brew services list | grep skvim
```

## Requirements

- macOS (any recent version)
- Xcode command line tools
- Accessibility permissions (granted when first launched)

## Original Project

Based on [SketchyVim](https://github.com/FelixKratz/SketchyVim) by Felix Kratz.