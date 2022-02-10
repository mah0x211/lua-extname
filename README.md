# lua-extname

[![test](https://github.com/mah0x211/lua-extname/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-extname/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/mah0x211/lua-extname/badge.svg?branch=master)](https://coveralls.io/github/mah0x211/lua-extname?branch=master)

extract the extension part of a pathname.


## Installation

```
luarocks install extname
```


## ext = extname( pathname [, multiple] )

extract the extension part of a pathname.

**Parameters**

- `pathname:string`: pathname string.
- `multiple:boolean`: set `true` to extract the multiple extensions. (default: `false`)

**Returns**

- `ext:string`: the extension part of a pathname.

**Example**

```lua
local extname = require('extname')
print(extname('foo.tar.gz'))        -- '.gz'
print(extname('foo.tar.gz', true))  -- '.tar.gz'
```
