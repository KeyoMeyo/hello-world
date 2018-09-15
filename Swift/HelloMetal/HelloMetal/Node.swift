//
//  Node.swift
//  HelloMetal
//
//  Created by Tommy Stephenson on 2018-09-15.
//  Copyright © 2018 CREER. All rights reserved.
//

import Foundation
import Metal
import QuartzCore

class Node {
    
    let device: MTLDevice
    let name: String
    var vertexCount: Int
    var vertexBuffer: MTLBuffer
    
    init(name: String, vertices: Array<Vertex>, device: MTLDevice){
        
        var vertexData = Array<Float>()
        for vertex in vertices{
            vertexData += vertex.floatBuffer()
        }
    
        let dataSize = vertexData.count * MemoryLayout.size(ofValue: vertexData[0])
        vertexBuffer = device.makeBuffer(bytes: vertexData, length: dataSize, options: [])!
        
        self.name = name
        self.device = device
        vertexCount = vertices.count
        
        
            
        }
    
    func render(commandQueue: MTLCommandQueue, pipelineState:MTLRenderPipelineState, drawable: CAMetalDrawable, clearColor: MTLClearColor?){
        
        let renderPassDescriptor = MTLRenderPassDescriptor()
        renderPassDescriptor.colorAttachments[0].texture = drawable.texture
        renderPassDescriptor.colorAttachments[0].loadAction = .clear
        renderPassDescriptor.colorAttachments[0].clearColor = MTLClearColor(red: 0.0, green: 104.0/255.0, blue: 5.0/255.0, alpha: 1.0)
        renderPassDescriptor.colorAttachments[0].storeAction = .store
    
    }
}


