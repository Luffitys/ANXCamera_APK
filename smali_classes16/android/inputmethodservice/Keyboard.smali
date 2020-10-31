.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_56
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    div-int/lit8 v0, p4, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_48
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 20

    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput v4, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    const/16 v6, 0xc

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    const/4 v6, -0x1

    move/from16 v7, p4

    if-ne v7, v6, :cond_2c

    const v6, 0x7fffffff

    goto :goto_2d

    :cond_2c
    move v6, v7

    :goto_2d
    const/4 v8, 0x0

    :goto_2e
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_7d

    move-object/from16 v9, p3

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v3, v6, :cond_45

    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v11, v1

    add-int v11, v11, p5

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v11, v12, :cond_4d

    :cond_45
    const/4 v1, 0x0

    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    const/4 v3, 0x0

    :cond_4d
    new-instance v11, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v11, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    iput v1, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput v2, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v10, v13, v4

    iput-object v13, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    add-int/2addr v3, v12

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    iget-object v12, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v5, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v1, v12, :cond_7a

    iput v1, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_7d
    move-object/from16 v9, p3

    iget v4, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .registers 12

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v1, :cond_9d

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v2, :cond_99

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_36
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {v7, v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v3, v8}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_7f

    :cond_7a
    add-int/lit8 v8, v5, 0x1

    aput v6, v0, v5

    move v5, v8

    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_82
    new-array v6, v5, [I

    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v9, v4, v8

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v10, v3, v10

    add-int/2addr v9, v10

    aput-object v6, v7, v9

    add-int/2addr v4, v8

    goto :goto_32

    :cond_99
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v3, v4

    goto :goto_2f

    :cond_9d
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 7

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_7

    return p3

    :cond_7
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    :cond_11
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_20

    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    :cond_20
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 27

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, "Keyboard"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v12

    move v12, v1

    move v1, v0

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    :goto_1f
    :try_start_1f
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v4, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_162

    const/4 v0, 0x2

    if-ne v4, v0, :cond_11d

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_16e

    const/16 v17, 0x0

    if-eqz v2, :cond_86

    const/4 v2, 0x1

    const/4 v12, 0x0

    :try_start_3a
    invoke-virtual {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v14

    move-object v5, v14

    iget-object v14, v7, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v14, :cond_50

    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    iget v3, v7, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_7d

    if-eq v14, v3, :cond_50

    const/4 v3, 0x1

    goto :goto_52

    :cond_50
    move/from16 v3, v17

    :goto_52
    if-eqz v3, :cond_70

    :try_start_54
    invoke-direct {v7, v8}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_65

    const/4 v2, 0x0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_115

    :catch_65
    move-exception v0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_179

    :cond_70
    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_115

    :catch_7d
    move-exception v0

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_179

    :cond_86
    :try_start_86
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_16e

    if-eqz v2, :cond_101

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    const/16 v18, 0x1

    move-object v3, v5

    move/from16 v20, v10

    move v10, v4

    move v4, v14

    move/from16 v21, v13

    move-object v13, v5

    move v5, v15

    move/from16 v22, v15

    move-object v15, v6

    move-object/from16 v6, p2

    :try_start_a3
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a7} :catch_f8

    :try_start_a7
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d9

    const/4 v2, 0x0

    :goto_b4
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_d3

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v2

    if-nez v3, :cond_d0

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v3, v2

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    iget-object v4, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    goto :goto_d3

    :cond_d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    :cond_d3
    :goto_d3
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_d9
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x6

    if-ne v2, v3, :cond_e5

    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e5
    :goto_e5
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ea} :catch_ef

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    goto :goto_115

    :catch_ef
    move-exception v0

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_179

    :catch_f8
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_179

    :cond_101
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    :try_start_10a
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-direct {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    :cond_113
    move-object v5, v13

    move-object v6, v15

    :goto_115
    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_1f

    :cond_11d
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    const/4 v0, 0x3

    if-ne v10, v0, :cond_158

    if-eqz v1, :cond_13f

    const/4 v1, 0x0

    iget v0, v15, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v14, v0, :cond_158

    iput v14, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto :goto_158

    :catch_139
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v15, v22

    goto :goto_179

    :cond_13f
    if-eqz v12, :cond_158

    const/4 v12, 0x0

    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_144} :catch_139

    add-int v2, v22, v0

    :try_start_146
    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_148} :catch_153

    add-int/2addr v0, v2

    add-int/lit8 v2, v21, 0x1

    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move v15, v0

    move v13, v2

    goto/16 :goto_1f

    :catch_153
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move v15, v2

    goto :goto_179

    :cond_158
    :goto_158
    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_1f

    :cond_162
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    move/from16 v15, v22

    goto :goto_190

    :catch_16e
    move-exception v0

    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move-object v13, v5

    move-object v15, v6

    move/from16 v15, v22

    :goto_179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_190
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v15, v0

    iput v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v1, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x1

    const/16 v4, 0x32

    invoke-static {v0, v2, v1, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_17
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 13

    new-instance v6, Landroid/inputmethodservice/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .registers 4

    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    :cond_7
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_2b

    if-ltz p2, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_2b

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    :cond_2b
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getShiftKeyIndex()I
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .registers 15

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_59

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v3, :cond_2f

    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    if-lez v6, :cond_29

    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v8

    :cond_29
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2f
    add-int v6, v4, v5

    if-le v6, p1, :cond_56

    const/4 v6, 0x0

    sub-int v7, p1, v4

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v3, :cond_56

    iget-object v9, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, v9, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_59
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return-void
.end method

.method protected setHorizontalGap(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return-void
.end method

.method protected setKeyHeight(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method protected setKeyWidth(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return-void
.end method

.method public setShifted(Z)Z
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    if-eqz v4, :cond_d

    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    const/4 v0, 0x1

    return v0

    :cond_18
    return v2
.end method

.method protected setVerticalGap(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method
