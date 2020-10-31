.class public Lmiui/graphics/BitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/graphics/BitmapFactory$CropOption;
    }
.end annotation


# static fields
.field private static final APPELLATION_SUFFIX:[Ljava/lang/String;

.field private static final ASIALANGPATTERN:Ljava/util/regex/Pattern;

.field public static final BITMAP_COLOR_MODE_DARK:I = 0x0

.field public static final BITMAP_COLOR_MODE_LIGHT:I = 0x2

.field public static final BITMAP_COLOR_MODE_MEDIUM:I = 0x1

.field public static final MODE_DARK:I = 0x1

.field public static final MODE_DAYNIGHT:I = 0x2

.field public static final MODE_LIGHT:I

.field private static PNG_HEAD_FORMAT:[B

.field private static final sCanvasCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field static sLockForRsContext:Ljava/lang/Object;

.field static sRsContext:Landroid/renderscript/RenderScript;

.field private static final sSrcInPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 41

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_8e

    sput-object v0, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "[\u3100-\u312d\u31a0-\u31ba\u4e00-\u9fcc\u3400-\u4db5\uf900-\ufad9\u2f00-\u2fd5\u2e80-\u2ef3\u31c0-\u31e3\u1100-\u11ff\ua960-\ua97c\ud7b0-\ud7fb\u3131-\u318e\uac00-\ud7a3\u3040-\u309f\u30a0-\u30ff\u31f0-\u31ff\u3190-\u319f\ua000-\ua48c\ua490-\ua4c6]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    const-string v1, "\u8001\u5e08"

    const-string v2, "\u5148\u751f"

    const-string v3, "\u8001\u677f"

    const-string v4, "\u4ed4"

    const-string v5, "\u624b\u673a"

    const-string v6, "\u53d4"

    const-string v7, "\u963f\u59e8"

    const-string v8, "\u5b85"

    const-string v9, "\u4f2f"

    const-string v10, "\u4f2f\u6bcd"

    const-string v11, "\u4f2f\u7236"

    const-string v12, "\u54e5"

    const-string v13, "\u59d0"

    const-string v14, "\u5f1f"

    const-string v15, "\u59b9"

    const-string v16, "\u8205"

    const-string v17, "\u59d1"

    const-string v18, "\u7236"

    const-string v19, "\u4e3b\u4efb"

    const-string v20, "\u7ecf\u7406"

    const-string v21, "\u5de5\u4f5c"

    const-string v22, "\u540c\u4e8b"

    const-string v23, "\u5f8b\u5e08"

    const-string v24, "\u53f8\u673a"

    const-string v25, "\u5e08\u5085"

    const-string v26, "\u5e08\u7236"

    const-string v27, "\u7237"

    const-string v28, "\u5976"

    const-string v29, "\u4e2d\u4ecb"

    const-string v30, "\u8463"

    const-string v31, "\u603b"

    const-string v32, "\u592a\u592a"

    const-string v33, "\u4fdd\u59c6"

    const-string v34, "\u67d0"

    const-string v35, "\u79d8\u4e66"

    const-string v36, "\u5904\u957f"

    const-string v37, "\u5c40\u957f"

    const-string v38, "\u73ed\u957f"

    const-string v39, "\u5144"

    const-string v40, "\u52a9\u7406"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    return-void

    nop

    :array_8e
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static between(III)I
    .registers 4

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 13

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_1f

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    goto :goto_2d

    :cond_1f
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v0

    :goto_2d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 13

    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, p5, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p6, :cond_6

    return-object v0

    :cond_6
    if-nez p1, :cond_25

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_15

    goto :goto_24

    :cond_15
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_36

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    if-nez p6, :cond_36

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p6, v1

    :cond_36
    :goto_36
    invoke-static {p0, p2, v0, p5, p6}, Lmiui/graphics/BitmapFactory;->maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lmiui/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_49

    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_49
    invoke-virtual {v2, v1, p6, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p3, :cond_57

    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_57
    return-object p1
.end method

.method private static computeSampleSize(Lmiui/io/ResettableInputStream;I)I
    .registers 8

    const/4 v0, 0x1

    if-lez p1, :cond_15

    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    :cond_15
    return v0
.end method

.method private static containsEastAsianCharacter(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/graphics/BitmapFactory;->ASIALANGPATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return-object v0

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/graphics/BitmapFactory;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_7f

    if-nez v5, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$drawable;->word_photo_bg_light:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_88

    :cond_30
    if-ne v8, v5, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_88

    :cond_3e
    if-ne v7, v5, :cond_68

    sget v9, Lcom/miui/internal/R$attr;->wordPhotoBackground:I

    invoke-static {v1, v9}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_66

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$drawable;->word_photo_bg_dark:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_88

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$drawable;->word_photo_bg_light:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_88

    :cond_66
    move-object v9, v0

    goto :goto_88

    :cond_68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown mode when get drawable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    :goto_88
    new-instance v0, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v11, -0x1

    if-nez v4, :cond_f1

    if-nez v5, :cond_a1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lmiui/R$color;->word_photo_color:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_f9

    :cond_a1
    if-ne v8, v5, :cond_ae

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/miui/internal/R$color;->word_photo_color_dark:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_f9

    :cond_ae
    if-ne v7, v5, :cond_da

    :try_start_b0
    sget v0, Lcom/miui/internal/R$attr;->wordPhotoTextColor:I

    invoke-static {v1, v0}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b6} :catch_b8

    move v11, v0

    goto :goto_b9

    :catch_b8
    move-exception v0

    :goto_b9
    const/4 v0, -0x1

    if-ne v11, v0, :cond_d8

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/miui/internal/R$color;->word_photo_color_dark:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_f9

    :cond_cd
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lmiui/R$color;->word_photo_color:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_f9

    :cond_d8
    move v0, v11

    goto :goto_f9

    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown mode when get photo color: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_f9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v8, v2

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v13

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v6, v10, v13, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v10, v8, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v13

    sub-int v10, v2, v10

    int-to-double v13, v10

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    double-to-int v10, v13

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    sub-int v13, v2, v13

    int-to-double v13, v13

    mul-double/2addr v13, v15

    double-to-int v13, v13

    int-to-float v14, v10

    int-to-float v15, v13

    invoke-virtual {v11, v6, v14, v15, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v7
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->contact_photo_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->ic_contact_photo_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->ic_contact_photo_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v2, Lcom/miui/internal/R$drawable;->ic_contact_photo_mask:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v9

    move-object v5, v1

    move-object v6, v8

    move v7, p2

    invoke-static/range {v2 .. v7}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_163

    if-nez v1, :cond_b

    move-object v3, v0

    goto/16 :goto_164

    :cond_b
    if-nez p2, :cond_13

    new-instance v2, Lmiui/graphics/BitmapFactory$CropOption;

    invoke-direct {v2}, Lmiui/graphics/BitmapFactory$CropOption;-><init>()V

    goto :goto_15

    :cond_13
    move-object/from16 v2, p2

    :goto_15
    iget-object v3, v2, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-nez v3, :cond_28

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v5

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5, v7}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v7, v8}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8, v9}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9, v10}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v9

    sub-int v10, v7, v5

    sub-int v11, v9, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    invoke-static {v4, v14, v15}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v14

    iput v14, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    div-int/lit8 v14, v12, 0x2

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    invoke-static {v4, v14, v15}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v14

    iput v14, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    div-int/lit8 v14, v13, 0x2

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    invoke-static {v4, v14, v15}, Lmiui/graphics/BitmapFactory;->between(III)I

    move-result v14

    iput v14, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v15

    if-lez v4, :cond_d6

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v4, v15

    if-lez v4, :cond_d6

    new-instance v4, Landroid/graphics/RectF;

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v15, v15

    move-object/from16 p2, v3

    iget v3, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    int-to-float v3, v3

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v1, v12, v1

    int-to-float v1, v1

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v0, v13, v0

    int-to-float v0, v0

    invoke-direct {v4, v15, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iget v3, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v6, v4, v0, v1, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_d8

    :cond_d6
    move-object/from16 p2, v3

    :goto_d8
    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    iget v1, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v13, v1

    int-to-float v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v15, v0

    div-float/2addr v3, v15

    int-to-float v15, v11

    mul-float/2addr v15, v4

    int-to-float v4, v1

    div-float/2addr v15, v4

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v10

    int-to-float v15, v0

    mul-float/2addr v15, v3

    sub-float/2addr v4, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    float-to-int v4, v4

    int-to-float v15, v11

    move/from16 v17, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    sub-float/2addr v15, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v15, v0

    float-to-int v0, v15

    new-instance v15, Landroid/graphics/Rect;

    move/from16 v16, v1

    add-int v1, v5, v4

    move/from16 v18, v3

    add-int v3, v8, v0

    move/from16 v19, v5

    sub-int v5, v7, v4

    move/from16 v20, v4

    sub-int v4, v9, v0

    invoke-direct {v15, v1, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v15

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v5, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v15, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v15, v12, v15

    move/from16 v21, v0

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    sub-int v0, v13, v0

    invoke-direct {v3, v4, v5, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v3

    move-object/from16 v3, p0

    invoke-virtual {v6, v3, v1, v0, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    if-lez v4, :cond_160

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    ushr-int/lit8 v4, v4, 0x18

    if-eqz v4, :cond_160

    iget v4, v2, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v12

    int-to-float v15, v13

    move-object/from16 v22, v0

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, v5, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, v2, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    int-to-float v0, v0

    iget v5, v2, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    int-to-float v5, v5

    invoke-virtual {v6, v4, v0, v5, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_162

    :cond_160
    move-object/from16 v22, v0

    :goto_162
    return-object p1

    :cond_163
    move-object v3, v0

    :goto_164
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;
    .registers 4

    if-eqz p0, :cond_b

    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmiui/graphics/BitmapFactory$CropOption;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v1

    invoke-static {v0, p2, p3, p4}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v1

    invoke-static {v0, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v1

    const/4 v1, -0x1

    invoke-static {v0, v1, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_11
    move-exception v1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_17
    throw v1
.end method

.method public static decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {v0, p1, p2, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {v0, p1, p2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_11
    move-exception v1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_17
    throw v1
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IIZ)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p1, p2

    if-lez p1, :cond_6

    if-gtz p2, :cond_7

    :cond_6
    const/4 v0, -0x1

    :cond_7
    invoke-static {p0, v0, p3}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v2, 0x0

    return-object v2

    :cond_f
    if-lez v0, :cond_1b

    move-object v2, v1

    invoke-static {v2, p1, p2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v2, v1, :cond_1b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    return-object v1
.end method

.method public static decodeBitmap(Lmiui/io/ResettableInputStream;IZ)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {p0, p1}, Lmiui/graphics/BitmapFactory;->computeSampleSize(Lmiui/io/ResettableInputStream;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2e

    :try_start_18
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->reset()V

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_20} :catch_22

    move-object v1, v2

    goto :goto_2e

    :catch_22
    move-exception v2

    if-eqz p2, :cond_2d

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v2, v3

    goto :goto_13

    :cond_2d
    throw v2

    :cond_2e
    :goto_2e
    return-object v1
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1e

    :cond_1a
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->copyToEmpty(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1e
    invoke-static {p0, p1, p2}, Lmiui/graphics/BitmapFactory;->fastblur_v17(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private static fastblur_v17(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    move/from16 v3, p2

    move v4, v0

    :goto_8
    const/16 v0, 0x19

    if-le v3, v0, :cond_11

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    goto :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    if-ne v4, v7, :cond_20

    move-object/from16 v0, p0

    move-object v8, v0

    goto :goto_31

    :cond_20
    div-int v0, v5, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v8, v6, v4

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v0, v8}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v8, v0

    :goto_31
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_42

    new-instance v9, Lmiui/graphics/BitmapFactory$1;

    invoke-direct {v9, v0}, Lmiui/graphics/BitmapFactory$1;-><init>(Landroid/content/Context;)V

    move-object v0, v9

    goto :goto_43

    :cond_42
    move-object v9, v0

    :goto_43
    :try_start_43
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v10, "android.graphics.Bitmap$Config"

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_53
    if-ge v12, v11, :cond_76

    aget-object v13, v10, v12

    move-object v14, v13

    check-cast v14, Ljava/lang/Enum;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    const-string v7, "RGBA_F16"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-ne v7, v14, :cond_72

    invoke-static {v8}, Lmiui/graphics/BitmapFactory;->transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_70} :catch_77

    move-object v8, v7

    goto :goto_76

    :cond_72
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_53

    :cond_76
    :goto_76
    goto :goto_78

    :catch_77
    move-exception v0

    :goto_78
    sget-object v7, Lmiui/graphics/BitmapFactory;->sLockForRsContext:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7b
    sget-object v0, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_85

    invoke-static {v9}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    :cond_85
    const/4 v10, 0x1

    if-ne v4, v10, :cond_8b

    move-object/from16 v0, p1

    goto :goto_8c

    :cond_8b
    move-object v0, v8

    :goto_8c
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    if-eq v10, v11, :cond_9e

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v8, v10

    :cond_9e
    sget-object v10, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v10, v8}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v10

    sget-object v11, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v11

    sget-object v12, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    sget-object v13, Lmiui/graphics/BitmapFactory;->sRsContext:Landroid/renderscript/RenderScript;

    invoke-static {v13}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v12

    int-to-float v13, v3

    invoke-virtual {v12, v13}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v12, v10}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v12, v11}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v11, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eq v0, v2, :cond_cc

    invoke-static {v0, v2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_cc
    if-eq v8, v1, :cond_d1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d1
    if-eq v0, v2, :cond_d6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d6
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v11}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v12}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    monitor-exit v7

    return-object v2

    :catchall_e1
    move-exception v0

    monitor-exit v7
    :try_end_e3
    .catchall {:try_start_7b .. :try_end_e3} :catchall_e1

    throw v0
.end method

.method public static getBitmapColorMode(Landroid/graphics/Bitmap;I)I
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v2, v2, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v3, v3, p1

    mul-int v4, v3, v2

    div-int/lit8 v4, v4, 0x5

    invoke-static {v0, v3, v2}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v3, :cond_72

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v2, :cond_69

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v12, v9, 0xff

    int-to-float v13, v10

    float-to-double v13, v13

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    int-to-float v15, v11

    move/from16 v17, v1

    move/from16 v16, v2

    float-to-double v1, v15

    const-wide v18, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v1, v1, v18

    add-double/2addr v13, v1

    int-to-float v1, v12

    float-to-double v1, v1

    const-wide v18, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v1, v1, v18

    add-double/2addr v13, v1

    double-to-int v1, v13

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_62

    add-int/lit8 v6, v6, 0x1

    if-le v6, v4, :cond_5b

    const/4 v2, 0x1

    move/from16 v17, v2

    :cond_5b
    mul-int/lit8 v2, v4, 0x2

    if-le v6, v2, :cond_62

    const/4 v2, 0x0

    move v1, v2

    goto :goto_6d

    :cond_62
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_1c

    :cond_69
    move/from16 v17, v1

    move/from16 v16, v2

    :goto_6d
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    goto :goto_19

    :cond_72
    move/from16 v16, v2

    if-eq v5, v0, :cond_79

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_79
    return v1
.end method

.method public static getBitmapSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v1

    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static getBitmapSize(Lmiui/io/ResettableInputStream;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lmiui/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getCachedCanvas()Landroid/graphics/Canvas;
    .registers 2

    sget-object v0, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    if-nez v0, :cond_15

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    move-object v0, v1

    sget-object v1, Lmiui/graphics/BitmapFactory;->sCanvasCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lmiui/graphics/BitmapFactory;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/Utf8TextUtils;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPngFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0, p1}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v0, v1

    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static isPngFormat(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p0}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {v0}, Lmiui/graphics/BitmapFactory;->isPngFormat(Lmiui/io/ResettableInputStream;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    nop

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    return v1

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/io/ResettableInputStream;->close()V

    :cond_16
    throw v1
.end method

.method public static isPngFormat(Lmiui/io/ResettableInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lmiui/io/ResettableInputStream;->read([B)I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_11

    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->isPngFormat([B)Z

    move-result v0

    :cond_11
    return v0
.end method

.method private static isPngFormat([B)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    array-length v1, p0

    sget-object v2, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-ge v1, v2, :cond_a

    goto :goto_1c

    :cond_a
    const/4 v1, 0x0

    :goto_b
    sget-object v2, Lmiui/graphics/BitmapFactory;->PNG_HEAD_FORMAT:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static maskOutBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    if-nez p4, :cond_8

    return-object v1

    :cond_8
    const/4 v2, 0x0

    if-nez p2, :cond_2a

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_29

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gtz v3, :cond_18

    goto :goto_29

    :cond_18
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v3, p4

    goto :goto_41

    :cond_29
    :goto_29
    return-object v1

    :cond_2a
    if-nez p4, :cond_3d

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v1

    move-object/from16 v1, p2

    goto :goto_41

    :cond_3d
    move-object/from16 v1, p2

    move-object/from16 v3, p4

    :goto_41
    invoke-static {}, Lmiui/graphics/BitmapFactory;->getCachedCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v0, :cond_55

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_55
    if-nez p3, :cond_97

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v7

    int-to-float v11, v6

    div-float/2addr v10, v11

    int-to-float v11, v2

    int-to-float v12, v6

    div-float/2addr v11, v12

    int-to-float v12, v5

    int-to-float v13, v7

    div-float/2addr v12, v13

    cmpl-float v13, v11, v12

    if-lez v13, :cond_7f

    int-to-float v13, v5

    div-float/2addr v13, v10

    float-to-int v13, v13

    sub-int v14, v2, v13

    div-int/lit8 v8, v14, 0x2

    move v2, v13

    goto :goto_8c

    :cond_7f
    cmpg-float v13, v11, v12

    if-gez v13, :cond_8c

    int-to-float v13, v2

    mul-float/2addr v13, v10

    float-to-int v13, v13

    sub-int v14, v5, v13

    div-int/lit8 v9, v14, 0x2

    move v5, v13

    goto :goto_8d

    :cond_8c
    :goto_8c
    nop

    :goto_8d
    new-instance v13, Landroid/graphics/Rect;

    add-int v14, v8, v2

    add-int v15, v9, v5

    invoke-direct {v13, v8, v9, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_99

    :cond_97
    move-object/from16 v13, p3

    :goto_99
    sget-object v2, Lmiui/graphics/BitmapFactory;->sSrcInPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    invoke-virtual {v4, v5, v13, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    move-object v0, p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    sget-object v3, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_56

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v5, Lmiui/graphics/BitmapFactory;->APPELLATION_SUFFIX:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/graphics/BitmapFactory;->containsEastAsianCharacter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_56
    :goto_56
    if-eqz v1, :cond_5e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5e
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_74
    return-object v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_22

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    if-eqz p2, :cond_e

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_10

    :cond_e
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_10
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x1

    return v1

    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_21
    throw v1

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_12

    move-object v0, p0

    goto :goto_26

    :cond_12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_1e
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v0, v1

    :goto_26
    return-object v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    if-eqz p0, :cond_51

    if-nez p1, :cond_5

    goto :goto_51

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1b

    move-object p1, p0

    goto :goto_50

    :cond_1b
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_50
    return-object p1

    :cond_51
    :goto_51
    const/4 v0, 0x0

    return-object v0
.end method

.method private static transferF16ToARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2f

    if-nez v1, :cond_d

    goto :goto_2f

    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2e
    return-object v2

    :cond_2f
    :goto_2f
    return-object p0
.end method
