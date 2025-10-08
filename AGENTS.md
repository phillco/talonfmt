# Agent Instructions for talonfmt

## Development Setup

### Custom tree-sitter-talon Fork

**Important**: This project depends on a custom fork of tree-sitter-talon with additional features (support for hardware input declarations like gamepad, deck, face, parrot, noise, and Python if statements).

The fork is located at: `~/src/ports/tree-sitter-talon-phillco`

### Installation for Development

Both packages must be installed in editable mode for development work:

1. **Install tree-sitter-talon fork** (do this first):
   ```bash
   cd ~/src/ports/tree-sitter-talon-phillco
   pip install -e .
   ```

2. **Install talonfmt**:
   ```bash
   cd ~/src/ports/talonfmt
   pip install -e .
   ```

This creates links to the source directories, so code changes are immediately available when running `talonfmt`.

### Making Grammar Changes

When modifying the tree-sitter-talon grammar:

1. Edit `grammar.js` in `~/src/ports/tree-sitter-talon-phillco`
2. Rebuild the parser:
   ```bash
   cd ~/src/ports/tree-sitter-talon-phillco
   npm run build
   ```
3. Reinstall tree-sitter-talon:
   ```bash
   pip uninstall -y tree-sitter-talon && pip install -e .
   ```
4. Test with talonfmt:
   ```bash
   cd ~/src/ports/talonfmt
   talonfmt path/to/file.talon
   ```

### Dependencies

The `pyproject.toml` references the local fork via:
```toml
tree_sitter_talon @ file:///Users/phillco/src/ports/tree-sitter-talon-phillco
```

This ensures the correct fork is used when installing talonfmt.

## Testing

After making changes, test with:

```bash
talonfmt path/to/file.talon
```

Or run the test suite (if available):

```bash
pytest
```
