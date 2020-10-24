.class public Lmiui/hybrid/HybridFragment;
.super Lmiui/app/Fragment;
.source ""


# instance fields
.field private mHybridViews:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    return-void
.end method

.method private destroyHybridView()V
    .locals 3

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->destroy()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method protected getConfigResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/miui/internal/R$layout;->hybrid_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/hybrid/HybridManager;->onDestroy()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/hybrid/HybridFragment;->destroyHybridView()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Fragment;->onStop()V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/miui/internal/R$id;->hybrid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    check-cast p1, Lmiui/hybrid/HybridView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_0

    check-cast p1, Lmiui/hybrid/HybridView;

    new-instance v0, Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view being registered is not a hybrid view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final unregisterHybridView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view being unregistered is not a hybrid view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
