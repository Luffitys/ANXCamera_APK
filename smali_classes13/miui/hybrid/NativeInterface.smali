.class public Lmiui/hybrid/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# instance fields
.field private mManager:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hybrid/NativeInterface;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridManager;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridManager;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    return-void
.end method
