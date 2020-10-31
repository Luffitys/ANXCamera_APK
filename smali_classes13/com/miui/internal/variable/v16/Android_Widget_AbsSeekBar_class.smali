.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;
.source "Android_Widget_AbsSeekBar_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;",
        ">;"
    }
.end annotation


# static fields
.field protected static final mIsDragging:Lmiui/reflect/Field;

.field protected static final mThumb:Lmiui/reflect/Field;

.field protected static final mThumbOffset:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mThumb"

    const-string v2, "Landroid/graphics/drawable/Drawable;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumb:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mThumbOffset"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumbOffset:Lmiui/reflect/Field;

    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "mIsDragging"

    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mIsDragging:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-void
.end method

.method private isInScrollingContainer(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    return v1

    :cond_15
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "onTouchEvent"

    const-string v1, "(Landroid/view/MotionEvent;)Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;->onTouchEvent(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .registers 16

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumb:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_f
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mIsDragging:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_2e
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumbOffset:Lmiui/reflect/Field;

    invoke-virtual {v2, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_6a

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v10, v5

    cmpg-float v7, v7, v10

    if-gez v7, :cond_6a

    move v7, v8

    goto :goto_6b

    :cond_6a
    move v7, v9

    :goto_6b
    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9a

    if-eqz v7, :cond_7d

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_7d

    invoke-virtual {p3, v8}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_9a

    :cond_7d
    if-nez v1, :cond_91

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eq v10, v8, :cond_8c

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_91

    :cond_8c
    invoke-virtual {p3, v9}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    const/4 v1, 0x1

    goto :goto_9a

    :cond_91
    if-nez v1, :cond_9a

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_9a

    const/4 v1, 0x1

    :cond_9a
    :goto_9a
    if-nez v1, :cond_a0

    if-eqz v7, :cond_9f

    goto :goto_a0

    :cond_9f
    return v9

    :cond_a0
    :goto_a0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v6

    return v6
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsSeekBar_class.originalOnTouchEvent(long, AbsSeekBar, MotionEvent)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
