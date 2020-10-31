.class public Lmiui/maml/elements/WindowScreenElement;
.super Lmiui/maml/elements/ElementGroupRC;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/WindowScreenElement$ProxyListener;,
        Lmiui/maml/elements/WindowScreenElement$WindowView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Window"


# instance fields
.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lmiui/maml/elements/WindowScreenElement$WindowView;

.field private mViewAdded:Z

.field private mWindowContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    new-instance v0, Lmiui/maml/elements/WindowScreenElement$WindowView;

    iget-object v1, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/WindowScreenElement$WindowView;-><init>(Lmiui/maml/elements/WindowScreenElement;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/WindowScreenElement;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/WindowScreenElement;->addView()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/WindowScreenElement;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/WindowScreenElement;->removeView()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/WindowScreenElement;)Lmiui/maml/elements/WindowScreenElement$WindowView;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;

    return-object v0
.end method

.method private final addView()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement;->mViewAdded:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;

    iget-object v2, p0, Lmiui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement;->mViewAdded:Z

    :cond_10
    return-void
.end method

.method private final removeView()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement;->mViewAdded:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroupRC;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/WindowScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lmiui/maml/elements/WindowScreenElement;->addView()V

    :cond_c
    return-void
.end method

.method protected onControllerCreated(Lmiui/maml/RendererController;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/WindowScreenElement;Lmiui/maml/elements/WindowScreenElement$1;)V

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .registers 5

    move v0, p1

    invoke-virtual {p0}, Lmiui/maml/elements/WindowScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmiui/maml/elements/WindowScreenElement$1;

    invoke-direct {v2, p0, v0}, Lmiui/maml/elements/WindowScreenElement$1;-><init>(Lmiui/maml/elements/WindowScreenElement;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method
