.class public Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;
.super Landroid/graphics/drawable/AnimatedStateListDrawable;
.source ""


# instance fields
.field protected mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    if-nez p1, :cond_0

    iget-object p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    check-cast p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iput p1, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iput p1, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iput p1, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget-boolean p1, p3, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    iput-boolean p1, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    return-object p0
.end method

.method protected newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 0

    new-instance p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    invoke-direct {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;-><init>()V

    return-object p0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->newCheckWidgetConstantState()Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable;->mCheckWidgetConstantState:Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
