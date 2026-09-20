# Sikaru authoring companion

This separately installed package compiles explicitly selected customer source
files. It performs no network requests and includes no execution runtime. The
`sikaru_api` SDK remains unmodified Fern output.

From the SDK repository:

```sh
python -m pip install ./client-extensions/authoring
```

```python
from sikaru_authoring import compile_directory

bundle = compile_directory("support-agent")
# Pass bundle.definition and bundle.content_digest to the generated SDK.
```

Only files named in `sikaru.json` are packaged. Symlinks, traversal, unsupported
source kinds, and oversized bundles are rejected. The gateway validates the
public source contract before publication.
