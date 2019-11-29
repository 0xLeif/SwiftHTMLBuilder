import XCTest
@testable import SwiftHTMLBuilder

final class SwiftHTMLBuilderTests: XCTestCase {
    func testHTML() {
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
        XCTAssertEqual(html.html, correctHTML)
    }
    
    func testLists() {
        let ul = UL(items: [
            LI(title: "Coffee"),
            LI(title: "Tea"),
            LI(title: "Milk")
        ])
        
        print(ul.html)
    }
    
    func testWIP() {
        let html = HTML {
            [
                Head {
                    [
                        Title(text: "Page Title")
                    ]
                },
                Body {
                    [
                        Img(src: "w3schools.jpg"),
                        H1(text: "This is a Heading"),
                        P(text: "This is a paragraph."),
                        A(text: "From W3Schools", url: "https://www.w3schools.com/html/default.asp")
                    ]
                }
            ]
        }
        
        print(html.html)
    }
    
    static var allTests = [
        ("testHTML", testHTML),
        ("testLists", testLists),
        ("testWIP", testWIP)
    ]
}
