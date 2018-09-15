//
//  Vertex.swift
//  HelloMetal
//
//  Created by Tommy Stephenson on 2018-09-15.
//  Copyright © 2018 CREER. All rights reserved.
//

struct Vertex {
    var x,y,z: Float
    var r,g,b,a: Float
    
    func floatBuffer() -> [Float] {
        return [x,y,z,r,g,b,a]
    }
    
}
