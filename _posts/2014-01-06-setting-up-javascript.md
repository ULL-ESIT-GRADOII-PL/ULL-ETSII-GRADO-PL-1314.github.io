---
layout: post
title:  "Setting up the JavaScript Environment"
categories: [js]
tags: [javascript]
comments: true
css: crguezl
---
<!--
#date:   2014-01-03 20:32:28
#categories: jekyll update
-->

# Console

When you need a new line within the console, rather than pressing
`Enter`, which will execute the code, press `Shift Enter` for a new
line.

## Chrome

To activate Chrome’s Developer Tools in Windows and Linux, press
`Control Shift J`. On Mac, press `⌥ ⌘ J` (`alt cmd J`). This will
open the console tab in the Developer Tools’ panel

## Firefox

To activate Firefox’s Web Console in Windows and Linux, press `Control Shift K`. 
On Mac, press `⌥  ⌘ K` (`alt cmd K`). 

## Safari

Activating the console in Safari is a bit more involved than in
other browsers. 

* First, you need to enable the `Develop` menu in the `menu` bar. 
* To do that, enter Safari’s settings by pressing `⌘ ,` (`cmd comma`), 
* going to the `Advanced tab`, and checking the `Show Develop` checkbox

Once you have done that, simply press `⌥ ⌘ C` (`alt cmd C`) to bring up the console, 

You'll find this post in your `_posts` directory - edit this post and re-build (or run with the `-w` switch) to see your changes!
To add new posts, simply add a file in the `_posts` directory that follows the convention: YYYY-MM-DD-name-of-post.ext.

# Using JavaScript in HTML Files

If you’d prefer to skip the console and work inside an HTML document,
you could go about it in one of two ways: 

1. you could write the code directly in the HTML document, 
2. or write it in a separate JavaScript file and load it up from the HTML file.

## In the HTML File

HTML provides a `<script>` tag, inside of which you can write executable JavaScript code. 

Here’s an example of a very simple HTML document with one line of JavaScript that pops up an alert dialog with the message, `¡Hola mundo!`:

{% highlight html linenos %}
      <!DOCTYPE HTML>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>Code inside an HTML document</title>
        <script type="text/javascript">¡Hola mundo!</script>
      </head>
      <body>
      </body>
      </html>
{% endhighlight %}

## In a Separate File

You can also place the code in a separate file and link to it. 

We could place our `alert` statement inside a file we
name `hello.js` and then link to it using the `<script>` tag’s
`src` attribute like so:

{% highlight html %}
<!DOCTYPE HTML>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Code in a separated file</title>
    <script type="text/javascript" src="hello.js"></script>
  </head>
  <body>
  </body>
</html>
{% endhighlight %}


The **Document Object Model** (**DOM**) is a cross-platform and
language-independent convention for representing and interacting
with objects representing the elements in a HTML, XHTML or XML document.

When you include a `<script>` tag in the document’s head, the code
within it will execute right away, although the DOM is yet to be
built. 
Therefore, references to DOM
elements will result in an error since the HTML inside the `<body>`
isn’t there yet.

You can wrap your code in the document’s `onload` function, which the
rowser executes once it’s done constructing the DOM. Alternatively,
you could include your script tags at the very end of the document’s
body, immediately before the closing `</body>` tag.

{% include disqus.html %}

<!---
Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh].

[jekyll-gh]: https://github.com/mojombo/jekyll
[jekyll]:    http://jekyllrb.com
--->

