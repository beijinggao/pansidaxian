//
//  Request.swift
//  pansidaxian
//
//

import Foundation
import PerfectCURL
import PerfectXML

class Request {
    
    let url :String
    
    init(url:String) {
       self.url = url
    }
    
    func parseURL() -> String {
        do {
            let cookie = CURLRequest.Header.Name.cookie
            
            let headers = CURLRequest.Option.addHeaders([(cookie,"SINAGLOBAL=384817065850.93536.1509756926886; _ga=GA1.2.473642189.1512273766; SCF=ApqobDBO5zUgB4uSDxEFIO0AvFXv4LgukbWYVGVG-5Z_dTh0rHwVQkcwRc1DL1CQJYVFkgfShMj1mi7CIPb5vOw.; SUHB=0oUpuxdBQcBWsJ; SUB=_2AkMsSaFKdcPxrAJXkPkTz2LrZYxH-jyfnMi8An7uJhMyAxh77nQ3qSVutBF-XBgSkd7CXiL_4u_zAm5qM7zAyY2x; SUBP=0033WrSXqPxfM72wWs9jqgMF55529P9D9W5gGqqsBf4Q7dUGoHHVlT7I5JpVh0n4SKB7S0zpSsUydER3Zntt; login_sid_t=098dcfd1d6e2fc5ee2af6ce06cea85a6; cross_origin_proto=SSL; TC-Ugrow-G0=e66b2e50a7e7f417f6cc12eec600f517; TC-V5-G0=8518b479055542524f4cf5907e498469; _s_tentry=www.newsmth.net; Apache=8701626305405.597.1530595926258; ULV=1530595926281:8:1:1:8701626305405.597.1530595926258:1521537707358; TC-Page-G0=8dc78264df14e433a87ecb460ff08bfe; wb_view_log=1440*9002; UOR=www.pythontip.com,widget.weibo.com,www.baidu.com")])

            let resp = try CURLRequest(url,headers).perform().bodyString
            print(resp)
            return resp
        }catch{
            print(error.localizedDescription)
            return ""
        }
    }
    
    func parseHTML(html:String) {
        let xDoc = HTMLDocument(fromSource: html)
        for item in (xDoc?.getElementsByTagName("dl"))! {
            let itemAtt = item.getAttribute(name: "class")
        }
    }
}




