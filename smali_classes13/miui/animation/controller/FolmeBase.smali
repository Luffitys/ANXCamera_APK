.class public abstract Lmiui/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiui/animation/IStateContainer;


# instance fields
.field mState:Lmiui/animation/controller/IFolmeStateStyle;


# direct methods
.method varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/animation/controller/FolmeState;->composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lmiui/animation/controller/IFolmeStateStyle;->addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V

    :cond_7
    return-void
.end method

.method alignState(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, p1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v1

    iget-object v2, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v2, p2}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/animation/controller/AnimState;->alignState(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;)V

    :cond_17
    return-void
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->cancel()V

    :cond_7
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiui/animation/controller/IFolmeStateStyle;->cancel([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiui/animation/controller/IFolmeStateStyle;->cancel([Lmiui/animation/property/FloatProperty;)V

    :cond_7
    return-void
.end method

.method public clean()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->clean()V

    :cond_7
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiui/animation/controller/IFolmeStateStyle;->enableDefaultAnim(Z)V

    :cond_7
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lmiui/animation/controller/IFolmeStateStyle;->end([Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method getProperty(I)Lmiui/animation/property/FloatProperty;
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method
