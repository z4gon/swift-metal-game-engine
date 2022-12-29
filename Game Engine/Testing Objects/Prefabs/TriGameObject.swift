import MetalKit

class TriGameObject : GameObject {
    
    override init() {
        super.init()
        
        let meshRenderer = MeshRenderer(mesh: MeshCache.getMesh(.Triangle))
        self.addComponent(component: meshRenderer)
        
        let component = FaceMouseComponent()
        self.addComponent(component: component)
    }
}
