# hackernews-sandbox
A dead-simple [sinatra](https://github.com/sinatra/sinatra) sandbox for [Hacker News API](https://github.com/HackerNews/API)

**Install**

```bash
$ bundle install
```

**Run**

```bash
$ ruby server.rb -o 0.0.0.0
```

**Test**

* [http://localhost:4567/v0/topstories.json](http://localhost:4567/v0/topstories.json)
* [http://localhost:4567/v0/newstories.json](http://localhost:4567/v0/newstories.json)
* [http://localhost:4567/v0/showstories.json](http://localhost:4567/v0/showstories.json)
* [http://localhost:4567/v0/askstories.json](http://localhost:4567/v0/askstories.json)
* [http://localhost:4567/v0/item/1.json](http://localhost:4567/v0/item/1.json)
* [http://localhost:4567/v0/item/9019505.json](http://localhost:4567/v0/item/9019505.json)
 
**Switch to another sandbox dataset**

* [http://localhost:4567/_sandbox/empty](http://localhost:4567/_sandbox/empty)
* [http://localhost:4567/v0/topstories.json](http://localhost:4567/v0/topstories.json) -> `[ ]`
* [http://localhost:4567/v0/item/1.json](http://localhost:4567/v0/item/1.json) -> `null`

Sandbox responses are located under `/responses/<dataset>`, e.g. [`/response/default`](/responses/default), with paths matching corresponding URL segments.
