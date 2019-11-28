import XCTest
@testable import SwiftHTMLBuilder

final class SwiftHTMLBuilderTests: XCTestCase {
    func testExample() {
        let correctHTML = """
                                   <!DOCTYPE html>
                                   <html>
                                   \t<head>

                                   \t\t<title>Page Title</title>

                                   \t</head>
                                   \t<body>

                                   \t\t<h1>This is a Heading</h1>
                                   \t\t<p>This is a paragraph.</p>
                                   \t\t<a href="https://www.w3schools.com/html/default.asp">From W3Schools</a>

                                   \t</body>
                                   </html>
                                   """
        
        let html = HTML {
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
        
        print(html.html)
        
        XCTAssertEqual(html.html, correctHTML)
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}
