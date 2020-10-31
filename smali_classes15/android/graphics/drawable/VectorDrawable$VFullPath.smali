.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath()J
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$4800()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath(J)J
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$4900(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    return-void
.end method

.method static synthetic access$4000()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4100()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4200()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4300()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4400()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4500()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4600()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$4700()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x30

    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_e

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    :cond_e
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z
    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->access$5200(J[BI)Z

    move-result v3

    if-eqz v3, :cond_1ab

    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    move/from16 v17, v2

    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v3

    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v21

    or-int v3, v3, v21

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9a

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v22, v8

    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V
    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    goto :goto_a0

    :cond_9a
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v22, v8

    :goto_a0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bb

    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    move v4, v7

    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v23, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V
    invoke-static {v7, v8, v3, v12}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    goto :goto_be

    :cond_bb
    move v4, v7

    move/from16 v23, v12

    :goto_be
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_ed

    instance-of v12, v7, Landroid/content/res/GradientColor;

    if-eqz v12, :cond_d6

    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    move-object v12, v7

    check-cast v12, Landroid/content/res/GradientColor;

    invoke-virtual {v12}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    move-object/from16 v18, v12

    goto :goto_e8

    :cond_d6
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v12

    if-nez v12, :cond_e6

    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v12

    if-eqz v12, :cond_e3

    goto :goto_e6

    :cond_e3
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_e8

    :cond_e6
    :goto_e6
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    :goto_e8
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    goto :goto_ef

    :cond_ed
    move/from16 v12, v23

    :goto_ef
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v8

    if-eqz v8, :cond_120

    move-object/from16 v37, v3

    instance-of v3, v8, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_108

    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    move-object v3, v8

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_11b

    :cond_108
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v3

    if-nez v3, :cond_119

    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_115

    goto :goto_119

    :cond_115
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_11b

    :cond_119
    :goto_119
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    :goto_11b
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    goto :goto_124

    :cond_120
    move-object/from16 v37, v3

    move/from16 v3, v22

    :goto_124
    move-object/from16 v22, v7

    move-object/from16 v38, v8

    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    const-wide/16 v23, 0x0

    if-eqz v18, :cond_13b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v25

    move/from16 v39, v3

    move-wide/from16 v40, v25

    move/from16 v25, v2

    move-wide/from16 v2, v40

    goto :goto_141

    :cond_13b
    move/from16 v25, v2

    move/from16 v39, v3

    move-wide/from16 v2, v23

    :goto_141
    # invokes: Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V
    invoke-static {v7, v8, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    if-eqz v19, :cond_14c

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v23

    :cond_14c
    move-wide/from16 v7, v23

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V
    invoke-static {v2, v3, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v7, 0x9

    invoke-virtual {v1, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v8, 0xb

    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/4 v10, 0x7

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v10, 0x5

    invoke-virtual {v1, v10, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v11, 0xd

    move/from16 v13, v25

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iget-wide v13, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v23, v13

    move/from16 v25, v6

    move/from16 v26, v39

    move/from16 v27, v8

    move/from16 v28, v12

    move/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v3

    move/from16 v35, v7

    move/from16 v36, v11

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V
    invoke-static/range {v23 .. v36}, Landroid/graphics/drawable/VectorDrawable;->access$5500(JFIFIFFFFFIII)V

    return-void

    :cond_1ab
    move/from16 v17, v2

    move/from16 v20, v3

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_10

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_10
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    if-eqz v0, :cond_47

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_3a

    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->access$5300(JJ)V

    goto :goto_47

    :cond_3a
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_47

    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V
    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_47
    :goto_47
    if-eqz v1, :cond_72

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_65

    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->access$5400(JJ)V

    goto :goto_72

    :cond_65
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_72

    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V
    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_72
    :goto_72
    return-void
.end method

.method public canApplyTheme()Z
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    if-nez v0, :cond_19

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_19
    :goto_19
    return v1
.end method

.method getFillAlpha()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6200(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getFillColor()I
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6100(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .registers 2

    const/16 v0, 0x108

    return v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method getPropertyIndex(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5900(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getStrokeColor()I
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetStrokeColor(J)I
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5600(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getStrokeWidth()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$5700(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getTrimPathEnd()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6600(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getTrimPathOffset()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6800(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method getTrimPathStart()F
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$6400(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_22

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_22

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onStateChange([I)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    if-eq v1, v4, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v3

    :goto_1c
    or-int/2addr v0, v5

    if-eq v1, v4, :cond_24

    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V
    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_24
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_44

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    if-eq v1, v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    or-int/2addr v0, v2

    if-eq v1, v4, :cond_44

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V
    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_44
    return v0
.end method

.method setFillAlpha(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6300(JF)V

    :cond_b
    return-void
.end method

.method setFillColor(I)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5100(JI)V

    :cond_e
    return-void
.end method

.method setStrokeAlpha(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6000(JF)V

    :cond_b
    return-void
.end method

.method setStrokeColor(I)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5000(JI)V

    :cond_e
    return-void
.end method

.method setStrokeWidth(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$5800(JF)V

    :cond_b
    return-void
.end method

.method setTrimPathEnd(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6700(JF)V

    :cond_b
    return-void
.end method

.method setTrimPathOffset(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6900(JF)V

    :cond_b
    return-void
.end method

.method setTrimPathStart(F)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    # invokes: Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$6500(JF)V

    :cond_b
    return-void
.end method
