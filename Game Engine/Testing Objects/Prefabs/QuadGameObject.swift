import MetalKit

class QuadGameObject : GameObject {
    
    override init() {
        super.init()
        
        let meshRenderer = MeshRenderer(mesh: MeshCache.getMesh(.Quad))
        self.addComponent(component: meshRenderer)
        
        let component = RotateComponent()
        self.addComponent(component: component)
    }
}
