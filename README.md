This presentation was built using [Lambda Pad](http://lambdapad.io) to generate
a [reveal.js](http://lab.hakim.se/reveal-js/#/) based presentation. You can
view the generated presentation [here](http://www.chicagoerlang.com/fp).

There are three files of interest:

[index.erl](index.erl)
: The Lambda Pad index module, which specifies how the site should be generated

[slides.md](slides.md)
: The slide content as a Markdown file

[templates/index.html](templates/index.html)
: The template used to render presentation/index.html

The one weird trick we use is to split the single [slides.md](slides.md) file
into multiple *slide* HTML snippets, which are then used by the template. This
weird trick is implemented in [index.erl](index.erl) by the `slides/1`
function. [Jekyll](http://jekyllrb.com) users hate this because it uses clear,
obious, easy to read programming syntax.

# Building

## Install Lambda Pad

You need to first install Lambda Pad.

```
git clone https://github.com/gar1t/lambdapad.git
cd lambdapad
make
```

Add the Lambda Pad `bin` directory to you path.

## Build the Presentation

```
git clone https://github.com/gar1t/2014-09-02-geekfest.git
cd 2014-09-02-geekfest
make
```

## View the Presentation

You can view the presentation by simply opening the file:

`2014-09-02-geekfest/presentation/index.html`

Or by running:

```
make serve
```

and opening [http://localhost:8000](http://localhost:8000)
