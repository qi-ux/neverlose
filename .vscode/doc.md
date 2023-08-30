# bit


```lua
bitlib
```


---

# bit.arshift


```lua
function bit.arshift(x: integer, n: integer)
  -> y: integer
```


---

# bit.band


```lua
function bit.band(x: integer, x2: integer, ...integer)
  -> y: integer
```


---

# bit.bnot


```lua
function bit.bnot(x: integer)
  -> y: integer
```


---

# bit.bor


```lua
function bit.bor(x: integer, x2: integer, ...integer)
  -> y: integer
```


---

# bit.bswap


```lua
function bit.bswap(x: integer)
  -> y: integer
```


---

# bit.bxor


```lua
function bit.bxor(x: integer, x2: integer, ...integer)
  -> y: integer
```


---

# bit.lshift


```lua
function bit.lshift(x: integer, n: integer)
  -> y: integer
```


---

# bit.rol


```lua
function bit.rol(x: integer, n: integer)
  -> y: integer
```


---

# bit.ror


```lua
function bit.ror(x: integer, n: integer)
  -> y: integer
```


---

# bit.rshift


```lua
function bit.rshift(x: integer, n: integer)
  -> y: integer
```


---

# bit.tobit


```lua
function bit.tobit(x: integer)
  -> y: integer
```


---

# bit.tohex


```lua
function bit.tohex(x: integer, n?: integer)
  -> y: integer
```


---

# coroutine




[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine"])



```lua
coroutinelib
```


---

# coroutine.close


关闭协程 `co`，并关闭它所有等待 *to-be-closed* 的变量，并将协程状态设为 `dead` 。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.close"])


```lua
function coroutine.close(co: thread)
  -> noerror: boolean
  2. errorobject: any
```


---

# coroutine.create


创建一个主体函数为 `f` 的新协程。 f 必须是一个 Lua 的函数。 返回这个新协程，它是一个类型为 `"thread"` 的对象。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.create"])


```lua
function coroutine.create(f: fun(...any):...unknown)
  -> thread
```


---

# coroutine.isyieldable


如果正在运行的协程可以让出，则返回真。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.isyieldable"])


```lua
function coroutine.isyieldable()
  -> boolean
```


---

# coroutine.resume


开始或继续协程 `co` 的运行。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.resume"])


```lua
function coroutine.resume(co: thread, val1?: any, ...any)
  -> success: boolean
  2. ...any
```


---

# coroutine.running


返回当前正在运行的协程加一个布尔量。 如果当前运行的协程是主线程，其为真。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.running"])


```lua
function coroutine.running()
  -> running: thread
  2. ismain: boolean
```


---

# coroutine.status


以字符串形式返回协程 `co` 的状态。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.status"])


```lua
return #1:
    | "running" -- 正在运行。
    | "suspended" -- 挂起或是还没有开始运行。
    | "normal" -- 是活动的，但并不在运行。
    | "dead" -- 运行完主体函数或因错误停止。
```


```lua
function coroutine.status(co: thread)
  -> "dead"|"normal"|"running"|"suspended"
```


---

# coroutine.wrap


创建一个主体函数为 `f` 的新协程。 f 必须是一个 Lua 的函数。 返回一个函数， 每次调用该函数都会延续该协程。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.wrap"])


```lua
function coroutine.wrap(f: fun(...any):...unknown)
  -> fun(...any):...unknown
```


---

# coroutine.yield


挂起正在调用的协程的执行。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-coroutine.yield"])


```lua
(async) function coroutine.yield(...any)
  -> ...any
```


---

# string




[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string"])



```lua
stringlib
```


---

# string.byte


返回字符 `s[i]`， `s[i+1]`， ...　，`s[j]` 的内部数字编码。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.byte"])


```lua
function string.byte(s: string|number, i?: integer, j?: integer)
  -> ...integer
```


---

# string.char


接收零或更多的整数。 返回和参数数量相同长度的字符串。 其中每个字符的内部编码值等于对应的参数值。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.char"])


```lua
function string.char(byte: integer, ...integer)
  -> string
```


---

# string.dump


返回包含有以二进制方式表示的（一个 *二进制代码块* ）指定函数的字符串。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.dump"])


```lua
function string.dump(f: fun(...any):...unknown, strip?: boolean)
  -> string
```


---

# string.find


查找第一个字符串中匹配到的 `pattern`（参见 [§6.4.1](command:extension.lua.doc?["en-us/51/manual.html/6.4.1"])）。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.find"])

@*return* `start`

@*return* `end`

@*return* `...` — captured


```lua
function string.find(s: string|number, pattern: string|number, init?: integer, plain?: boolean)
  -> start: integer|nil
  2. end: integer|nil
  3. ...any
```


---

# string.format


返回不定数量参数的格式化版本，格式化串为第一个参数。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.format"])


```lua
function string.format(s: string|number, ...any)
  -> string
```


---

# string.gmatch


返回一个迭代器函数。 每次调用这个函数都会继续以 `pattern` （参见　[§6.4.1](command:extension.lua.doc?["en-us/51/manual.html/6.4.1"])） 对 s 做匹配，并返回所有捕获到的值。

下面这个例子会循环迭代字符串 s 中所有的单词， 并逐行打印：
```lua
    s =
"hello world from Lua"
    for w in string.gmatch(s, "%a+") do
        print(w)
    end
```


[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.gmatch"])


```lua
function string.gmatch(s: string|number, pattern: string|number)
  -> fun():string, ...unknown
```


---

# string.gsub


将字符串 s 中，所有的（或是在 n 给出时的前 n 个） pattern （参见 [§6.4.1](command:extension.lua.doc?["en-us/51/manual.html/6.4.1"])）都替换成 repl ，并返回其副本。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.gsub"])


```lua
function string.gsub(s: string|number, pattern: string|number, repl: string|number|function|table, n?: integer)
  -> string
  2. count: integer
```


---

# string.len


返回其长度。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.len"])


```lua
function string.len(s: string|number)
  -> integer
```


---

# string.lower


将其中的大写字符都转为小写后返回其副本。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.lower"])


```lua
function string.lower(s: string|number)
  -> string
```


---

# string.match


在字符串 s 中找到第一个能用 pattern （参见 [§6.4.1](command:extension.lua.doc?["en-us/51/manual.html/6.4.1"])）匹配到的部分。 如果能找到，match 返回其中的捕获物； 否则返回 nil 。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.match"])


```lua
function string.match(s: string|number, pattern: string|number, init?: integer)
  -> ...any
```


---

# string.pack


返回一个打包了（即以二进制形式序列化） v1, v2 等值的二进制字符串。 字符串 fmt 为打包格式（参见 [§6.4.2](command:extension.lua.doc?["en-us/51/manual.html/6.4.2"])）。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.pack"])


```lua
function string.pack(fmt: string, v1: string|number, v2: any, ...string|number)
  -> binary: string
```


---

# string.packsize


返回以指定格式用 [string.pack](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.pack"]) 打包的字符串的长度。 格式化字符串中不可以有变长选项 's' 或 'z' （参见 [§6.4.2](command:extension.lua.doc?["en-us/51/manual.html/6.4.2"])）。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.packsize"])


```lua
function string.packsize(fmt: string)
  -> integer
```


---

# string.rep


返回 `n` 个字符串 `s` 以字符串 `sep` 为分割符连在一起的字符串。 默认的 `sep` 值为空字符串（即没有分割符）。 如果 `n` 不是正数则返回空串。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.rep"])


```lua
function string.rep(s: string|number, n: integer, sep?: string|number)
  -> string
```


---

# string.reverse


返回字符串 s 的翻转串。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.reverse"])


```lua
function string.reverse(s: string|number)
  -> string
```


---

# string.sub


返回字符串的子串， 该子串从 `i` 开始到 `j` 为止。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.sub"])


```lua
function string.sub(s: string|number, i: integer, j?: integer)
  -> string
```


---

# string.unpack


返回以格式 fmt （参见 [§6.4.2](command:extension.lua.doc?["en-us/51/manual.html/6.4.2"])） 打包在字符串 s （参见 string.pack） 中的值。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.unpack"])


```lua
function string.unpack(fmt: string, s: string, pos?: integer)
  -> ...any
  2. offset: integer
```


---

# string.upper


接收一个字符串，将其中的小写字符都转为大写后返回其副本。

[查看文档](command:extension.lua.doc?["en-us/51/manual.html/pdf-string.upper"])


```lua
function string.upper(s: string|number)
  -> string
```