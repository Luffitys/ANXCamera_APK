.class public Lmiui/hybrid/HybridFragment;
.super Lmiui/app/Fragment;
.source "HybridFragment.java"


# instance fields
.field private mHybridViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/hybrid/HybridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    return-void
.end method

.method private destroyHybridView()V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->destroy()V

    :cond_26
    goto :goto_6

    :cond_27
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method protected getConfigResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->hybrid_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->onDestroy()V

    goto :goto_9

    :cond_1d
    invoke-direct {p0}, Lmiui/hybrid/HybridFragment;->destroyHybridView()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->onPause()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->onResume()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Fragment;->onStart()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->onStart()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onStop()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Fragment;->onStop()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->onStop()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/miui/internal/R$id;->hybrid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    instance-of v1, v0, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    const-string v2, "com.miui.sdk.hybrid.extra.URL"

    if-eqz p2, :cond_18

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18
    if-nez v1, :cond_28

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_28
    move-object v2, v0

    check-cast v2, Lmiui/hybrid/HybridView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    :cond_32
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .registers 7

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridView;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v2, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being registered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final unregisterHybridView(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being unregistered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
