# Build and install from source (standard install)
build:
    python -m build --wheel
    @echo "✓ Wheel built in dist/"

install: build
    pip install --force-reinstall --no-deps dist/talonfmt-*.whl
    @echo "✓ Installed talonfmt from wheel"

# Install in editable mode for development
install-dev:
    pip install -e .
    @echo "✓ Installed talonfmt in editable mode"

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

# Run tests
test:
    pytest

# Format code
format:
    black src/
    isort src/
