.class public abstract Lmiui/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/IStateContainer;


# instance fields
.field mState:Lmiui/animation/controller/IFolmeStateStyle;


# direct methods
.method varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/animation/controller/FolmeState;->composeStyle([Lmiui/animation/IAnimTarget;)Lmiui/animation/controller/IFolmeStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lmiui/animation/IStateContainer;->addConfig(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method alignState(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, p1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p1

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {p0, p2}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lmiui/animation/controller/AnimState;->alignState(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/animation/ICancelableStyle;->cancel()V

    :cond_0
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/animation/ICancelableStyle;->cancel([Lmiui/animation/property/FloatProperty;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/animation/IStateContainer;->clean()V

    :cond_0
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/animation/IStateContainer;->enableDefaultAnim(Z)V

    :cond_0
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getProperty(I)Lmiui/animation/property/FloatProperty;
    .locals 0

    iget-object p0, p0, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
