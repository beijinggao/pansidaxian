//
//  banner.swift
//  pansidaxian
//
//  Created by gaodong on 2018/7/18.
//

import Foundation

func Banner(){
    
    let banner = "./banner.rtf"
    //let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("banner.rtf")
    
    print(banner)

    do{
        let data = try String(contentsOfFile: banner)
        print(data)
    }catch{
        print(error.localizedDescription)
    }
    
}

