.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .registers 10

    const-string/jumbo v0, "widthAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    const-string v0, "heightAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_13

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_2f

    :cond_13
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v4

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v5

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$700()Landroid/util/Range;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    :cond_2f
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blockWidth must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    const-string v0, "blockHeight must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5a

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v4, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    :cond_5a
    mul-int v4, v0, v1

    div-int/2addr v4, p1

    div-int/2addr v4, p2

    if-eq v4, v3, :cond_71

    invoke-static {p3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    int-to-long v2, v4

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    div-int v2, v1, p2

    div-int v3, v0, p1

    invoke-static {p5, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    :cond_71
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    return-void
.end method

.method private applyLevelLimits()V
    .registers 46

    move-object/from16 v12, p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x4

    iget-object v5, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v14, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v5, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, "video/avc"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Unsupported profile "

    const-string v9, "Unrecognized level "

    const-string v11, "Unrecognized profile "

    const/16 v16, 0x0

    const-string v7, " for "

    const-string v10, "VideoCapabilities"

    const/4 v8, 0x1

    move/from16 v23, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v5, :cond_31d

    const/16 v2, 0x63

    const-wide/16 v0, 0x5cd

    const v3, 0xfa00

    const/16 v5, 0x18c

    array-length v8, v14

    move/from16 v41, v3

    move v3, v2

    move/from16 v2, v41

    move/from16 v42, v16

    move/from16 v16, v4

    move-wide/from16 v43, v0

    move v1, v5

    move-wide/from16 v4, v43

    move/from16 v0, v42

    :goto_48
    if-ge v0, v8, :cond_2f3

    move/from16 v23, v8

    aget-object v8, v14, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v29, v13

    iget v13, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v12, 0x1

    if-eq v13, v12, :cond_24c

    const/4 v12, 0x2

    if-eq v13, v12, :cond_237

    sparse-switch v13, :sswitch_data_1472

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_8f
    const/high16 v24, 0xff0000

    const v25, 0x22000

    const v26, 0xc3500

    const v27, 0xaa000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_a8
    const v24, 0x7f8000

    const v25, 0x22000

    const v26, 0x75300

    const v27, 0xaa000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_c2
    const v24, 0x3fc000

    const v25, 0x22000

    const v26, 0x3a980

    const v27, 0xaa000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_dc
    const v24, 0x1fa400

    const v25, 0x9000

    const v26, 0x3a980

    const v27, 0x2d000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_f6
    const/high16 v24, 0xf0000

    const v25, 0x9000

    const v26, 0x3a980

    const v27, 0x2d000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_10f
    const/high16 v24, 0x90000

    const/16 v25, 0x5640

    const v26, 0x20f58

    const v27, 0x1af40

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_127
    const v24, 0x7f800

    const/16 v25, 0x2200

    const v26, 0xc350

    const v27, 0x8800

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_140
    const v24, 0x3c000

    const/16 v25, 0x2000

    const v26, 0xc350

    const v27, 0x8000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_159
    const v24, 0x3c000

    const/16 v25, 0x2000

    const/16 v26, 0x4e20

    const v27, 0x8000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_171
    const v24, 0x34bc0

    const/16 v25, 0x1400

    const/16 v26, 0x4e20

    const/16 v27, 0x5000

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_188
    const v24, 0x1a5e0

    const/16 v25, 0xe10

    const/16 v26, 0x36b0

    const/16 v27, 0x4650

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_19f
    const v24, 0x9e34

    const/16 v25, 0x654

    const/16 v26, 0x2710

    const/16 v27, 0x1fa4

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_1b6
    const/16 v24, 0x4f1a

    const/16 v25, 0x654

    const/16 v26, 0xfa0

    const/16 v27, 0x1fa4

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_1cc
    const/16 v24, 0x4d58

    const/16 v25, 0x318

    const/16 v26, 0xfa0

    const/16 v27, 0x1290

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_1e2
    const/16 v24, 0x2e68

    const/16 v25, 0x18c

    const/16 v26, 0x7d0

    const/16 v27, 0x948

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto/16 :goto_260

    :sswitch_1f8
    const/16 v24, 0x2e68

    const/16 v25, 0x18c

    const/16 v26, 0x300

    const/16 v27, 0x948

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto :goto_260

    :sswitch_20d
    const/16 v24, 0x1770

    const/16 v25, 0x18c

    const/16 v26, 0x180

    const/16 v27, 0x948

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto :goto_260

    :sswitch_222
    const/16 v24, 0xbb8

    const/16 v25, 0x18c

    const/16 v26, 0xc0

    const/16 v27, 0x384

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto :goto_260

    :cond_237
    const/16 v24, 0x5cd

    const/16 v25, 0x63

    const/16 v26, 0x80

    const/16 v27, 0x18c

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    goto :goto_260

    :cond_24c
    const/16 v24, 0x5cd

    const/16 v25, 0x63

    const/16 v26, 0x40

    const/16 v27, 0x18c

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v9, v26

    move/from16 v14, v27

    :goto_260
    move/from16 v26, v0

    iget v0, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v27, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2ca

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2ca

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2ac

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a9

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2a6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2ac

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2ac

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2ca

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_2a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    mul-int/lit16 v9, v9, 0x3e8

    goto :goto_2cc

    :cond_2a6
    mul-int/lit16 v9, v9, 0xbb8

    goto :goto_2cc

    :cond_2a9
    mul-int/lit16 v9, v9, 0x4e2

    goto :goto_2cc

    :cond_2ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x2

    const/16 v28, 0x0

    :cond_2ca
    mul-int/lit16 v9, v9, 0x3e8

    :goto_2cc
    if-eqz v28, :cond_2d2

    and-int/lit8 v0, v16, -0x5

    move/from16 v16, v0

    :cond_2d2
    int-to-long v0, v12

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v1, v27

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v26, 0x1

    move-object/from16 v12, p0

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v14, v25

    move-object/from16 v13, v29

    goto/16 :goto_48

    :cond_2f3
    move-object/from16 v29, v13

    move-object/from16 v25, v14

    mul-int/lit8 v0, v3, 0x8

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v10, v6

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v11, v1

    move v1, v10

    move v12, v2

    move v2, v10

    move v13, v3

    move-wide/from16 v17, v4

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move/from16 v23, v11

    move v2, v12

    move-object v12, v15

    move-wide/from16 v0, v17

    move-object/from16 v31, v25

    move-object/from16 v24, v29

    goto/16 :goto_145b

    :cond_31d
    move-object/from16 v24, v9

    move-object/from16 v29, v13

    move-object/from16 v25, v14

    const-string/jumbo v5, "video/mpeg2"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v8, "/"

    const-string v9, "Unrecognized profile/level "

    if-eqz v5, :cond_5e7

    const/16 v5, 0xb

    const/16 v13, 0x9

    const/16 v14, 0xf

    const/16 v2, 0x63

    const-wide/16 v0, 0x5cd

    const v3, 0xfa00

    move-wide/from16 v17, v0

    move-object/from16 v12, v25

    array-length v0, v12

    move/from16 v1, v16

    move/from16 v16, v4

    move v4, v2

    move v2, v13

    move/from16 v41, v5

    move v5, v3

    move/from16 v3, v41

    move-wide/from16 v42, v17

    move/from16 v17, v14

    move-wide/from16 v13, v42

    :goto_353
    if-ge v1, v0, :cond_5b3

    move/from16 v18, v0

    aget-object v0, v12, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object/from16 v31, v12

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eqz v12, :cond_50f

    move/from16 v32, v1

    const/4 v1, 0x1

    if-eq v12, v1, :cond_3f0

    const/4 v1, 0x2

    if-eq v12, v1, :cond_3b6

    const/4 v1, 0x3

    if-eq v12, v1, :cond_3b6

    const/4 v1, 0x4

    if-eq v12, v1, :cond_3b6

    const/4 v1, 0x5

    if-eq v12, v1, :cond_3b6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_3b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x2

    const/16 v30, 0x0

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_3f0
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eqz v1, :cond_4e7

    const/4 v12, 0x1

    if-eq v1, v12, :cond_4be

    const/4 v12, 0x2

    if-eq v1, v12, :cond_494

    const/4 v12, 0x3

    if-eq v1, v12, :cond_46a

    const/4 v12, 0x4

    if-eq v1, v12, :cond_440

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_440
    const/16 v25, 0x3c

    const/16 v27, 0x78

    const/16 v28, 0x44

    const v19, 0x77880

    const/16 v20, 0x1fe0

    const v24, 0x13880

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_46a
    const/16 v25, 0x3c

    const/16 v27, 0x78

    const/16 v28, 0x44

    const v19, 0x3bc40

    const/16 v20, 0x1fe0

    const v24, 0x13880

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_494
    const/16 v25, 0x3c

    const/16 v27, 0x5a

    const/16 v28, 0x44

    const v19, 0x2cd30

    const/16 v20, 0x17e8

    const v24, 0xea60

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_4be
    const/16 v25, 0x1e

    const/16 v27, 0x2d

    const/16 v28, 0x24

    const v19, 0x9e34

    const/16 v20, 0x654

    const/16 v24, 0x3a98

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_4e7
    const/16 v25, 0x1e

    const/16 v27, 0x16

    const/16 v28, 0x12

    const/16 v19, 0x2e68

    const/16 v20, 0x18c

    const/16 v24, 0xfa0

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto/16 :goto_57c

    :cond_50f
    move/from16 v32, v1

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v12, 0x1

    if-eq v1, v12, :cond_555

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    goto :goto_57c

    :cond_555
    const/16 v25, 0x1e

    const/16 v27, 0x2d

    const/16 v28, 0x24

    const v19, 0x9e34

    const/16 v20, 0x654

    const/16 v24, 0x3a98

    move/from16 v1, v19

    move/from16 v12, v20

    move-object/from16 v19, v0

    move/from16 v0, v24

    move/from16 v41, v25

    move-object/from16 v25, v6

    move/from16 v6, v41

    move/from16 v42, v27

    move-object/from16 v27, v8

    move/from16 v8, v42

    move/from16 v43, v28

    move-object/from16 v28, v9

    move/from16 v9, v43

    :goto_57c
    if-eqz v30, :cond_580

    and-int/lit8 v16, v16, -0x5

    :cond_580
    move-object/from16 v34, v10

    move-object/from16 v33, v11

    int-to-long v10, v1

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit16 v10, v0, 0x3e8

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v10, v17

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v1, v32, 0x1

    move/from16 v0, v18

    move-object/from16 v6, v25

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    goto/16 :goto_353

    :cond_5b3
    move-object/from16 v31, v12

    move/from16 v10, v17

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move v10, v2

    move v11, v3

    move v3, v4

    move v12, v4

    move/from16 v18, v5

    move-wide v4, v13

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v9, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-wide v0, v13

    move/from16 v2, v18

    move-object/from16 v24, v29

    move v13, v12

    move-object v12, v15

    goto/16 :goto_145b

    :cond_5e7
    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v34, v10

    move-object/from16 v33, v11

    move-object/from16 v31, v25

    move-object/from16 v9, p0

    move-object/from16 v25, v6

    const-string/jumbo v5, "video/mp4v-es"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a15

    const/16 v5, 0xb

    const/16 v8, 0x9

    const/16 v10, 0xf

    const/16 v2, 0x63

    const-wide/16 v0, 0x5cd

    const v3, 0xfa00

    move-object/from16 v12, v31

    array-length v11, v12

    move-wide v13, v0

    move/from16 v0, v16

    move/from16 v16, v4

    move v4, v5

    move v5, v8

    move v8, v3

    move v3, v10

    move v10, v2

    :goto_618
    if-ge v0, v11, :cond_9d9

    aget-object v1, v12, v0

    const/4 v2, 0x0

    const/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v38, v2

    const/4 v2, 0x1

    if-eq v6, v2, :cond_80d

    const/4 v2, 0x2

    if-eq v6, v2, :cond_7c9

    sparse-switch v6, :sswitch_data_14bc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v33

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v34

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move/from16 v33, v11

    move-object/from16 v11, v28

    move/from16 v9, v31

    move/from16 v2, v38

    move-object/from16 v28, v6

    move-object/from16 v31, v27

    move/from16 v6, v35

    move-object/from16 v27, v12

    move/from16 v12, v24

    move-object/from16 v24, v1

    move/from16 v1, v30

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :sswitch_674
    move-object/from16 v6, v33

    move-object/from16 v9, v34

    iget v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v33, v11

    const/4 v11, 0x1

    if-eq v2, v11, :cond_7a1

    const/4 v11, 0x4

    if-eq v2, v11, :cond_7a1

    const/16 v11, 0x8

    if-eq v2, v11, :cond_779

    const/16 v11, 0x10

    if-eq v2, v11, :cond_751

    const/16 v11, 0x18

    if-eq v2, v11, :cond_729

    const/16 v11, 0x20

    if-eq v2, v11, :cond_701

    const/16 v11, 0x80

    if-eq v2, v11, :cond_6d8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v28

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v6

    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v12

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move/from16 v2, v38

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_6d8
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0x2d

    const/16 v35, 0x24

    const v2, 0xbdd8

    const/16 v24, 0x654

    const/16 v30, 0x1f40

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_701
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0x2c

    const/16 v35, 0x24

    const/16 v2, 0x5cd0

    const/16 v24, 0x318

    const/16 v30, 0xbb8

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_729
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0x16

    const/16 v35, 0x12

    const/16 v2, 0x2e68

    const/16 v24, 0x18c

    const/16 v30, 0x5dc

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_751
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0x16

    const/16 v35, 0x12

    const/16 v2, 0x2e68

    const/16 v24, 0x18c

    const/16 v30, 0x300

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_779
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0x16

    const/16 v35, 0x12

    const/16 v2, 0x1734

    const/16 v24, 0x18c

    const/16 v30, 0x180

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_7a1
    move-object/from16 v11, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v12

    const/16 v31, 0x1e

    const/16 v32, 0xb

    const/16 v35, 0x9

    const/16 v2, 0xb9a

    const/16 v24, 0x63

    const/16 v30, 0x80

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_7c9
    :sswitch_7c9
    move-object/from16 v6, v27

    move-object/from16 v9, v34

    move-object/from16 v27, v12

    move-object/from16 v41, v33

    move/from16 v33, v11

    move-object/from16 v11, v28

    move-object/from16 v28, v41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v25

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x2

    const/16 v37, 0x0

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move/from16 v2, v38

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_80d
    move-object/from16 v6, v27

    move-object/from16 v9, v34

    move-object/from16 v27, v12

    move-object/from16 v41, v33

    move/from16 v33, v11

    move-object/from16 v11, v28

    move-object/from16 v28, v41

    iget v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v12, 0x1

    if-eq v2, v12, :cond_957

    const/4 v12, 0x2

    if-eq v2, v12, :cond_936

    const/4 v12, 0x4

    if-eq v2, v12, :cond_917

    const/16 v12, 0x8

    if-eq v2, v12, :cond_8f7

    const/16 v12, 0x10

    if-eq v2, v12, :cond_8d7

    const/16 v12, 0x40

    if-eq v2, v12, :cond_8b6

    const/16 v12, 0x80

    if-eq v2, v12, :cond_895

    const/16 v12, 0x100

    if-eq v2, v12, :cond_874

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move/from16 v2, v38

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_874
    const/16 v31, 0x1e

    const/16 v32, 0x50

    const/16 v35, 0x2d

    const v2, 0x1a5e0

    const/16 v24, 0xe10

    const/16 v30, 0x2ee0

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_895
    const/16 v31, 0x1e

    const/16 v32, 0x2d

    const/16 v35, 0x24

    const v2, 0x9e34

    const/16 v24, 0x654

    const/16 v30, 0x1f40

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_8b6
    const/16 v31, 0x1e

    const/16 v32, 0x28

    const/16 v35, 0x1e

    const v2, 0x8ca0

    const/16 v24, 0x4b0

    const/16 v30, 0xfa0

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_8d7
    const/16 v31, 0x1e

    const/16 v32, 0x16

    const/16 v35, 0x12

    const/16 v2, 0x2e68

    const/16 v24, 0x18c

    const/16 v30, 0x180

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_8f7
    const/16 v31, 0x1e

    const/16 v32, 0x16

    const/16 v35, 0x12

    const/16 v2, 0x1734

    const/16 v24, 0x18c

    const/16 v30, 0x80

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto/16 :goto_977

    :cond_917
    const/16 v31, 0x1e

    const/16 v32, 0xb

    const/16 v35, 0x9

    const/16 v2, 0x5cd

    const/16 v24, 0x63

    const/16 v30, 0x40

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto :goto_977

    :cond_936
    const/16 v36, 0x1

    const/16 v31, 0xf

    const/16 v32, 0xb

    const/16 v35, 0x9

    const/16 v2, 0x5cd

    const/16 v24, 0x63

    const/16 v30, 0x80

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    goto :goto_977

    :cond_957
    const/16 v36, 0x1

    const/16 v31, 0xf

    const/16 v32, 0xb

    const/16 v35, 0x9

    const/16 v2, 0x5cd

    const/16 v24, 0x63

    const/16 v30, 0x40

    move-object/from16 v34, v9

    move/from16 v12, v24

    move/from16 v9, v31

    move-object/from16 v24, v1

    move-object/from16 v31, v6

    move/from16 v1, v30

    move/from16 v6, v35

    move-object/from16 v30, v7

    move/from16 v7, v32

    :goto_977
    if-eqz v37, :cond_97b

    and-int/lit8 v16, v16, -0x5

    :cond_97b
    move/from16 v32, v5

    move/from16 v35, v6

    int-to-long v5, v2

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    mul-int/lit16 v5, v1, 0x3e8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v36, :cond_9a1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, v32

    move/from16 v6, v35

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_9c5

    :cond_9a1
    move/from16 v5, v32

    move/from16 v6, v35

    move/from16 v32, v1

    mul-int/lit8 v1, v12, 0x2

    move/from16 v35, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x3c

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v4

    move v4, v2

    :goto_9c5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, p0

    move-object/from16 v12, v27

    move-object/from16 v7, v30

    move-object/from16 v27, v31

    move-object/from16 v41, v28

    move-object/from16 v28, v11

    move/from16 v11, v33

    move-object/from16 v33, v41

    goto/16 :goto_618

    :cond_9d9
    move-object/from16 v27, v12

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v12, v3

    move v3, v10

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide v4, v13

    move/from16 v19, v8

    move v8, v9

    move-wide/from16 v24, v13

    move-object/from16 v13, p0

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    iget-object v0, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move v13, v10

    move-object v12, v15

    move/from16 v2, v19

    move-wide/from16 v0, v24

    move-object/from16 v31, v27

    move-object/from16 v24, v29

    goto/16 :goto_145b

    :cond_a15
    move-object/from16 v30, v7

    move-object v13, v9

    move-object/from16 v11, v28

    move-object/from16 v28, v33

    move-object/from16 v41, v31

    move-object/from16 v31, v27

    move-object/from16 v27, v41

    const-string/jumbo v5, "video/3gpp"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2a

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0xf

    move v8, v5

    move v9, v6

    const/16 v10, 0x10

    const/16 v2, 0x63

    const-wide/16 v0, 0x5cd

    const v3, 0xfa00

    move-object/from16 v12, v27

    array-length v14, v12

    move/from16 v24, v4

    move v4, v7

    move/from16 v25, v10

    move v7, v5

    move v5, v6

    move v6, v3

    move v3, v8

    move v8, v2

    move v2, v9

    move-wide v9, v0

    move/from16 v0, v16

    :goto_a4d
    if-ge v0, v14, :cond_ccc

    aget-object v1, v12, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    move/from16 v36, v3

    move/from16 v37, v2

    const/16 v38, 0x0

    move/from16 v39, v14

    iget v14, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move-object/from16 v40, v12

    const/4 v12, 0x1

    if-eq v14, v12, :cond_bfe

    const/4 v12, 0x2

    if-eq v14, v12, :cond_bd7

    const/4 v12, 0x4

    if-eq v14, v12, :cond_bb0

    const/16 v12, 0x8

    if-eq v14, v12, :cond_b88

    const/16 v12, 0x10

    if-eq v14, v12, :cond_b49

    const/16 v12, 0x20

    if-eq v14, v12, :cond_b1c

    const/16 v12, 0x40

    if-eq v14, v12, :cond_aef

    const/16 v12, 0x80

    if-eq v14, v12, :cond_ac2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v11

    iget v11, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v30

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v30, v14

    move-object/from16 v14, v34

    invoke-static {v14, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v24, v24, 0x1

    move/from16 v34, v0

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_ac2
    move-object/from16 v14, v34

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/4 v12, 0x4

    const/16 v32, 0x3c

    const/16 v33, 0x2d

    const/16 v35, 0x24

    const/16 v27, 0x100

    mul-int v25, v33, v35

    mul-int/lit8 v26, v25, 0x32

    move/from16 v34, v0

    move/from16 v25, v12

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_aef
    move-object/from16 v14, v34

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/4 v12, 0x4

    const/16 v32, 0x3c

    const/16 v33, 0x2d

    const/16 v35, 0x12

    const/16 v27, 0x80

    mul-int v25, v33, v35

    mul-int/lit8 v26, v25, 0x32

    move/from16 v34, v0

    move/from16 v25, v12

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_b1c
    move-object/from16 v14, v34

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/4 v12, 0x4

    const/16 v32, 0x3c

    const/16 v33, 0x16

    const/16 v35, 0x12

    const/16 v27, 0x40

    mul-int v25, v33, v35

    mul-int/lit8 v26, v25, 0x32

    move/from16 v34, v0

    move/from16 v25, v12

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_b49
    move-object/from16 v14, v34

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v34, v0

    const/4 v0, 0x1

    if-eq v12, v0, :cond_b63

    iget v0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v12, 0x4

    if-ne v0, v12, :cond_b60

    goto :goto_b63

    :cond_b60
    move/from16 v0, v16

    goto :goto_b64

    :cond_b63
    :goto_b63
    const/4 v0, 0x1

    :goto_b64
    move/from16 v38, v0

    if-nez v38, :cond_b6e

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v25, 0x4

    :cond_b6e
    const/16 v32, 0xf

    const/16 v33, 0xb

    const/16 v35, 0x9

    const/16 v27, 0x2

    mul-int v0, v33, v35

    mul-int v26, v0, v32

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_b88
    move-object/from16 v14, v34

    move/from16 v34, v0

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v38, 0x1

    const/16 v32, 0x1e

    const/16 v33, 0x16

    const/16 v35, 0x12

    const/16 v27, 0x20

    mul-int v0, v33, v35

    mul-int v26, v0, v32

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto/16 :goto_c24

    :cond_bb0
    move-object/from16 v14, v34

    move/from16 v34, v0

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v38, 0x1

    const/16 v32, 0x1e

    const/16 v33, 0x16

    const/16 v35, 0x12

    const/16 v27, 0x6

    mul-int v0, v33, v35

    mul-int v26, v0, v32

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto :goto_c24

    :cond_bd7
    move-object/from16 v14, v34

    move/from16 v34, v0

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v38, 0x1

    const/16 v32, 0x1e

    const/16 v33, 0x16

    const/16 v35, 0x12

    const/16 v27, 0x2

    mul-int v0, v33, v35

    mul-int/lit8 v26, v0, 0xf

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    goto :goto_c24

    :cond_bfe
    move-object/from16 v14, v34

    move/from16 v34, v0

    move-object/from16 v41, v31

    move-object/from16 v31, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v41

    const/16 v38, 0x1

    const/16 v32, 0xf

    const/16 v33, 0xb

    const/16 v35, 0x9

    const/16 v27, 0x1

    mul-int v0, v33, v35

    mul-int v26, v0, v32

    move/from16 v0, v26

    move/from16 v12, v32

    move/from16 v26, v2

    move/from16 v32, v3

    move/from16 v2, v33

    move/from16 v3, v35

    :goto_c24
    move/from16 v33, v4

    iget v4, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v35, v12

    const/4 v12, 0x1

    if-eq v4, v12, :cond_c6a

    const/4 v12, 0x2

    if-eq v4, v12, :cond_c6a

    const/4 v12, 0x4

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x8

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x10

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x20

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x40

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x80

    if-eq v4, v12, :cond_c6a

    const/16 v12, 0x100

    if-eq v4, v12, :cond_c6a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v28

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v24, v24, 0x1

    goto :goto_c6b

    :cond_c6a
    nop

    :goto_c6b
    if-eqz v38, :cond_c76

    const/16 v36, 0xb

    const/16 v37, 0x9

    move/from16 v4, v36

    move/from16 v12, v37

    goto :goto_c7d

    :cond_c76
    const/4 v4, 0x1

    iput-boolean v4, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    move/from16 v4, v36

    move/from16 v12, v37

    :goto_c7d
    and-int/lit8 v24, v24, -0x5

    move-object/from16 v37, v14

    move-object/from16 v36, v15

    int-to-long v14, v0

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    mul-int v14, v2, v3

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v14, 0xfa00

    mul-int v14, v14, v27

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v14, v33

    move/from16 v15, v35

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v33, v3

    move/from16 v3, v32

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v32, v2

    move/from16 v2, v26

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v34, 0x1

    move v4, v14

    move-object/from16 v15, v36

    move-object/from16 v34, v37

    move/from16 v14, v39

    move-object/from16 v12, v40

    move-object/from16 v41, v30

    move-object/from16 v30, v11

    move-object/from16 v11, v31

    move-object/from16 v31, v41

    goto/16 :goto_a4d

    :cond_ccc
    move v14, v4

    move-object/from16 v40, v12

    move-object/from16 v36, v15

    iget-boolean v0, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v0, :cond_ced

    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0xb

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4}, Landroid/util/Rational;-><init>(II)V

    new-instance v1, Landroid/util/Rational;

    const/16 v4, 0xb

    const/16 v11, 0x9

    invoke-direct {v1, v4, v11}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_ced
    const/16 v11, 0x10

    const/16 v12, 0x10

    move-object/from16 v0, p0

    move v1, v3

    move v15, v2

    move/from16 v16, v3

    move v3, v7

    move v4, v5

    move/from16 v17, v5

    move v5, v8

    move/from16 v19, v6

    move/from16 v18, v7

    move-wide v6, v9

    move/from16 v20, v8

    move v8, v11

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v25

    move/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, v29

    invoke-static {v10, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v13, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move/from16 v2, v19

    move/from16 v13, v20

    move-wide/from16 v0, v21

    move/from16 v16, v24

    move-object/from16 v12, v36

    move-object/from16 v31, v40

    move-object/from16 v24, v10

    goto/16 :goto_145b

    :cond_d2a
    move-object/from16 v36, v15

    move-object/from16 v40, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v37, v34

    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    move-object/from16 v12, v36

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dde

    const v14, 0x7fffffff

    const-wide/32 v17, 0x7fffffff

    const v15, 0x5f5e100

    move-object/from16 v9, v40

    array-length v0, v9

    move/from16 v1, v16

    move/from16 v16, v4

    :goto_d4f
    if-ge v1, v0, :cond_db9

    aget-object v2, v9, v1

    iget v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d83

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d83

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d83

    const/16 v4, 0x8

    if-eq v3, v4, :cond_d83

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v37

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    goto :goto_d88

    :cond_d83
    move-object/from16 v5, v24

    move-object/from16 v6, v37

    nop

    :goto_d88
    iget v3, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_dac

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v28

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    goto :goto_dae

    :cond_dac
    move-object/from16 v7, v28

    :goto_dae
    and-int/lit8 v16, v16, -0x5

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v24, v5

    move-object/from16 v37, v6

    move-object/from16 v28, v7

    goto :goto_d4f

    :cond_db9
    const/16 v11, 0x10

    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move v3, v14

    move-wide/from16 v4, v17

    move/from16 v24, v14

    move-object v14, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v31, v14

    move v2, v15

    move-wide/from16 v0, v17

    move/from16 v13, v24

    move-object/from16 v24, v10

    goto/16 :goto_145b

    :cond_dde
    move-object/from16 v5, v24

    move-object/from16 v7, v28

    move-object/from16 v6, v37

    move-object/from16 v14, v40

    const-string/jumbo v8, "video/x-vnd.on2.vp9"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1069

    const-wide/32 v0, 0xca800

    const v2, 0x9000

    const v3, 0x30d40

    const/16 v8, 0x200

    array-length v9, v14

    move/from16 v41, v8

    move v8, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v41

    :goto_e04
    if-ge v3, v9, :cond_1035

    aget-object v15, v14, v3

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v29, v9

    iget v9, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v13, 0x1

    if-eq v9, v13, :cond_fb5

    const/4 v13, 0x2

    if-eq v9, v13, :cond_f9a

    sparse-switch v9, :sswitch_data_14f6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_e4b
    const-wide v24, 0x118800000L

    const/high16 v26, 0x2200000

    const v27, 0x75300

    const/16 v28, 0x41c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_e69
    const-wide v24, 0x8c400000L

    const/high16 v26, 0x2200000

    const v27, 0x3a980

    const/16 v28, 0x41c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_e87
    const-wide/32 v24, 0x46200000

    const/high16 v26, 0x2200000

    const v27, 0x2bf20

    const/16 v28, 0x41c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_ea3
    const-wide/32 v24, 0x46200000

    const/high16 v26, 0x880000

    const v27, 0x2bf20

    const/16 v28, 0x20c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_ebf
    const-wide/32 v24, 0x23100000

    const/high16 v26, 0x880000

    const v27, 0x1d4c0

    const/16 v28, 0x20c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_edb
    const-wide/32 v24, 0x12980000

    const/high16 v26, 0x880000

    const v27, 0xea60

    const/16 v28, 0x20c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_ef7
    const-wide/32 v24, 0x9900000

    const/high16 v26, 0x220000

    const/16 v27, 0x7530

    const/16 v28, 0x1040

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_f12
    const-wide/32 v24, 0x4fb0000

    const/high16 v26, 0x220000

    const/16 v27, 0x4650

    const/16 v28, 0x1040

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_f2d
    const-wide/32 v24, 0x2328000

    const/high16 v26, 0xf0000

    const/16 v27, 0x2ee0

    const/16 v28, 0xac0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_f48
    const-wide/32 v24, 0x13c6800

    const v26, 0x87000

    const/16 v27, 0x1c20

    const/16 v28, 0x800

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto/16 :goto_fcf

    :sswitch_f64
    const-wide/32 v24, 0x8ca000

    const v26, 0x3c000

    const/16 v27, 0xe10

    const/16 v28, 0x540

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto :goto_fcf

    :sswitch_f7f
    const-wide/32 v24, 0x465000

    const v26, 0x1e000

    const/16 v27, 0x708

    const/16 v28, 0x3c0

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto :goto_fcf

    :cond_f9a
    const-wide/32 v24, 0x2a3000

    const v26, 0x12000

    const/16 v27, 0x320

    const/16 v28, 0x300

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    goto :goto_fcf

    :cond_fb5
    const-wide/32 v24, 0xca800

    const v26, 0x9000

    const/16 v27, 0xc8

    const/16 v28, 0x200

    move-object/from16 v31, v14

    move/from16 v13, v26

    move/from16 v14, v28

    move-wide/from16 v41, v24

    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-wide/from16 v9, v41

    move/from16 v5, v27

    :goto_fcf
    move/from16 v26, v3

    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v27, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1010

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1010

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1010

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1010

    const/16 v4, 0x1000

    if-eq v3, v4, :cond_1010

    const/16 v4, 0x2000

    if-eq v3, v4, :cond_1010

    const/16 v4, 0x4000

    if-eq v3, v4, :cond_1010

    const v4, 0x8000

    if-eq v3, v4, :cond_1010

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    goto :goto_1011

    :cond_1010
    nop

    :goto_1011
    and-int/lit8 v16, v16, -0x5

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit16 v3, v5, 0x3e8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v4, v27

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v26, 0x1

    move-object/from16 v13, p0

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move/from16 v9, v29

    move-object/from16 v14, v31

    goto/16 :goto_e04

    :cond_1035
    move-object/from16 v24, v10

    move-object/from16 v31, v14

    const/16 v10, 0x8

    const/16 v3, 0x8

    invoke-static {v4, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v11

    const/16 v3, 0x40

    invoke-static {v2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v13

    const-wide/16 v2, 0x40

    invoke-static {v0, v1, v2, v3}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v14

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v11

    move v3, v13

    move/from16 v18, v4

    move-wide v4, v14

    move/from16 v19, v8

    move v8, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-wide v0, v14

    move/from16 v2, v19

    goto/16 :goto_145b

    :cond_1069
    move-object/from16 v25, v5

    move-object/from16 v24, v10

    move-object/from16 v31, v14

    const-string/jumbo v5, "video/hevc"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11e7

    const/16 v2, 0x240

    mul-int/lit8 v5, v2, 0xf

    int-to-long v0, v5

    const v3, 0x1f400

    move-object/from16 v10, v31

    array-length v5, v10

    move-wide v13, v0

    move v15, v2

    move v9, v3

    move/from16 v0, v16

    move/from16 v16, v4

    :goto_108a
    if-ge v0, v5, :cond_11c5

    aget-object v1, v10, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-wide/from16 v26, v2

    iget v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1167

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1167

    sparse-switch v2, :sswitch_data_1528

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    move-wide/from16 v2, v26

    goto/16 :goto_116e

    :sswitch_10c1
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x2200000

    const v8, 0xc3500

    goto/16 :goto_116e

    :sswitch_10ca
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x2200000

    const v8, 0x3a980

    goto/16 :goto_116e

    :sswitch_10d3
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x2200000

    const v8, 0x75300

    goto/16 :goto_116e

    :sswitch_10dc
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x2200000

    const v8, 0x1d4c0

    goto/16 :goto_116e

    :sswitch_10e5
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x2200000

    const v8, 0x3a980

    goto/16 :goto_116e

    :sswitch_10ee
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x2200000

    const v8, 0xea60

    goto/16 :goto_116e

    :sswitch_10f7
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x880000

    const v8, 0x3a980

    goto/16 :goto_116e

    :sswitch_1100
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    const/high16 v4, 0x880000

    const v8, 0xea60

    goto/16 :goto_116e

    :sswitch_1109
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x880000

    const v8, 0x27100

    goto :goto_116e

    :sswitch_1111
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x880000

    const v8, 0x9c40

    goto :goto_116e

    :sswitch_1119
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x880000

    const v8, 0x186a0

    goto :goto_116e

    :sswitch_1121
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x880000

    const/16 v8, 0x61a8

    goto :goto_116e

    :sswitch_1128
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x220000

    const v8, 0xc350

    goto :goto_116e

    :sswitch_1130
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    const/high16 v4, 0x220000

    const/16 v8, 0x4e20

    goto :goto_116e

    :sswitch_1137
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x220000

    const/16 v8, 0x7530

    goto :goto_116e

    :sswitch_113e
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const/high16 v4, 0x220000

    const/16 v8, 0x2ee0

    goto :goto_116e

    :sswitch_1145
    const-wide v2, 0x4040e00000000000L    # 33.75

    const/high16 v4, 0xf0000

    const/16 v8, 0x2710

    goto :goto_116e

    :sswitch_114f
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x87000

    const/16 v8, 0x1770

    goto :goto_116e

    :sswitch_1157
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x3c000

    const/16 v8, 0xbb8

    goto :goto_116e

    :sswitch_115f
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const v4, 0x1e000

    const/16 v8, 0x5dc

    goto :goto_116e

    :cond_1167
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const v4, 0x9000

    const/16 v8, 0x80

    :goto_116e
    move/from16 v17, v5

    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move-object/from16 v31, v10

    const/4 v10, 0x1

    if-eq v5, v10, :cond_11a2

    const/4 v10, 0x2

    if-eq v5, v10, :cond_11a2

    const/4 v10, 0x4

    if-eq v5, v10, :cond_11a2

    const/16 v10, 0x1000

    if-eq v5, v10, :cond_11a2

    const/16 v10, 0x2000

    if-eq v5, v10, :cond_11a2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v16, v16, 0x1

    goto :goto_11a3

    :cond_11a2
    nop

    :goto_11a3
    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v16, v16, -0x5

    move-object/from16 v34, v6

    int-to-double v5, v4

    mul-double/2addr v5, v2

    double-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    mul-int/lit16 v5, v8, 0x3e8

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v17

    move-object/from16 v10, v31

    move-object/from16 v6, v34

    goto/16 :goto_108a

    :cond_11c5
    move-object/from16 v31, v10

    mul-int/lit8 v0, v15, 0x8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v10, v0

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move v2, v10

    move v3, v15

    move-wide v4, v13

    move/from16 v17, v9

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-wide v0, v13

    move v13, v15

    move/from16 v2, v17

    goto/16 :goto_145b

    :cond_11e7
    move-object/from16 v34, v6

    move-object/from16 v5, v25

    const-string/jumbo v6, "video/av01"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_143d

    const-wide/32 v0, 0xca800

    const v2, 0x9000

    const v3, 0x30d40

    const/16 v6, 0x200

    move-object/from16 v10, v31

    array-length v8, v10

    move v13, v3

    move v14, v4

    move v15, v6

    move/from16 v3, v16

    :goto_1207
    if-ge v3, v8, :cond_140e

    aget-object v4, v10, v3

    const-wide/16 v25, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move/from16 v21, v6

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v27, v8

    const/4 v8, 0x1

    if-eq v6, v8, :cond_13a0

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1387

    sparse-switch v6, :sswitch_data_158a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, v34

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v14, v14, 0x1

    move-object/from16 v31, v10

    move/from16 v6, v21

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_124e
    move-object/from16 v8, v34

    const-wide v25, 0x118800000L

    const/high16 v6, 0x2200000

    const v9, 0x27100

    const/16 v16, 0x4000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_126a
    move-object/from16 v8, v34

    const-wide v25, 0x105090000L

    const/high16 v6, 0x2200000

    const v9, 0x27100

    const/16 v16, 0x4000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_1286
    move-object/from16 v8, v34

    const-wide v25, 0x82848000L

    const/high16 v6, 0x2200000

    const v9, 0x186a0

    const/16 v16, 0x4000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_12a2
    move-object/from16 v8, v34

    const-wide/32 v25, 0x46200000

    const/high16 v6, 0x2200000

    const v9, 0xea60

    const/16 v16, 0x4000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_12bc
    move-object/from16 v8, v34

    const-wide/32 v25, 0x46200000

    const/high16 v6, 0x880000

    const v9, 0xea60

    const/16 v16, 0x2000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_12d6
    move-object/from16 v8, v34

    const-wide/32 v25, 0x41424000

    const/high16 v6, 0x880000

    const v9, 0xea60

    const/16 v16, 0x2000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_12f0
    move-object/from16 v8, v34

    const-wide/32 v25, 0x20a12000

    const/high16 v6, 0x880000

    const v9, 0x9c40

    const/16 v16, 0x2000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_130a
    move-object/from16 v8, v34

    const-wide/32 v25, 0x10509000

    const/high16 v6, 0x880000

    const/16 v9, 0x7530

    const/16 v16, 0x2000

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_1323
    move-object/from16 v8, v34

    const-wide/32 v25, 0x9480000

    const/high16 v6, 0x240000

    const/16 v9, 0x4e20

    const/16 v16, 0x1800

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_133c
    move-object/from16 v8, v34

    const-wide/32 v25, 0x4a40000

    const/high16 v6, 0x240000

    const/16 v9, 0x2ee0

    const/16 v16, 0x1800

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto/16 :goto_13b8

    :sswitch_1355
    move-object/from16 v8, v34

    const-wide/32 v25, 0x2616960

    const v6, 0x104040

    const/16 v9, 0x2710

    const/16 v16, 0x1580

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto :goto_13b8

    :sswitch_136e
    move-object/from16 v8, v34

    const-wide/32 v25, 0x17d0180

    const v6, 0xa2900

    const/16 v9, 0x1770

    const/16 v16, 0x1100

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto :goto_13b8

    :cond_1387
    :sswitch_1387
    move-object/from16 v8, v34

    const-wide/32 v25, 0x9f8580

    const v6, 0x44100

    const/16 v9, 0xbb8

    const/16 v16, 0xb00

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    goto :goto_13b8

    :cond_13a0
    move-object/from16 v8, v34

    const-wide/32 v25, 0x546000

    const v6, 0x24000

    const/16 v9, 0x5dc

    const/16 v16, 0x800

    move-object/from16 v31, v10

    move-wide/from16 v41, v25

    move-object/from16 v25, v5

    move/from16 v5, v16

    move/from16 v16, v9

    move-wide/from16 v9, v41

    :goto_13b8
    move/from16 v21, v3

    iget v3, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v26, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_13e9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_13e9

    const/16 v5, 0x1000

    if-eq v3, v5, :cond_13e9

    const/16 v5, 0x2000

    if-eq v3, v5, :cond_13e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v14, v14, 0x1

    goto :goto_13ea

    :cond_13e9
    nop

    :goto_13ea
    and-int/lit8 v14, v14, -0x5

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, v16

    mul-int/lit16 v5, v3, 0x3e8

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v5, v26

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v34, v8

    move-object/from16 v5, v25

    move/from16 v8, v27

    move-object/from16 v10, v31

    goto/16 :goto_1207

    :cond_140e
    move-object/from16 v31, v10

    const/16 v10, 0x8

    const/16 v3, 0x8

    invoke-static {v15, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v11

    const/16 v3, 0x40

    invoke-static {v2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v16

    const-wide/16 v2, 0x40

    invoke-static {v0, v1, v2, v3}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v17

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v11

    move/from16 v3, v16

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move v2, v13

    move/from16 v13, v16

    move-wide/from16 v0, v17

    move/from16 v16, v14

    goto :goto_145b

    :cond_143d
    move-object/from16 v8, v34

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0xfa00

    const/4 v5, 0x2

    or-int/lit8 v16, v4, 0x2

    move v13, v2

    move v2, v3

    :goto_145b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    move-object/from16 v4, p0

    iput-object v3, v4, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    iget-object v3, v4, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v5, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v5, v5, v16

    iput v5, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    return-void

    :sswitch_data_1472
    .sparse-switch
        0x4 -> :sswitch_222
        0x8 -> :sswitch_20d
        0x10 -> :sswitch_1f8
        0x20 -> :sswitch_1e2
        0x40 -> :sswitch_1cc
        0x80 -> :sswitch_1b6
        0x100 -> :sswitch_19f
        0x200 -> :sswitch_188
        0x400 -> :sswitch_171
        0x800 -> :sswitch_159
        0x1000 -> :sswitch_140
        0x2000 -> :sswitch_127
        0x4000 -> :sswitch_10f
        0x8000 -> :sswitch_f6
        0x10000 -> :sswitch_dc
        0x20000 -> :sswitch_c2
        0x40000 -> :sswitch_a8
        0x80000 -> :sswitch_8f
    .end sparse-switch

    :sswitch_data_14bc
    .sparse-switch
        0x4 -> :sswitch_7c9
        0x8 -> :sswitch_7c9
        0x10 -> :sswitch_7c9
        0x20 -> :sswitch_7c9
        0x40 -> :sswitch_7c9
        0x80 -> :sswitch_7c9
        0x100 -> :sswitch_7c9
        0x200 -> :sswitch_7c9
        0x400 -> :sswitch_7c9
        0x800 -> :sswitch_7c9
        0x1000 -> :sswitch_7c9
        0x2000 -> :sswitch_7c9
        0x4000 -> :sswitch_7c9
        0x8000 -> :sswitch_674
    .end sparse-switch

    :sswitch_data_14f6
    .sparse-switch
        0x4 -> :sswitch_f7f
        0x8 -> :sswitch_f64
        0x10 -> :sswitch_f48
        0x20 -> :sswitch_f2d
        0x40 -> :sswitch_f12
        0x80 -> :sswitch_ef7
        0x100 -> :sswitch_edb
        0x200 -> :sswitch_ebf
        0x400 -> :sswitch_ea3
        0x800 -> :sswitch_e87
        0x1000 -> :sswitch_e69
        0x2000 -> :sswitch_e4b
    .end sparse-switch

    :sswitch_data_1528
    .sparse-switch
        0x4 -> :sswitch_115f
        0x8 -> :sswitch_115f
        0x10 -> :sswitch_1157
        0x20 -> :sswitch_1157
        0x40 -> :sswitch_114f
        0x80 -> :sswitch_114f
        0x100 -> :sswitch_1145
        0x200 -> :sswitch_1145
        0x400 -> :sswitch_113e
        0x800 -> :sswitch_1137
        0x1000 -> :sswitch_1130
        0x2000 -> :sswitch_1128
        0x4000 -> :sswitch_1121
        0x8000 -> :sswitch_1119
        0x10000 -> :sswitch_1111
        0x20000 -> :sswitch_1109
        0x40000 -> :sswitch_1100
        0x80000 -> :sswitch_10f7
        0x100000 -> :sswitch_10ee
        0x200000 -> :sswitch_10e5
        0x400000 -> :sswitch_10dc
        0x800000 -> :sswitch_10d3
        0x1000000 -> :sswitch_10ca
        0x2000000 -> :sswitch_10c1
    .end sparse-switch

    :sswitch_data_158a
    .sparse-switch
        0x4 -> :sswitch_1387
        0x8 -> :sswitch_1387
        0x10 -> :sswitch_136e
        0x20 -> :sswitch_1355
        0x40 -> :sswitch_1355
        0x80 -> :sswitch_1355
        0x100 -> :sswitch_133c
        0x200 -> :sswitch_1323
        0x400 -> :sswitch_1323
        0x800 -> :sswitch_1323
        0x1000 -> :sswitch_130a
        0x2000 -> :sswitch_12f0
        0x4000 -> :sswitch_12d6
        0x8000 -> :sswitch_12bc
        0x10000 -> :sswitch_12a2
        0x20000 -> :sswitch_1286
        0x40000 -> :sswitch_126a
        0x80000 -> :sswitch_124e
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .registers 23

    move-object v6, p0

    move v7, p3

    move v8, p4

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct {p0, v9, v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, v0, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, p3, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v1, v1, p8

    move v2, p1

    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v3, p8

    div-int v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v1, v1, p9

    move v3, p2

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v4, p9

    div-int v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .registers 22

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 3

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .registers 20

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "block-size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    const-string v4, "block-count-range"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_2e

    move v7, v6

    goto :goto_39

    :cond_2e
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/2addr v7, v2

    :goto_39
    nop

    const-string v8, "blocks-per-second-range"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    if-nez v8, :cond_49

    const-wide/16 v9, 0x0

    goto :goto_55

    :cond_49
    int-to-long v9, v2

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long/2addr v9, v11

    :goto_55
    nop

    const-string/jumbo v11, "size-range"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    if-nez v11, :cond_65

    move v12, v6

    goto :goto_85

    :cond_65
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_85
    const-string v13, "bitrate-range"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    if-nez v5, :cond_92

    goto :goto_a2

    :cond_92
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v13, 0x3e8

    invoke-static {v6, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    :goto_a2
    const-wide/32 v13, 0xca800

    cmp-long v13, v9, v13

    const/16 v14, 0x200

    if-gtz v13, :cond_b8

    const v13, 0x9000

    if-gt v7, v13, :cond_b8

    const/16 v13, 0xc8

    if-gt v6, v13, :cond_b8

    if-gt v12, v14, :cond_b8

    const/4 v3, 0x1

    return v3

    :cond_b8
    const-wide/32 v15, 0x2a3000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_ce

    const v13, 0x12000

    if-gt v7, v13, :cond_ce

    const/16 v13, 0x320

    if-gt v6, v13, :cond_ce

    const/16 v13, 0x300

    if-gt v12, v13, :cond_ce

    const/4 v3, 0x2

    return v3

    :cond_ce
    const-wide/32 v15, 0x465000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_e4

    const v13, 0x1e000

    if-gt v7, v13, :cond_e4

    const/16 v13, 0x708

    if-gt v6, v13, :cond_e4

    const/16 v13, 0x3c0

    if-gt v12, v13, :cond_e4

    const/4 v3, 0x4

    return v3

    :cond_e4
    const-wide/32 v15, 0x8ca000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_f9

    const v13, 0x3c000

    if-gt v7, v13, :cond_f9

    const/16 v13, 0xe10

    if-gt v6, v13, :cond_f9

    const/16 v13, 0x540

    if-gt v12, v13, :cond_f9

    return v3

    :cond_f9
    const-wide/32 v15, 0x13c6800

    cmp-long v3, v9, v15

    const/16 v13, 0x800

    if-gtz v3, :cond_110

    const v3, 0x87000

    if-gt v7, v3, :cond_110

    const/16 v3, 0x1c20

    if-gt v6, v3, :cond_110

    if-gt v12, v13, :cond_110

    const/16 v3, 0x10

    return v3

    :cond_110
    const-wide/32 v15, 0x2328000

    cmp-long v3, v9, v15

    if-gtz v3, :cond_126

    const/high16 v3, 0xf0000

    if-gt v7, v3, :cond_126

    const/16 v3, 0x2ee0

    if-gt v6, v3, :cond_126

    const/16 v3, 0xac0

    if-gt v12, v3, :cond_126

    const/16 v3, 0x20

    return v3

    :cond_126
    const-wide/32 v15, 0x4fb0000

    cmp-long v3, v9, v15

    const/16 v15, 0x1040

    const/high16 v13, 0x220000

    if-gtz v3, :cond_13c

    if-gt v7, v13, :cond_13c

    const/16 v3, 0x4650

    if-gt v6, v3, :cond_13c

    if-gt v12, v15, :cond_13c

    const/16 v3, 0x40

    return v3

    :cond_13c
    const-wide/32 v17, 0x9900000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_14e

    if-gt v7, v13, :cond_14e

    const/16 v3, 0x7530

    if-gt v6, v3, :cond_14e

    if-gt v12, v15, :cond_14e

    const/16 v3, 0x80

    return v3

    :cond_14e
    const-wide/32 v17, 0x12980000

    cmp-long v3, v9, v17

    const/16 v13, 0x20c0

    const/high16 v15, 0x880000

    if-gtz v3, :cond_165

    if-gt v7, v15, :cond_165

    const v3, 0xea60

    if-gt v6, v3, :cond_165

    if-gt v12, v13, :cond_165

    const/16 v3, 0x100

    return v3

    :cond_165
    const-wide/32 v17, 0x23100000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_176

    if-gt v7, v15, :cond_176

    const v3, 0x1d4c0

    if-gt v6, v3, :cond_176

    if-gt v12, v13, :cond_176

    return v14

    :cond_176
    const-wide/32 v17, 0x46200000

    cmp-long v3, v9, v17

    const v14, 0x2bf20

    if-gtz v3, :cond_189

    if-gt v7, v15, :cond_189

    if-gt v6, v14, :cond_189

    if-gt v12, v13, :cond_189

    const/16 v3, 0x400

    return v3

    :cond_189
    cmp-long v3, v9, v17

    const/16 v13, 0x41c0

    const/high16 v15, 0x2200000

    if-gtz v3, :cond_19a

    if-gt v7, v15, :cond_19a

    if-gt v6, v14, :cond_19a

    if-gt v12, v13, :cond_19a

    const/16 v3, 0x800

    return v3

    :cond_19a
    const-wide v16, 0x8c400000L

    cmp-long v3, v9, v16

    if-gtz v3, :cond_1af

    if-gt v7, v15, :cond_1af

    const v3, 0x3a980

    if-gt v6, v3, :cond_1af

    if-gt v12, v13, :cond_1af

    const/16 v3, 0x1000

    return v3

    :cond_1af
    const-wide v16, 0x118800000L

    cmp-long v3, v9, v16

    const/16 v14, 0x2000

    if-gtz v3, :cond_1c4

    if-gt v7, v15, :cond_1c4

    const v3, 0x75300

    if-gt v6, v3, :cond_1c4

    if-gt v12, v13, :cond_1c4

    return v14

    :cond_1c4
    return v14
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v2

    int-to-double v2, v2

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .registers 10

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    nop

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_35

    move v2, v5

    move-object v1, v4

    :cond_35
    goto :goto_12

    :cond_36
    return-object v1
.end method

.method private getBlockCount(II)I
    .registers 5

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "measured-frame-rate-"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "measured-frame-rate-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_10

    :cond_26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_39

    goto :goto_10

    :cond_39
    const/4 v7, 0x3

    aget-object v7, v6, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-gtz v10, :cond_4f

    goto :goto_10

    :cond_4f
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_10

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-gez v10, :cond_78

    goto :goto_10

    :cond_78
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_7c
    return-object v0
.end method

.method private getPerformancePoints(Ljava/util/Map;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string/jumbo v2, "performance-point-"

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "performance-point-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    goto :goto_12

    :cond_29
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_45

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    :cond_45
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_50

    goto :goto_12

    :cond_50
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9, v6}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    if-eqz v10, :cond_113

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    if-gtz v11, :cond_65

    goto :goto_12

    :cond_65
    move-object/from16 v11, p1

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    if-eqz v6, :cond_109

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_109

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v14

    if-gez v12, :cond_90

    goto :goto_12

    :cond_90
    new-instance v12, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->intValue()I

    move-result v16

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->intValue()I

    move-result v17

    new-instance v13, Landroid/util/Size;

    move-object/from16 v19, v2

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v20, v3

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v13, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v2, v13

    move-object v13, v12

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    move-object v2, v12

    new-instance v3, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v15

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v16

    new-instance v12, Landroid/util/Size;

    move-object/from16 v18, v4

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v21, v5

    iget v5, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v12, v4, v5}, Landroid/util/Size;-><init>(II)V

    move-object v4, v12

    move-object v12, v3

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v4

    if-nez v4, :cond_101

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_101
    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_12

    :cond_109
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    goto/16 :goto_12

    :cond_113
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    goto/16 :goto_12

    :cond_11f
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_12c

    return-object v6

    :cond_12c
    sget-object v2, Landroid/media/-$$Lambda$MediaCodecInfo$VideoCapabilities$DpgwEn-gVFZT9EtP3qcxpiA2G0M;->INSTANCE:Landroid/media/-$$Lambda$MediaCodecInfo$VideoCapabilities$DpgwEn-gVFZT9EtP3qcxpiA2G0M;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->sort(Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 3

    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method private initWithPlatformLimits()V
    .registers 2

    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$700()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$700()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return-void
.end method

.method static synthetic lambda$getPerformancePoints$0(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .registers 8

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_4c

    :cond_17
    move v2, v3

    goto :goto_4c

    :cond_19
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_32

    goto :goto_4c

    :cond_32
    move v2, v3

    goto :goto_4c

    :cond_34
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-eq v0, v1, :cond_4b

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-ge v0, v1, :cond_49

    goto :goto_4c

    :cond_49
    move v2, v3

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    neg-int v0, v2

    return v0
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 31

    move-object/from16 v11, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v12

    new-instance v0, Landroid/util/Size;

    iget v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v3, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "block-size"

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    const-string v0, "alignment"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v14

    const-string v0, "block-count-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    nop

    const-string v0, "blocks-per-second-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v10

    invoke-direct {v11, v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-direct {v11, v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getPerformancePoints(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    nop

    const-string/jumbo v0, "size-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6e

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/util/Range;

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Range;

    :cond_6e
    const-string v0, "feature-can-swap-width-height"

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "VideoCapabilities"

    if-eqz v0, :cond_d0

    if-eqz v3, :cond_a1

    nop

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-virtual {v3, v4}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    move-object v4, v0

    move-object v3, v0

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    goto :goto_d5

    :cond_a1
    const-string v0, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iput-object v0, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_d0
    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_d5
    nop

    const-string v0, "block-aspect-ratio-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    nop

    const-string/jumbo v0, "pixel-aspect-ratio-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    const-string v0, "frame-rate-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    const-string v1, ") is out of limits: "

    if-eqz v5, :cond_12c

    :try_start_fb
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_103} :catch_107

    move-object v5, v0

    move-object/from16 v18, v3

    goto :goto_12e

    :catch_107
    move-exception v0

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "frame rate range ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_12e

    :cond_12c
    move-object/from16 v18, v3

    :goto_12e
    const-string v0, "bitrate-range"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    if-eqz v3, :cond_169

    :try_start_13b
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13b .. :try_end_143} :catch_145

    move-object v3, v0

    goto :goto_16a

    :catch_145
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "bitrate range ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_16a

    :cond_169
    move-object v0, v3

    :goto_16a
    nop

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "block-size width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    nop

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v2, "block-size height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    nop

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "alignment width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    nop

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v1

    const-string v2, "alignment height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->access$200(ILjava/lang/String;)I

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v6, 0x7fffffff

    const-wide v16, 0x7fffffffffffffffL

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v20

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v22

    move-object/from16 v1, p0

    move-object/from16 v23, v18

    move-object/from16 v24, v4

    move v4, v6

    move-object/from16 v25, v5

    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    move/from16 v7, v19

    move-object/from16 v26, v8

    move/from16 v8, v20

    move-object/from16 v27, v9

    move/from16 v9, v21

    move-object/from16 v17, v12

    move-object v12, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_27c

    iget-boolean v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v1, :cond_1e7

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    goto/16 :goto_286

    :cond_1e7
    move-object/from16 v3, v24

    if-eqz v3, :cond_1f3

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v1, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_1f3
    move-object/from16 v4, v23

    if-eqz v4, :cond_1ff

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v1, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_1ff
    if-eqz v15, :cond_21c

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v2, v5

    invoke-static {v15, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_21c
    if-eqz v12, :cond_23a

    iget-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v2, v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v2, v5

    int-to-long v5, v2

    invoke-static {v12, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_23a
    move-object/from16 v1, v27

    if-eqz v1, :cond_258

    iget-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v1, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_258
    move-object/from16 v2, v26

    if-eqz v2, :cond_264

    iget-object v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    iput-object v5, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_264
    move-object/from16 v5, v25

    if-eqz v5, :cond_270

    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v6, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_270
    if-eqz v0, :cond_330

    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_330

    :cond_27c
    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    :goto_286
    if-eqz v3, :cond_292

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_292
    if-eqz v4, :cond_29e

    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_29e
    if-eqz v15, :cond_2bd

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v15, v7}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_2bd
    if-eqz v12, :cond_2dd

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v7, v7

    invoke-static {v12, v7, v8}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_2dd
    if-eqz v1, :cond_2fb

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$700()Landroid/util/Range;

    move-result-object v6

    iget v7, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    iget v8, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v9

    div-int/2addr v8, v9

    invoke-static {v1, v7, v8}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_2fb
    if-eqz v2, :cond_307

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$700()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_307
    if-eqz v5, :cond_313

    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_313
    if-eqz v0, :cond_330

    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v6, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_328

    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto :goto_330

    :cond_328
    iget-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v11, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    :cond_330
    :goto_330
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_5f

    :try_start_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_42} :catch_43

    return-object v1

    :catch_43
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not parse size range \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 v1, 0x0

    return-object v1
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    move v0, v3

    :cond_1c
    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_33

    move v3, v1

    goto :goto_34

    :cond_33
    move v3, v2

    :goto_34
    move v0, v3

    :cond_35
    if-eqz v0, :cond_47

    if-eqz p3, :cond_47

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    :cond_47
    if-eqz v0, :cond_be

    if-eqz p2, :cond_be

    if-eqz p1, :cond_be

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v3, v4, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_5f
    move v3, v2

    :goto_60
    move v0, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v3, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    mul-int v5, v3, v4

    if-eqz v0, :cond_a8

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a8

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a8

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a8

    goto :goto_a9

    :cond_a8
    move v1, v2

    :goto_a9
    move v0, v1

    if-eqz v0, :cond_be

    if-eqz p3, :cond_be

    int-to-double v1, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v1, v6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {v1, v2}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    :cond_be
    return v0
.end method

.method private updateLimits()V
    .registers 7

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .registers 8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    goto :goto_1f

    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_1f
    const-string v0, "VideoCapabilities"

    const-string v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :goto_7
    return-object v0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .registers 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unsupported size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "unsupported width"

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_bf

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_bf

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    int-to-double v4, v2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    int-to-double v5, v2

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroid/util/Rational;

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v1, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_90

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v1, v5

    :cond_90
    int-to-double v5, p1

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroid/util/Rational;

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-double v6, p1

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    invoke-virtual {v8}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_bf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported heights for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSupportedPerformancePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "unsupported height"

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_bf

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_bf

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v1, v5

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_90

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v1, v5

    :cond_90
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    int-to-double v7, p1

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_bf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported widths for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getWidthAlignment()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public isSizeSupported(II)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_25

    return v5

    :cond_25
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    # invokes: Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->access$100(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_2e

    return v5

    :cond_2e
    const/4 v4, 0x1

    return v4
.end method
