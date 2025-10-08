# Agent Instructions for talonfmt

## Development Setup

To install this package in development/editable mode so that changes are immediately reflected:

```bash
pip install -e .
```

This creates a link to the source directory, so any code changes you make are immediately available when running `talon-format`.

## Testing

After making changes, test with:

```bash
talon-format path/to/file.talon
```

Or run the test suite (if available):

```bash
pytest
```
