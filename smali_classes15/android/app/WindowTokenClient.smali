.class public Landroid/app/WindowTokenClient;
.super Landroid/app/IWindowToken$Stub;
.source "WindowTokenClient.java"


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/WindowContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/IWindowToken$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    return-void
.end method


# virtual methods
.method attachContext(Landroid/app/WindowContext;)V
    .registers 4

    iget-object v0, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->createWindowContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 10

    iget-object v0, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    if-nez v4, :cond_2a

    if-eqz v2, :cond_2f

    :cond_2a
    iget-object v3, p0, Landroid/app/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v3, p0, p1, p2, v4}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    :cond_2f
    if-eqz v4, :cond_34

    invoke-virtual {v0, p2}, Landroid/content/Context;->updateDisplay(I)V

    :cond_34
    return-void
.end method

.method public onWindowTokenRemoved()V
    .registers 5

    iget-object v0, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WindowContext;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/WindowContext;->destroy()V

    iget-object v1, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_12
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowContext"

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
