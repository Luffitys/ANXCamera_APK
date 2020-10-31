.class public Lmiui/animation/controller/FolmeFont;
.super Lmiui/animation/controller/FolmeBase;
.source "FolmeFont.java"

# interfaces
.implements Lmiui/animation/IVarFontStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/controller/FolmeFont$FontType;
    }
.end annotation


# instance fields
.field private mDefaultTo:Lmiui/animation/base/AnimConfig;

.field private mInitValue:I

.field private mIsInitSet:Z

.field private mProperty:Lmiui/animation/font/FontWeightProperty;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Lmiui/animation/IAnimTarget;

    invoke-direct {p0, v1}, Lmiui/animation/controller/FolmeBase;-><init>([Lmiui/animation/IAnimTarget;)V

    new-instance v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiui/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiui/animation/controller/FolmeFont;->mDefaultTo:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1a

    invoke-static {v0, v2}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, v1, Lmiui/animation/base/AnimConfig;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    return-void

    :array_1a
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3f5c28f6    # 0.86f
    .end array-data
.end method


# virtual methods
.method public clean()V
    .registers 2

    invoke-super {p0}, Lmiui/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    iput-object v0, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/controller/FolmeFont;->mInitValue:I

    return-void
.end method

.method public varargs fromTo(II[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IVarFontStyle;
    .registers 8

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p2, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    sget-object v2, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1, v2, p3}, Lmiui/animation/controller/IFolmeStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_2c
    return-object p0
.end method

.method public setTo(I)Lmiui/animation/IVarFontStyle;
    .registers 5

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    :cond_1b
    return-object p0
.end method

.method public varargs to(I[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IVarFontStyle;
    .registers 7

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lmiui/animation/controller/FolmeFont;->mIsInitSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iput-boolean v1, p0, Lmiui/animation/controller/FolmeFont;->mIsInitSet:Z

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v2}, Lmiui/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;

    :cond_12
    new-array v0, v1, [Lmiui/animation/base/AnimConfig;

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mDefaultTo:Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lmiui/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/base/AnimConfig;

    iget v1, p0, Lmiui/animation/controller/FolmeFont;->mInitValue:I

    if-ne v1, p1, :cond_2b

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v1, v2, v0}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    goto :goto_41

    :cond_2b
    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v1, v3}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v1

    iget-object v3, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    new-array v2, v2, [J

    invoke-virtual {v1, v3, p1, v2}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v1, v2, v0}, Lmiui/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_41
    :goto_41
    return-object p0
.end method

.method public useAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;
    .registers 8

    new-instance v0, Lmiui/animation/controller/FolmeState;

    sget-object v1, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p1, v1}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/animation/controller/FolmeState;-><init>(Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    new-instance v0, Lmiui/animation/font/FontWeightProperty;

    invoke-direct {v0, p1, p2}, Lmiui/animation/font/FontWeightProperty;-><init>(Landroid/widget/TextView;I)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    iput p3, p0, Lmiui/animation/controller/FolmeFont;->mInitValue:I

    iget-object v0, p0, Lmiui/animation/controller/FolmeFont;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/FolmeFont;->mProperty:Lmiui/animation/font/FontWeightProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p3, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    iput-boolean v2, p0, Lmiui/animation/controller/FolmeFont;->mIsInitSet:Z

    return-object p0
.end method
