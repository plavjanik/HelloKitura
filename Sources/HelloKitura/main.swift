import Kitura

let router = Router()

router.get("/") { request, response, next in
    response.send("Hello world!")
    next()
}

Kitura.addHTTPServer(onPort: 10055, with: router)
Kitura.run()
