.class Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncInvocation"
.end annotation


# instance fields
.field private mFeature:Lmiui/hybrid/HybridFeature;

.field private mHybridManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/hybrid/HybridManager;",
            ">;"
        }
    .end annotation
.end field

.field private mJsCallback:Ljava/lang/String;

.field private mRequestKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mHybridManager:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiui/hybrid/HybridFeature;

    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mRequestKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mJsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mHybridManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/hybrid/HybridManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    # getter for: Lcom/miui/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridManager;->access$100(Lcom/miui/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mRequestKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/Request;

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_48

    :cond_2e
    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiui/hybrid/HybridFeature;

    invoke-interface {v2, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mFeature:Lmiui/hybrid/HybridFeature;

    invoke-interface {v3, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v3

    sget-object v4, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v3, v4, :cond_47

    invoke-virtual {v1}, Lmiui/hybrid/Request;->getPageContext()Lmiui/hybrid/PageContext;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->mJsCallback:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    :cond_47
    return-void

    :cond_48
    :goto_48
    return-void
.end method
