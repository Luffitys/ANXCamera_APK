.class public Lmiui/widget/ClearableEditText;
.super Landroid/widget/EditText;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ClearableEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->editTextSearchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-nez v1, :cond_38

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-nez v1, :cond_38

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_38

    const/4 v2, 0x3

    aget-object v2, v0, v2

    if-nez v2, :cond_38

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lmiui/widget/ClearableEditText$1;

    invoke-direct {v1, p0}, Lmiui/widget/ClearableEditText$1;-><init>(Lmiui/widget/ClearableEditText;)V

    invoke-virtual {p0, v1}, Lmiui/widget/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_37

    new-instance v1, Lmiui/widget/ClearableEditText$AccessHelper;

    invoke-direct {v1, p0, p0}, Lmiui/widget/ClearableEditText$AccessHelper;-><init>(Lmiui/widget/ClearableEditText;Landroid/view/View;)V

    iput-object v1, p0, Lmiui/widget/ClearableEditText;->mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;

    invoke-virtual {p0, v1}, Lmiui/widget/ClearableEditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_37
    return-void

    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ClearableEditText need only drawableEnd"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lmiui/widget/ClearableEditText;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    return v0
.end method

.method static synthetic access$002(Lmiui/widget/ClearableEditText;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/ClearableEditText;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->onClearButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_2f

    :cond_d
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    goto :goto_2f

    :cond_15
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->onClearButtonClick()V

    goto :goto_2f

    :cond_23
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-eqz v0, :cond_2f

    iput-boolean v1, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private onClearButtonClick()V
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lmiui/widget/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0, p1}, Lmiui/widget/ClearableEditText$AccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-eqz v1, :cond_3b

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    const/4 v0, 0x1

    goto :goto_3b

    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_42

    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    return v1

    :cond_42
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->invalidate()V

    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-nez v1, :cond_f

    sget-object v1, Lmiui/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/ClearableEditText;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object v0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    if-nez p4, :cond_c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    if-nez p1, :cond_e

    if-nez p2, :cond_e

    if-eqz p3, :cond_e

    if-nez p4, :cond_e

    iput-object p3, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText can only set drawableRight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
