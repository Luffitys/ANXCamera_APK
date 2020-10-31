.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source "ProgressBarDelegate.java"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDrawableChanged:Z

.field private mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    if-lt v0, v1, :cond_55

    :try_start_34
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
    :try_end_4c
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_34 .. :try_end_4c} :catch_4d

    goto :goto_55

    :catch_4d
    move-exception v0

    const-string v1, "ProgressBarDelegate"

    const-string v2, "Fail to find method in LayerDrawable class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    :goto_55
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    return-void
.end method

.method private static addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 10

    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-lez p3, :cond_32

    if-gtz p4, :cond_9

    goto :goto_32

    :cond_9
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

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_32
    :goto_32
    return-object p1
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ProgressBar;",
            ">;)",
            "Lcom/miui/internal/widget/ProgressBarDelegate;"
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private initMaskPaint(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_18

    :cond_d
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_18

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    :cond_18
    :goto_18
    if-eqz v0, :cond_25

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_3b

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressBarDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method private superOnSizeChanged(IIII)V
    .registers 11

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->ON_SIZE_CHANGED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetIndeterminate(Z)V
    .registers 8

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .registers 20

    move-object v0, p1

    instance-of v1, v0, Landroid/graphics/drawable/NinePatchDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    if-nez v1, :cond_138

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_f

    goto/16 :goto_138

    :cond_f
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_21

    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_142

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v4, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v4

    goto/16 :goto_142

    :cond_21
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_9f

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v2, :cond_5a

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const v7, 0x102000d

    if-eq v6, v7, :cond_47

    const v7, 0x102000f

    if-ne v6, v7, :cond_44

    goto :goto_47

    :cond_44
    aput-object v13, v4, v5

    goto :goto_57

    :cond_47
    :goto_47
    move-object v7, p0

    move-object v8, v13

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v5

    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_5a
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    :goto_60
    if-ge v6, v2, :cond_9c

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    sget-object v7, Lcom/miui/internal/widget/ProgressBarDelegate;->sGetLayerGravity:Lmiui/reflect/Method;

    if-eqz v7, :cond_96

    sget-object v8, Lcom/miui/internal/widget/ProgressBarDelegate;->sSetLayerGravity:Lmiui/reflect/Method;

    if-eqz v8, :cond_96

    const-class v8, Landroid/graphics/drawable/LayerDrawable;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v1, v9}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v7

    sget-object v8, Lcom/miui/internal/widget/ProgressBarDelegate;->sSetLayerGravity:Lmiui/reflect/Method;

    const-class v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v8, v9, v5, v10}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_96
    invoke-static {v5, v1, v6}, Lcom/miui/internal/widget/ProgressBarDelegateHelper;->setOutLayerParams(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    :cond_9c
    move-object v1, v5

    goto/16 :goto_142

    :cond_9f
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_d7

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v3, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v3, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v3

    const/4 v4, 0x0

    :goto_b2
    if-ge v4, v3, :cond_d4

    sget-object v5, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v5, v1, v4}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v6, v1, v4}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v12

    move-object v6, p0

    move-object v7, v5

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    :cond_d4
    move-object v1, v2

    goto/16 :goto_142

    :cond_d7
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_120

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v4, 0x0

    :goto_ef
    const/16 v5, 0x2710

    if-ge v4, v2, :cond_111

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_111
    if-eqz p5, :cond_117

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_11e

    :cond_117
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    :goto_11e
    move-object v1, v3

    goto :goto_142

    :cond_120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Drawable subclass, src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressBarDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_142

    :cond_138
    :goto_138
    invoke-static/range {p0 .. p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v4, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v4

    :cond_142
    :goto_142
    return-object v1
.end method

.method private updateDrawable()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable(Z)V

    return-void
.end method

.method private updateDrawable(Z)V
    .registers 12

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
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

    if-ge v1, v2, :cond_28

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_28
    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_30

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_30
    const/4 v3, 0x1

    if-eqz p1, :cond_66

    iget-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    if-eqz v4, :cond_66

    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x1

    move v7, v1

    move v8, v2

    invoke-static/range {v4 .. v9}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_62

    if-lez v1, :cond_62

    if-lez v2, :cond_62

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-static {v8}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5f

    move v8, v7

    sub-int v7, v1, v4

    sub-int v4, v1, v8

    :cond_5f
    invoke-virtual {v3, v7, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_62
    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_86

    :cond_66
    if-nez p1, :cond_86

    iget-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    if-eqz v4, :cond_86

    iput-boolean v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    move v7, v1

    move v8, v2

    invoke-static/range {v4 .. v9}, Lcom/miui/internal/widget/ProgressBarDelegate;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-static {v4}, Lcom/miui/internal/widget/ProgressBarDelegateHelper;->setProgress(Landroid/widget/ProgressBar;)V

    goto :goto_87

    :cond_86
    :goto_86
    nop

    :goto_87
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_13
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_1a
    iget v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mDisabledAlpha:F

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->superOnSizeChanged(IIII)V

    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    sget v4, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v5, 0x30

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget-object v5, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v5, v3, v4}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    sget v5, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v6, 0x19

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v6, v3, v5}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    :cond_3b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    sget v5, Lcom/miui/internal/R$styleable;->ProgressBar_progressMask:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-direct {p0, v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->initMaskPaint(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_50

    :cond_4d
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :goto_50
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v4, v4, [I

    const v7, 0x1010033

    aput v7, v4, v2

    invoke-virtual {v6, p1, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mDisabledAlpha:F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActual:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eq p1, v0, :cond_e

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable(Z)V

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminate(Z)V

    :cond_e
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :cond_c
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_c

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    :cond_c
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
