.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GAMEMOUSE_HOVERMOVE:I = 0x3fe

.field public static final TYPE_GAMEMOUSE_MOVE:I = 0x3ff

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_DOWN:I = 0x7d3

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_SPOT_UP:I = 0x7d4

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIconsByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .registers 2

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 5

    if-eqz p0, :cond_12

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .registers 11

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_19

    return-object v0

    :cond_19
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v6, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v5
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 2

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .registers 1

    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 12

    if-eqz p0, :cond_94

    if-nez p1, :cond_7

    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0

    :cond_7
    sget-object v0, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_e

    invoke-static {p0}, Landroid/view/PointerIcon;->registerDisplayListener(Landroid/content/Context;)V

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    sget-object v1, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_27

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    sget-object v2, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    if-eqz v2, :cond_30

    return-object v2

    :cond_30
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-nez v3, :cond_3c

    invoke-static {v4}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v3

    :cond_3c
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v5, :cond_44

    const v5, 0x103032f

    goto :goto_47

    :cond_44
    const v5, 0x1030337

    :goto_47
    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->Pointer:[I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v8, v7, :cond_79

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing theme resources for pointer icon type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PointerIcon"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_74

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto :goto_78

    :cond_74
    invoke-static {p0, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    :goto_78
    return-object v4

    :cond_79
    new-instance v4, Landroid/view/PointerIcon;

    invoke-direct {v4, p1}, Landroid/view/PointerIcon;-><init>(I)V

    move-object v2, v4

    const/high16 v4, -0x1000000

    and-int/2addr v4, v8

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_89

    iput v8, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    goto :goto_90

    :cond_89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, p0, v4, v8}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    :goto_90
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v2

    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemIconTypeIndex(I)I
    .registers 2

    packed-switch p0, :pswitch_data_58

    packed-switch p0, :pswitch_data_66

    packed-switch p0, :pswitch_data_72

    packed-switch p0, :pswitch_data_90

    const/4 v0, 0x0

    return v0

    :pswitch_e
    const/16 v0, 0x13

    return v0

    :pswitch_11
    const/16 v0, 0x10

    return v0

    :pswitch_14
    const/16 v0, 0xf

    return v0

    :pswitch_17
    const/16 v0, 0x12

    return v0

    :pswitch_1a
    const/16 v0, 0x11

    return v0

    :pswitch_1d
    const/16 v0, 0x8

    return v0

    :pswitch_20
    const/4 v0, 0x7

    return v0

    :pswitch_22
    const/16 v0, 0xa

    return v0

    :pswitch_25
    const/16 v0, 0x9

    return v0

    :pswitch_28
    const/16 v0, 0x1b

    return v0

    :pswitch_2b
    const/16 v0, 0x1a

    return v0

    :pswitch_2e
    const/16 v0, 0x15

    return v0

    :pswitch_31
    const/16 v0, 0x16

    return v0

    :pswitch_34
    const/16 v0, 0x17

    return v0

    :pswitch_37
    const/16 v0, 0xd

    return v0

    :pswitch_3a
    const/4 v0, 0x1

    return v0

    :pswitch_3c
    const/16 v0, 0xe

    return v0

    :pswitch_3f
    const/4 v0, 0x5

    return v0

    :pswitch_41
    const/16 v0, 0x18

    return v0

    :pswitch_44
    const/16 v0, 0x14

    return v0

    :pswitch_47
    const/4 v0, 0x6

    return v0

    :pswitch_49
    const/4 v0, 0x3

    return v0

    :pswitch_4b
    const/16 v0, 0x19

    return v0

    :pswitch_4e
    const/16 v0, 0xc

    return v0

    :pswitch_51
    const/16 v0, 0xb

    return v0

    :pswitch_54
    const/4 v0, 0x4

    return v0

    :pswitch_56
    const/4 v0, 0x2

    return v0

    :pswitch_data_58
    .packed-switch 0x3e8
        :pswitch_56
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x3ee
        :pswitch_49
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x3f3
        :pswitch_3f
        :pswitch_3c
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_20
        :pswitch_1d
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x7d0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 4

    if-eqz p0, :cond_d

    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resources must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :try_start_a
    const-string/jumbo v0, "pointer-icon"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_e3
    .catchall {:try_start_a .. :try_end_29} :catchall_e1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    nop

    if-eqz v6, :cond_d9

    if-nez v2, :cond_36

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3a

    :cond_36
    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3a
    instance-of v10, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v10, :cond_bc

    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v11

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v11, v8, :cond_55

    const-string v5, "PointerIcon"

    const-string v8, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto :goto_ba

    :cond_55
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    iput v5, v1, Landroid/view/PointerIcon;->mDurationPerFrame:I

    add-int/lit8 v5, v11, -0x1

    new-array v5, v5, [Landroid/graphics/Bitmap;

    iput-object v5, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v12, 0x1

    :goto_6a
    if-ge v12, v11, :cond_b8

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    instance-of v14, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_ae

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v5, :cond_90

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-ne v14, v8, :cond_90

    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v15, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v16, v12, -0x1

    invoke-direct {v1, v14}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    aput-object v17, v15, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    :cond_90
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "The bitmap size of "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-th frame is different. All frames should have the exact same size and share the same hotspot."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_ae
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    move-object/from16 v16, v0

    :goto_ba
    move-object/from16 v0, v16

    :cond_bc
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_d1

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v9, v7}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    iput-object v8, v1, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iput v9, v1, Landroid/view/PointerIcon;->mHotSpotX:F

    iput v7, v1, Landroid/view/PointerIcon;->mHotSpotY:F

    return-void

    :cond_d1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_e1
    move-exception v0

    goto :goto_ec

    :catch_e3
    move-exception v0

    :try_start_e4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Exception parsing pointer icon resource."

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_e1

    :goto_ec
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method private static registerDisplayListener(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/view/PointerIcon$2;

    invoke-direct {v0}, Landroid/view/PointerIcon$2;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/view/PointerIcon;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static setUseLargeIcons(Z)V
    .registers 2

    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    sget-object v0, Landroid/view/PointerIcon;->gSystemIconsByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_25

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_25

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    instance-of v2, p1, Landroid/view/PointerIcon;

    if-nez v2, :cond_c

    goto :goto_37

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/view/PointerIcon;

    iget v3, p0, Landroid/view/PointerIcon;->mType:I

    iget v4, v2, Landroid/view/PointerIcon;->mType:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_1c

    goto :goto_36

    :cond_1c
    if-nez v3, :cond_35

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_35

    :cond_34
    return v1

    :cond_35
    return v0

    :cond_36
    :goto_36
    return v1

    :cond_37
    :goto_37
    return v1
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 5

    if-eqz p1, :cond_21

    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    goto :goto_20

    :cond_b
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0

    :cond_20
    :goto_20
    return-object p0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_21
    return-void
.end method
