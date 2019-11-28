# SwiftHTMLBuilder


Swift Code
```
HTML {
    [
        Head {
            [
                Title(text: "Page Title")
            ]
        },
        Body {
            [
                H1(text: "This is a Heading"),
                P(text: "This is a paragraph."),
                A(text: "From W3Schools", url: "https://www.w3schools.com/html/default.asp")
            ]
        }
    ]
}
```

Generated HTML
```
<!DOCTYPE html>
<html>
    <head>

        <title>Page Title</title>

    </head>
    <body>

        <h1>This is a Heading</h1>
        <p>This is a paragraph.</p>
        <a href="https://www.w3schools.com/html/default.asp">From W3Schools</a>

    </body>
</html>
```
