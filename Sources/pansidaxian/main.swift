//main

import ChromiumEmbedded

func main(argc:[Any],argv:[Any]) -> Void {
    print("************")
    
    let url = "https://weibo.com/?category=10011"
    let request = Request(url: url)
    let _ = request.parseURL()
}

Banner()

main(argc: [0], argv: [0])
