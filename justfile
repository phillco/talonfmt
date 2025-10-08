# Build static binary with PyInstaller and copy to ~/bin/vendor
build-static:
    pyinstaller --clean talonfmt-static.spec
    cp dist/talonfmt-static ~/bin/vendor/
    @echo "✓ Static binary built: ~/bin/vendor/talonfmt-static"
    @ls -lh ~/bin/vendor/talonfmt-static

# Test the static binary
test-static:
    ~/bin/vendor/talonfmt-static /tmp/test_mixed.talon
    @echo "✓ Static binary test passed"

# Install in editable mode for development
install-dev:
    pip install -e .
    @echo "✓ Installed talonfmt in editable mode"

# Build wheel
build-wheel:
    python -m build --wheel
    @echo "✓ Wheel built in dist/"

# Run tests
test:
    pytest

# Format code
format:
    black src/
    isort src/
