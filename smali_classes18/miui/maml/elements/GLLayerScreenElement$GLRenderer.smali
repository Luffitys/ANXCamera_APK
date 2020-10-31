.class Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$600(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$600(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    :cond_31
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$300(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$400(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$500(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v1, p3

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$300(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$100(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$100(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    # getter for: Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;
    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method
