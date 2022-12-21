//
//  MyShaders.metal
//  Game Engine
//
//  Created by z4gon on 11/28/22.
//

// https://developer.apple.com/metal/Metal-Shading-Language-Specification.pdf
// https://stackoverflow.com/questions/57692571/metal-vertex-shader-warning-in-swift-5

#include <metal_stdlib>
using namespace metal;

struct VertexData {
    float3 position [[ attribute(0) ]];
    float4 color [[ attribute(1) ]];
};

struct FragmentData {
    // use position attribute to prevent interpolation of the value
    float4 position [[ position ]];
    float4 color;
};

vertex FragmentData basic_vertex_shader(
  // metal can infer the data because we are describing it using the vertex descriptor
  const VertexData IN [[ stage_in ]]
){
    FragmentData OUT;
    
    // return the vertex position in homogeneous screen space
    OUT.position = float4(IN.position, 1);
    OUT.color = IN.color;
    
    return OUT;
}

fragment half4 basic_fragment_shader(
    const FragmentData IN [[ stage_in ]]
){
    float4 color = IN.color;
    return half4(color.r, color.g, color.b, color.a);
}
