# Changelog

All notable changes to talonfmt will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.10.4] - 2025-10-08

### Added
- Add resilient fallback for unknown node types in formatter (preserves original text for unsupported declarations)
- Add justfile with build, install, build-static, and install-static commands
- Support for hardware input declarations (gamepad, deck, face, parrot, noise) via custom tree-sitter-talon fork

### Fixed
- Fix critical bug where formatter removed parentheses from unary expressions, changing semantics (#12)
  - Example: `-(a or b)` is now preserved instead of being changed to `-a or b`
- Fix comment formatting to prevent parse tree changes (consecutive comments no longer have blank lines inserted)
- Fix exit() calls to use sys.exit() for PyInstaller compatibility
- Parser now correctly handles hardware input identifiers with underscores, dots, and special characters (!,/)

### Changed
- Now uses forked tree-sitter-talon with fixed grammar precedence for hardware declarations
- Formatter gracefully preserves formatting for declaration types it doesn't yet support

## [1.10.3] - 2025-10-08

### Fixed
- Fix parser parentheses removal (#3)
- Improve handling of nested and redundant parentheses during reformatting

## [1.10.2] - Previous release

(Earlier changes not documented)
