.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field protected static final mIsDragging:Lmiui/reflect/Field;

.field protected static final mThumb:Lmiui/reflect/Field;

.field protected static final mThumbOffset:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-void
.end method

.method private isInScrollingContainer(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "onTouchEvent"

    const-string v1, "(Landroid/view/MotionEvent;)Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;->onTouchEvent(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 7

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumb:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mIsDragging:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->mThumbOffset:Lmiui/reflect/Field;

    invoke-virtual {v2, p3}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/2addr v0, v5

    add-int/2addr v4, v0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p3, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_2

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    :cond_4
    invoke-virtual {p3, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    return v2

    :cond_8
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->callOriginalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Widget_AbsSeekBar_class.originalOnTouchEvent(long, AbsSeekBar, MotionEvent)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
