.class public Lmiui/animation/styles/ForegroundColorStyle;
.super Lmiui/animation/styles/ColorStyle;
.source ""


# instance fields
.field private mTintMode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-direct {p0, p1, v0}, Lmiui/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    return-void
.end method

.method private getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p0

    instance-of v0, p0, Lmiui/animation/ViewTarget;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/animation/ViewTarget;

    invoke-virtual {p0}, Lmiui/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isInvalid(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected doSetConfig(Lmiui/animation/base/AnimConfigLink;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/animation/styles/PropertyStyle;->doSetConfig(Lmiui/animation/base/AnimConfigLink;)V

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mToTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiui/animation/base/AnimConfigLink;->getTintMode(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)I

    move-result p1

    iput p1, p0, Lmiui/animation/styles/ForegroundColorStyle;->mTintMode:I

    return-void
.end method

.method protected onEnd()V
    .locals 2

    invoke-super {p0}, Lmiui/animation/styles/PropertyStyle;->onEnd()V

    invoke-direct {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lmiui/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lmiui/animation/styles/ColorStyle;->onStart()V

    invoke-direct {p0}, Lmiui/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v0

    iget v1, p0, Lmiui/animation/styles/ForegroundColorStyle;->mTintMode:I

    invoke-virtual {v0, p0, v1}, Lmiui/animation/styles/TintDrawable;->initTintBuffer(Lmiui/animation/styles/PropertyStyle;I)V

    return-void
.end method
