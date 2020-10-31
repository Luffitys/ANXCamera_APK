.class public Lmiui/maml/elements/GLLayerScreenElement;
.super Lmiui/maml/elements/ViewHolderScreenElement;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;,
        Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lmiui/maml/data/IndexedVariable;

.field private mHVar:Lmiui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lmiui/maml/data/IndexedVariable;

.field private mWVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8

    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$1;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    nop

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string v4, "create"

    invoke-virtual {v3, v4}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string v4, "change"

    invoke-virtual {v3, v4}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string v4, "draw"

    invoke-virtual {v3, v4}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    :cond_68
    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    if-nez v3, :cond_73

    const-string v3, "GLLayerScreenElement"

    const-string v4, "no draw commands."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    invoke-virtual {p0}, Lmiui/maml/elements/GLLayerScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    const-string v5, "__objGLCanvas"

    invoke-direct {v4, v5, v3, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    const-string v5, "__objGLView"

    invoke-direct {v4, v5, v3, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/GLLayerScreenElement;->mViewVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v4, "__w"

    invoke-direct {v2, v4, v3, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v4, "__h"

    invoke-direct {v2, v4, v3, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/GLLayerScreenElement;->doTickSelf(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/GLLayerScreenElement;->updateView()V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mViewVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    invoke-super {p0}, Lmiui/maml/elements/ViewHolderScreenElement;->init()V

    return-void
.end method

.method protected onControllerCreated(Lmiui/maml/RendererController;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$1;)V

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method
