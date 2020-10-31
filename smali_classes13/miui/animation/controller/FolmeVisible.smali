.class public Lmiui/animation/controller/FolmeVisible;
.super Lmiui/animation/controller/FolmeBase;
.source "FolmeVisible.java"

# interfaces
.implements Lmiui/animation/IVisibleStyle;


# instance fields
.field private mDefConfig:Lmiui/animation/base/AnimConfig;

.field private mHasMove:Z

.field private mHasScale:Z


# direct methods
.method public varargs constructor <init>([Lmiui/animation/IAnimTarget;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/controller/FolmeBase;-><init>([Lmiui/animation/IAnimTarget;)V

    new-instance v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeVisible;->useAutoAlpha(Z)Lmiui/animation/IVisibleStyle;

    return-void
.end method

.method private varargs getConfig(Lmiui/animation/IVisibleStyle$VisibleType;[Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;
    .registers 9

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasScale:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x2

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_1f

    const/16 v3, 0x10

    new-array v4, v2, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v4, v1

    invoke-static {v3, v4}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    goto :goto_28

    :cond_1f
    new-array v3, v3, [F

    fill-array-data v3, :array_98

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    :goto_28
    iput-object v3, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    goto :goto_8a

    :cond_2b
    iget-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasScale:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_43

    new-array v3, v3, [F

    fill-array-data v3, :array_a0

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    goto :goto_4c

    :cond_43
    new-array v3, v3, [F

    fill-array-data v3, :array_a8

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    :goto_4c
    iput-object v3, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    goto :goto_8a

    :cond_4f
    iget-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasScale:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_63

    new-array v3, v3, [F

    fill-array-data v3, :array_b0

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    goto :goto_6c

    :cond_63
    new-array v3, v3, [F

    fill-array-data v3, :array_b8

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    :goto_6c
    iput-object v3, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    goto :goto_8a

    :cond_6f
    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    if-ne p1, v5, :cond_7f

    new-array v3, v3, [F

    fill-array-data v3, :array_c0

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    goto :goto_88

    :cond_7f
    new-array v3, v3, [F

    fill-array-data v3, :array_c8

    invoke-static {v4, v3}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    :goto_88
    iput-object v3, v0, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    :goto_8a
    new-array v0, v2, [Lmiui/animation/base/AnimConfig;

    iget-object v2, p0, Lmiui/animation/controller/FolmeVisible;->mDefConfig:Lmiui/animation/base/AnimConfig;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/base/AnimConfig;

    return-object v0

    nop

    :array_98
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_a0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3eb33333    # 0.35f
    .end array-data

    :array_a8
    .array-data 4
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_b0
    .array-data 4
        0x3f400000    # 0.75f
        0x3eb33333    # 0.35f
    .end array-data

    :array_b8
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    :array_c0
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    :array_c8
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private varargs getType([Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle$VisibleType;
    .registers 3

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_9

    :cond_7
    sget-object v0, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    :goto_9
    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 2

    invoke-super {p0}, Lmiui/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasScale:Z

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasMove:Z

    return-void
.end method

.method public varargs hide([Lmiui/animation/base/AnimConfig;)V
    .registers 5

    sget-object v0, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeVisible;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v2, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v2, p1}, Lmiui/animation/controller/FolmeVisible;->getConfig(Lmiui/animation/IVisibleStyle$VisibleType;[Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public varargs setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
    .registers 6

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeVisible;->getType([Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle$VisibleType;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setBound(IIII)Lmiui/animation/IVisibleStyle;
    .registers 9

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    new-array v3, v1, [J

    invoke-virtual {v0, v2, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    new-array v3, v1, [J

    invoke-virtual {v0, v2, p2, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    new-array v3, v1, [J

    invoke-virtual {v0, v2, p3, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v2

    new-array v1, v1, [J

    invoke-virtual {v0, v2, p4, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setHide()Lmiui/animation/IVisibleStyle;
    .registers 3

    sget-object v0, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeVisible;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public setMove(II)Lmiui/animation/IVisibleStyle;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lmiui/animation/controller/FolmeVisible;->setMove(II[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;

    move-result-object v0

    return-object v0
.end method

.method public varargs setMove(II[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
    .registers 11

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_11

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasMove:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p3}, Lmiui/animation/controller/FolmeVisible;->getType([Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle$VisibleType;

    move-result-object v3

    invoke-interface {v0, v3}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    new-array v4, v2, [J

    const-wide/16 v5, 0x1

    aput-wide v5, v4, v1

    invoke-virtual {v0, v3, p1, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v2}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    new-array v2, v2, [J

    aput-wide v5, v2, v1

    invoke-virtual {v0, v3, p2, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    :cond_39
    return-object p0
.end method

.method public varargs setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/controller/FolmeVisible;->mHasScale:Z

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiui/animation/controller/FolmeVisible;->getType([Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle$VisibleType;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    return-object p0
.end method

.method public setShow()Lmiui/animation/IVisibleStyle;
    .registers 3

    sget-object v0, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeVisible;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    return-object p0
.end method

.method public setShowDelay(J)Lmiui/animation/IVisibleStyle;
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/controller/AnimState;->getGlobalConfig()Lmiui/animation/base/AnimConfig;

    move-result-object v0

    iput-wide p1, v0, Lmiui/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs show([Lmiui/animation/base/AnimConfig;)V
    .registers 5

    sget-object v0, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/controller/FolmeVisible;->alignState(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    sget-object v2, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v2, p1}, Lmiui/animation/controller/FolmeVisible;->getConfig(Lmiui/animation/IVisibleStyle$VisibleType;[Lmiui/animation/base/AnimConfig;)[Lmiui/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    return-void
.end method

.method public useAutoAlpha(Z)Lmiui/animation/IVisibleStyle;
    .registers 9

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lmiui/animation/controller/FolmeVisible;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_34

    iget-object v5, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v6, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v5, v6}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    invoke-virtual {v5, v1}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    new-array v6, v4, [J

    invoke-virtual {v5, v0, v3, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    iget-object v3, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v3, v5}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    new-array v4, v4, [J

    invoke-virtual {v3, v0, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    goto :goto_56

    :cond_34
    iget-object v5, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v6, Lmiui/animation/IVisibleStyle$VisibleType;->SHOW:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v5, v6}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    invoke-virtual {v5, v0}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    new-array v6, v4, [J

    invoke-virtual {v5, v1, v3, v6}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    iget-object v3, p0, Lmiui/animation/controller/FolmeVisible;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v5, Lmiui/animation/IVisibleStyle$VisibleType;->HIDE:Lmiui/animation/IVisibleStyle$VisibleType;

    invoke-interface {v3, v5}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmiui/animation/controller/AnimState;->remove(Lmiui/animation/property/FloatProperty;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    new-array v4, v4, [J

    invoke-virtual {v3, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :goto_56
    return-object p0
.end method
