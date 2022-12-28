// https://github.com/twohyjr/Metal-Game-Engine-Tutorial/blob/Episode8.0_Meshes_PlayerObject/Episode8.0_Meshes%26PlayerObject/Game%20Engine/Libraries/MeshLibrary.swift

class QuadMesh : Mesh{
    override func createVertices() {
        vertices = [
            Vertex(position: float3( 0.5, 0.5,0), color: float4(1,0,0,1)), //Top Right
            Vertex(position: float3(-0.5, 0.5,0), color: float4(0,1,0,1)), //Top Left
            Vertex(position: float3(-0.5,-0.5,0), color: float4(0,0,1,1)), //Bottom Left
            
            Vertex(position: float3( 0.5, 0.5,0), color: float4(1,0,0,1)), //Top Right
            Vertex(position: float3(-0.5,-0.5,0), color: float4(0,0,1,1)), //Bottom Left
            Vertex(position: float3( 0.5,-0.5,0), color: float4(1,0,1,1))  //Bottom Right
        ]
    }
}
