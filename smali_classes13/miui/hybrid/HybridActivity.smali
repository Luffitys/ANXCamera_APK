.class public Lmiui/hybrid/HybridActivity;
.super Lmiui/app/Activity;
.source "HybridActivity.java"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "com.miui.sdk.hybrid.extra.URL"


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

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    return-void
.end method

.method private destroyHybridView()V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->hybrid_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridActivity;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/miui/internal/R$id;->hybrid_view:I

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    instance-of v1, v0, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    const-string v2, "com.miui.sdk.hybrid.extra.URL"

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2b
    move-object v2, v0

    check-cast v2, Lmiui/hybrid/HybridView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getConfigResId()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    :cond_35
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    invoke-direct {p0}, Lmiui/hybrid/HybridActivity;->destroyHybridView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/HybridView;

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->getHybridManager()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridManager;->isDetached()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Lmiui/hybrid/HybridView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_2a
    goto :goto_9

    :cond_2b
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method protected final registerHybridView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/hybrid/HybridActivity;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .registers 7

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridView;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    iget-object v2, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being registered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final unregisterHybridView(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being unregistered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
