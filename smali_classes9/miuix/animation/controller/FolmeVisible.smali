.class public Lmiuix/animation/controller/FolmeVisible;
.super Lmiuix/animation/controller/FolmeBase;
.source ""

# interfaces
.implements Lmiuix/animation/IVisibleStyle;


# instance fields
.field private mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private mHasMove:Z

.field private mHasScale:Z


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeVisible;->useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method private varargs getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 6

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_0

    const/16 p1, 0x10

    new-array v3, v2, [F

    const/high16 v4, 0x43960000    # 300.0f

    aput v4, v3, v1

    invoke-static {p1, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v3, [F

    fill-array-data p1, :array_0

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_2

    new-array p1, v3, [F

    fill-array-data p1, :array_1

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-array p1, v3, [F

    fill-array-data p1, :array_2

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_4

    new-array p1, v3, [F

    fill-array-data p1, :array_3

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-array p1, v3, [F

    fill-array-data p1, :array_4

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_6

    new-array p1, v3, [F

    fill-array-data p1, :array_5

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :cond_6
    new-array p1, v3, [F

    fill-array-data p1, :array_6

    invoke-static {v4, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p1, v1

    invoke-static {p2, p1}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3eb33333    # 0.35f
    .end array-data

    :array_2
    .array-data 4
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_3
    .array-data 4
        0x3f400000    # 0.75f
        0x3eb33333    # 0.35f
    .end array-data

    :array_4
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    :array_5
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    :array_6
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private varargs getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;
    .locals 0

    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public clean()V
    .locals 1

    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    return-void
.end method

.method public varargs hide([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/controller/FolmeBase;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-virtual {p2, v0, p1, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setBound(IIII)Lmiuix/animation/IVisibleStyle;
    .locals 4

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v2

    new-array v3, v1, [J

    invoke-virtual {v0, v2, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    new-array v2, v1, [J

    invoke-virtual {p1, v0, p2, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    new-array v0, v1, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    new-array p3, v1, [J

    invoke-virtual {p1, p2, p4, p3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setHide()Lmiuix/animation/IVisibleStyle;
    .locals 2

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/controller/FolmeBase;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public setMove(II)Lmiuix/animation/IVisibleStyle;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/animation/controller/FolmeVisible;->setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p3

    invoke-interface {v0, p3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    new-array v3, v2, [J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v1

    invoke-virtual {p3, v0, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v2}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object p3

    new-array v0, v2, [J

    aput-wide v4, v0, v1

    invoke-virtual {p1, p3, p2, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    :cond_2
    return-object p0
.end method

.method public varargs setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-virtual {p2, v0, p1, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    new-array v1, v1, [J

    invoke-virtual {p2, v0, p1, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setShow()Lmiuix/animation/IVisibleStyle;
    .locals 2

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/controller/FolmeBase;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public setShowDelay(J)Lmiuix/animation/IVisibleStyle;
    .locals 2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getGlobalConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-wide p1, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs show([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/controller/FolmeBase;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;
    .locals 6

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeBase;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v5}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v5, v4, [J

    invoke-virtual {p1, v0, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v1, v4, [J

    invoke-virtual {p1, v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v5}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v5, v4, [J

    invoke-virtual {p1, v1, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v0, v4, [J

    invoke-virtual {p1, v1, v2, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_0
    return-object p0
.end method
