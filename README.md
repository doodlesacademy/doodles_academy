# Doodles Academy platform

This is the repo for the [Doodles Academy website](http://www.doodles-academy.org).

## Requirements
_Versions that I've tested with in parentheses._
- Ruby (`2.4.1`)
- Bundler (`1.15.3`)
- Yarn (`1.2.1`)
- Postgres (`9.6.3`)

## Setup
To run the server, first clone the repo, and then in the cloned directory:
```bash
bundle install
bin/rails s
```
To compile the front-end client-code (located in `client`), run:
```bash
bin/rake webpacker:compile
```

## Client structure
We're using the [Rails webpacker](https://github.com/rails/webpacker) module to replace the old-school asset-pipeline approach to JS/CSS compilation. I've modified this slightly to house all of our client code in the top-level `client` directory.

Webpacker works with a concept called "packs", which are modular collections of JS and CSS that can be included in Rails-rendered views with the `javascript_pack_tag` and `stylesheet_pack_tag` helper functions, respectively. We have a boilerplate example of using these helpers in our [application layout](https://github.com/doodlesacademy/doodles_academy/blob/development/app/views/layouts/application.html.erb#L7-L8).

My thoughts for organizing the `client/` directory are that there is a `packs/` subdirectory, in which live a JS file for each pack that we have. The actual code that these pack files pull in and use live in their own subdirectories, directly within `client/`.

So for example, in our current boilerplate state, looking in the `client/packs/` directory, there are two packs defined, `application.js` (which webpacker installed by default), and `pages.js` (which I added, potentially to be used for rendering static-content pages, or something). That `pages.js` file, though, just imports a React component and places it in the DOM. The React component itself is defined in `client/pages/hello.js`, and is exported via that directory's `index.js`.

I'm open to changes to this structure, but it seems to work well enough for now. To verify that the setup is working for you, run the server and compile the client code (as detailed above), and go to [localhost:3000/pages/view](http://localhost:3000/pages/view). You should see `Hello React!` displayed.
