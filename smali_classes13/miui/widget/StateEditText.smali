.class public Lmiui/widget/StateEditText;
.super Landroid/widget/EditText;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/StateEditText$WidgetManager;
    }
.end annotation


# static fields
.field private static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelLength:I

.field private mPressed:Z

.field private mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

.field private mWidgetPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->stateEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/StateEditText;->initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiui/widget/StateEditText$WidgetManager;
    .registers 12

    const-string v0, "Could not instantiate the WidgetManager: "

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a8

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    nop

    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lmiui/widget/StateEditText$WidgetManager;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lmiui/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    move-object v4, v6

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/widget/StateEditText$WidgetManager;
    :try_end_32
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_32} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_32} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_32} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_32} :catch_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_32} :catch_34

    move-object v1, v6

    goto :goto_a8

    :catch_34
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating WidgetManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4c
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find WidgetManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_64
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7c
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_92
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_a8
    :goto_a8
    return-object v1
.end method

.method private dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/StateEditText;->mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lmiui/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_94

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/StateEditText;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/StateEditText;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/StateEditText;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/StateEditText;->getPaddingEnd()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v8, v6, v7

    if-nez v8, :cond_22

    const/4 v7, 0x0

    goto :goto_2b

    :cond_22
    aget-object v7, v6, v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget v8, v0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v7, v8

    :goto_2b
    div-int/lit8 v8, v3, 0x2

    const/4 v9, 0x0

    :goto_2e
    iget-object v10, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v11, v10

    if-ge v9, v11, :cond_8f

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_62

    iget-object v12, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v9

    add-int v13, v4, v5

    add-int/2addr v13, v7

    add-int/2addr v13, v1

    div-int/lit8 v14, v11, 0x2

    sub-int v14, v8, v14

    add-int v15, v4, v5

    add-int/2addr v15, v7

    add-int/2addr v15, v10

    add-int/2addr v15, v1

    div-int/lit8 v16, v11, 0x2

    move/from16 v17, v3

    add-int v3, v8, v16

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7d

    :cond_62
    move/from16 v17, v3

    iget-object v3, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    add-int v12, v4, v2

    sub-int/2addr v12, v5

    sub-int/2addr v12, v7

    sub-int/2addr v12, v10

    sub-int/2addr v12, v1

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v8, v13

    add-int v14, v4, v2

    sub-int/2addr v14, v5

    sub-int/2addr v14, v7

    sub-int/2addr v14, v1

    div-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v8

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_7d
    iget v3, v0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    add-int v1, v3, v10

    iget-object v3, v0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    goto :goto_2e

    :cond_8f
    move-object/from16 v12, p1

    move/from16 v17, v3

    goto :goto_96

    :cond_94
    move-object/from16 v12, p1

    :goto_96
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-nez v4, :cond_29

    goto :goto_32

    :cond_29
    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v4

    :goto_32
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    iget v6, p0, Lmiui/widget/StateEditText;->mLabelLength:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getBaseline()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    :cond_56
    iget-object v4, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getScrollX()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getBaseline()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_6b
    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_72
    return-void
.end method

.method private getLabelLength()I
    .registers 3

    iget v0, p0, Lmiui/widget/StateEditText;->mLabelLength:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    :goto_8
    iget v1, p0, Lmiui/widget/StateEditText;->mLabelLength:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getWidgetLength()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    sget-object v1, Lcom/miui/internal/R$styleable;->StateEditText:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$styleable;->StateEditText_widgetManager:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$styleable;->StateEditText_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    sget v2, Lcom/miui/internal/R$styleable;->StateEditText_widgetPadding:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/StateEditText;->mWidgetPadding:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_23
    invoke-direct {p0, p1, v0, p2}, Lmiui/widget/StateEditText;->createWidgetManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Lmiui/widget/StateEditText$WidgetManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/StateEditText;->setWidgetManager(Lmiui/widget/StateEditText$WidgetManager;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/widget/StateEditText;->mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lmiui/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    :cond_37
    iget-object v2, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmiui/widget/StateEditText;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private isWidgetResumedEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lmiui/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_34

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_31

    invoke-direct {p0, p1, v1}, Lmiui/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)V

    const/4 v3, 0x1

    return v3

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_24

    :cond_d
    iget-boolean v0, p0, Lmiui/widget/StateEditText;->mPressed:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/StateEditText;->mPressed:Z

    goto :goto_24

    :cond_15
    iget-boolean v0, p0, Lmiui/widget/StateEditText;->mPressed:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/widget/StateEditText;->mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p2}, Lmiui/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    goto :goto_24

    :cond_21
    iput-boolean v1, p0, Lmiui/widget/StateEditText;->mPressed:Z

    nop

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lmiui/widget/StateEditText;->getWidgetLength()I

    move-result v1

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lmiui/widget/StateEditText;->getLabelLength()I

    move-result v1

    :goto_14
    add-int v2, v0, v1

    return v2
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lmiui/widget/StateEditText;->getLabelLength()I

    move-result v1

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lmiui/widget/StateEditText;->getWidgetLength()I

    move-result v1

    :goto_14
    add-int v2, v0, v1

    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_15

    :cond_a
    invoke-virtual {p0}, Lmiui/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    :goto_15
    iput v0, p0, Lmiui/widget/StateEditText;->mLabelLength:I

    invoke-virtual {p0}, Lmiui/widget/StateEditText;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiui/widget/StateEditText$WidgetManager;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/StateEditText;->mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/widget/StateEditText$WidgetManager;->onDetached()V

    :cond_7
    iput-object p1, p0, Lmiui/widget/StateEditText;->mWidgetManager:Lmiui/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Lmiui/widget/StateEditText$WidgetManager;->onAttached(Lmiui/widget/StateEditText;)V

    :cond_e
    return-void
.end method
