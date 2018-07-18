//
//  banner.swift
//  pansidaxian
//
//  Created by gaodong on 2018/7/18.
//

import Foundation


public enum ReaderError: Error {
    case resourceNotFound
    case readFailed(Error)
    case convertToStringFailed
}

func Banner(){
    let bundle = Bundle()
    let banner = "banner"
    let type = "rtf"
    let resourcePath = bundle.path(forResource: banner, ofType: type)
    
    
    //let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("banner.rtf")
    
    print(banner)

    do{
        let data = try String(contentsOfFile: resourcePath!)
        print(data)
    }catch{
        print(error.localizedDescription)
    }
    
}

