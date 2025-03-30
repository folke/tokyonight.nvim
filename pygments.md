Title: Write your own style — Pygments

URL Source: https://pygments.org/docs/styledevelopment/

Markdown Content:
So, how to create a style? All you have to do is to subclass Style and define some styles:

from pygments.style import Style
from pygments.token import Token, Comment, Keyword, Name, String, \\
     Error, Generic, Number, Operator

class YourStyle(Style):

    styles \= {
        Token:                  '',
        Comment:                'italic #888',
        Keyword:                'bold #005',
        Name:                   '#f00',
        Name.Class:             'bold #0f0',
        Name.Function:          '#0f0',
        String:                 'bg:#eee #111'
    }

That’s it, save it as `your.py`. There are just a few rules. When you define a style for Name the style automatically also affects Name.Function and so on. If you defined `'bold'` and you don’t want boldface for a subtoken use `'nobold'`.

(Philosophy: the styles aren’t written in CSS syntax since this way they can be used for a variety of formatters.)

`Token` is the default style inherited by all token types.

To make the style usable for Pygments, you must

*   either register it as a plugin (see [the plugin docs](https://pygments.org/docs/plugins/))
    
*   or update the `pygments.styles` subpackage directory. For example:
    
    *   add `your.py` file
        
    *   regenerate the mappings file using `tox -e mapfiles`
        

Note

You should _only_ add it to the `pygments.styles` subdirectory if you are working on a contribution to Pygments. You should not use that method to extend an already existing copy of Pygments, use the plugins mechanism for that.

---
Title: Plugins — Pygments

URL Source: https://pygments.org/docs/plugins/

Markdown Content:
If you want to extend Pygments without hacking the sources, you can use package [entry points](https://packaging.python.org/en/latest/guides/creating-and-discovering-plugins/) to add new lexers, formatters, styles or filters as if they were in the Pygments core.

The idea is to create a Python package, declare how extends Pygments, and install it.

This will allow you to use your custom lexers/… with the `pygmentize` command. They will also be found by the lookup functions (`lexers.get_lexer_by_name` et al.), which makes them available to tools such as Sphinx, mkdocs, …

Defining plugins through entry points[¶](https://pygments.org/docs/plugins/#defining-plugins-through-entry-points "Link to this heading")
--------------------------------------------------------------------------------------------------------------------------------

We have created a repository with a project template for defining your own plugins. It is available at

[https://github.com/pygments/pygments-plugin-scaffolding](https://github.com/pygments/pygments-plugin-scaffolding)

Extending The Core[¶](https://pygments.org/docs/plugins/#extending-the-core "Link to this heading")
---------------------------------------------------------------------------------------------------

If you have written a Pygments plugin that is open source, please inform us about that. There is a high chance that we’ll add it to the Pygments distribution.
