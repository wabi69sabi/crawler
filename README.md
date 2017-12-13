## Web Crawler

This is my first attempt to create a web crawler.

### Goals

A ruby based crawler that can scrape domains that were collected with a search tool.

### Specs and Tools

Would like to use GDBM to store data to db, but currently experiencing problems with installing GDBM in linux.
Solved the issue in Debian with first installing libgdbm-dev:

```bash
➜  ~ sudo apt-get install libgdbm-dev
➜  ~ gem install 'gdbm'
```
