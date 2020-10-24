.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final DRAWABLE_MAX_LEVEL:I = 0x2710

.field private static final ON_SIZE_CHANGED:Lmiui/reflect/Method;

.field private static final SET_INDETERMINATE:Lmiui/reflect/Method;

.field private static final SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

.field private static final SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

.field private static final StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

.field static final TAG:Ljava/lang/String; = "ProgressBarDelegate"

.field private static sGetLayerGravity:Lmiui/reflect/Method;

.field private static sSetLayerGravity:Lmiui/reflect/Method;


# instance fields
.field private final mActual:Landroid/widget/ProgressBar;

.field private mDisabledAlpha:F

.field private mIndeterminateDrawableChanged:Z

.field private mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

.field private mInitialized:Z

.field private final mProgressBarClass:Ljava/lang/Class;

.field private mProgressDrawableChanged:Z

.field private mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminate"

    const-string v2, "(Z)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminateDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgressDrawable"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "onSizeChanged"

    const-string v2, "(IIII)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->ON_SIZE_CHANGED:Lmiui/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "getLayerGravity"

    const-string v2, "(I)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->sGetLayerGravity:Lmiui/reflect/Method;

    const-class v0, Landroid/graphics/drawable/LayerDrawable;

    const-string v1, "setLayerGravity"

    const-string v2, "(II)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->sSetLayerGravity:Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ProgressBarDelegate"

    const-string v2, "Fail to find method in LayerDrawable class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    return-void
.end method

.method private constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    return-void
.end method

.method private static addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private initMaskPaint(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of p0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProgressBarDelegate"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private superOnSizeChanged(IIII)V
    .locals 4

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->ON_SIZE_CHANGED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetIndeterminate(Z)V
    .locals 4

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 13

    move-object v0, p1

    instance-of v1, v0, Landroid/graphics/drawable/NinePatchDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    if-nez v1, :cond_c

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_d

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    :goto_0
    move-object v1, v0

    goto/16 :goto_9

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v7, 0x102000d

    if-eq v6, v7, :cond_3

    const v7, 0x102000f

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    aput-object v8, v4, v5

    goto :goto_3

    :cond_3
    :goto_2
    move-object v7, p0

    move-object v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_6

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->sGetLayerGravity:Lmiui/reflect/Method;

    if-eqz v6, :cond_5

    sget-object v7, Lcom/miui/internal/widget/ProgressBarDelegate;->sSetLayerGravity:Lmiui/reflect/Method;

    if-eqz v7, :cond_5

    const-class v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v0, v8}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v6

    sget-object v7, Lcom/miui/internal/widget/ProgressBarDelegate;->sSetLayerGravity:Lmiui/reflect/Method;

    const-class v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-virtual {v7, v8, v5, v9}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_5
    invoke-static {v5, v0, v4}, Lcom/miui/internal/widget/ProgressBarDelegateHelper;->setOutLayerParams(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object v1, v5

    goto/16 :goto_9

    :cond_7
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v3, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v3, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    :goto_5
    if-ge v2, v3, :cond_d

    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v4, v0, v2}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v4

    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    :goto_6
    const/16 v4, 0x2710

    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, p0

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    :goto_7
    move-object v1, v3

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Drawable subclass, src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressBarDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    :goto_8
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    :cond_d
    :goto_9
    return-object v1
.end method

.method private updateDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable(Z)V

    return-void
.end method

.method private updateDrawable(Z)V
    .locals 11

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    move v10, v2

    move v2, v1

    move v1, v10

    :cond_1
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const/4 v3, 0x1

    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    if-eqz v4, :cond_5

    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    if-lez v1, :cond_4

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-int v0, v1, v1

    add-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_3
    move v0, v9

    :goto_0
    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-static {p0}, Lcom/miui/internal/widget/ProgressBarDelegateHelper;->setProgress(Landroid/widget/ProgressBar;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mDisabledAlpha:F

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setAlpha(F)V

    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->superOnSizeChanged(IIII)V

    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v4, 0x30

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v4, 0x19

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v1, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_progressMask:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->initMaskPaint(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v0, v1, [I

    const v1, 0x1010033

    aput v1, v0, v2

    invoke-virtual {p2, p1, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mDisabledAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable(Z)V

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    iput-boolean p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
