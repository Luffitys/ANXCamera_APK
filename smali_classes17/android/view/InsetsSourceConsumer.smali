.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected final mController:Landroid/view/InsetsController;

.field private mForceAnimation:Z

.field private mHasWindowFocus:Z

.field private mIsAnimationPending:Z

.field private mPendingFrame:Landroid/graphics/Rect;

.field private mPendingVisibleFrame:Landroid/graphics/Rect;

.field protected mRequestedVisible:Z

.field private mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final mState:Landroid/view/InsetsState;

.field private final mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected final mType:I


# direct methods
.method public constructor <init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mForceAnimation:Z

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return-void
.end method

.method private applyHiddenToControl()V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_33

    :cond_b
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2a

    :cond_21
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2a
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    return-void

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method applyLocalVisibilityOverride()Z
    .registers 9

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_15

    :cond_f
    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    :goto_15
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    :goto_1e
    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    if-nez v2, :cond_29

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    move v7, v1

    goto :goto_2b

    :cond_29
    :goto_29
    iget-boolean v7, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    :goto_2b
    invoke-virtual {v5, v6, v7, v2}, Landroid/view/InsetsController;->updateCompatSysUiVisibility(IZZ)V

    if-nez v2, :cond_31

    return v4

    :cond_31
    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-ne v1, v5, :cond_36

    return v4

    :cond_36
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setVisible(Z)V

    return v3
.end method

.method public getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method getType()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method hasWindowFocus()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    return-void
.end method

.method hide(ZI)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    return-void
.end method

.method public isRequestedVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return v0
.end method

.method protected isRequestedVisibleAwaitingControl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method public notifyAnimationFinished()Z
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method notifyHidden()V
    .registers 1

    return-void
.end method

.method public onPerceptible(Z)V
    .registers 2

    return-void
.end method

.method public onWindowFocusGained()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return-void
.end method

.method public removeSurface()V
    .registers 1

    return-void
.end method

.method public requestShow(Z)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setControl(Landroid/view/InsetsSourceControl;[I[I)V
    .registers 11

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    nop

    if-nez p1, :cond_3d

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)V

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    goto/16 :goto_af

    :cond_3d
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v2

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_53

    move v3, v4

    goto :goto_54

    :cond_53
    move v3, v5

    :goto_54
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_84

    if-nez v3, :cond_64

    iget-boolean v6, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v6, :cond_64

    iget-boolean v6, p0, Landroid/view/InsetsSourceConsumer;->mForceAnimation:Z

    if-eqz v6, :cond_84

    :cond_64
    if-eqz v2, :cond_74

    aget v4, p2, v5

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v6

    or-int/2addr v4, v6

    aput v4, p2, v5

    goto :goto_81

    :cond_74
    aget v4, p3, v5

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v6

    or-int/2addr v4, v6

    aput v4, p3, v5

    :goto_81
    iput-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    goto :goto_af

    :cond_84
    if-eqz v3, :cond_88

    iput-boolean v4, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    :cond_88
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_93
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v0, :cond_a3

    if-eqz v4, :cond_a3

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v5

    if-nez v5, :cond_a6

    :cond_a3
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyHiddenToControl()V

    :cond_a6
    if-nez v2, :cond_af

    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v5, :cond_af

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_af
    :goto_af
    if-eqz v1, :cond_b6

    sget-object v2, Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;->INSTANCE:Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_b6
    return-void
.end method

.method public setForceAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mForceAnimation:Z

    return-void
.end method

.method protected setRequestedVisible(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_14
    return-void
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    return-void
.end method

.method public updateSource(Landroid/view/InsetsSource;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    const/4 v2, -0x1

    if-eq p2, v2, :cond_55

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_55

    :cond_1d
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3e

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void

    :cond_55
    :goto_55
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void
.end method
