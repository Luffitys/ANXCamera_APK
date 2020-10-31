.class public Lmiui/animation/styles/ForegroundColorStyle;
.super Lmiui/animation/styles/ColorStyle;
.source "ForegroundColorStyle.java"


# instance fields
.field private mTintMode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-direct {p0, p1, v0}, Lmiui/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method private getView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    instance-of v1, v0, Lmiui/animation/ViewTarget;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lmiui/animation/ViewTarget;

    invoke-virtual {v1}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private isInvalid(Landroid/view/View;)Z
    .registers 4

    if-eqz p1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method protected doSetConfig(Lmiui/animation/base/AnimConfigLink;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/animation/styles/ColorStyle;->doSetConfig(Lmiui/animation/base/AnimConfigLink;)V

    iget-object v0, p0, Lmiui/animation/styles/ForegroundColorStyle;->mToTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/styles/ForegroundColorStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiui/animation/base/AnimConfigLink;->getTintMode(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)I

    move-result v0

    iput v0, p0, Lmiui/animation/styles/ForegroundColorStyle;->mTintMode:I

    return-void
.end method

.method protected onEnd()V
    .registers 5

    invoke-super {p0}, Lmiui/animation/styles/ColorStyle;->onEnd()V

    invoke-direct {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getCurrentIntValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1}, Lmiui/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_21
    return-void
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Lmiui/animation/styles/ColorStyle;->onStart()V

    invoke-direct {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v1

    iget v2, p0, Lmiui/animation/styles/ForegroundColorStyle;->mTintMode:I

    invoke-virtual {v1, p0, v2}, Lmiui/animation/styles/TintDrawable;->initTintBuffer(Lmiui/animation/styles/PropertyStyle;I)V

    return-void
.end method
