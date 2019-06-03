diffxml in Docker
=================

See also: http://diffxml.sourceforge.net/

Building
--------
```bash
docker build -t diffxml .
```

Running
-------

```bash
docker run --rm -ti -v "${PWD}":/root diffxml <file> <file>
```