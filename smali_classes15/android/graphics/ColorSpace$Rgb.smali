.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;,
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mInverseTransform:[F

.field private final mIsSrgb:Z

.field private final mIsWideGamut:Z

.field private final mMax:F

.field private final mMin:F

.field private final mNativePtr:J

.field private final mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mPrimaries:[F

.field private final mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final mTransform:[F

.field private final mWhitePoint:[F


# direct methods
.method private constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .registers 15

    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v6, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget v7, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v8, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget-object v9, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v10, -0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .registers 14

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_b

    # getter for: Landroid/graphics/ColorSpace;->GRAY_PRIMARIES:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v0

    :goto_f
    move-object v3, v0

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v4

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v5, p2

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    move-object v5, v0

    :goto_1e
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .registers 16

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FD)V
    .registers 15

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FDFFI)V
    .registers 33

    move-wide/from16 v11, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v11, v0

    if-nez v2, :cond_f

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_16

    :cond_f
    new-instance v2, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;

    invoke-direct {v2, v11, v12}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$CqKld6797g7__JnuY0NeFz5q4_E;-><init>(D)V

    move-object/from16 v18, v2

    :goto_16
    cmpl-double v0, v11, v0

    if-nez v0, :cond_21

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_28

    :cond_21
    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$ZvS77aTfobOSa2o9MTqYMph4Rcg;

    invoke-direct {v0, v11, v12}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$ZvS77aTfobOSa2o9MTqYMph4Rcg;-><init>(D)V

    move-object/from16 v19, v0

    :goto_28
    new-instance v22, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v23, p8

    invoke-direct/range {v13 .. v23}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .registers 19

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 19

    move-object/from16 v11, p5

    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$bWzafC8vMHNuVmRuTUPEFUMlfuY;

    invoke-direct {v0, v11}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$bWzafC8vMHNuVmRuTUPEFUMlfuY;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v5, v0

    goto :goto_1d

    :cond_17
    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;

    invoke-direct {v0, v11}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$V_0lmM2WEpxGBDV_1G1wvvidn7Y;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v5, v0

    :goto_1d
    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_30

    iget-wide v0, v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_30

    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$b9VGKuNnse0bbguR9jbOM_wK2Ac;

    invoke-direct {v0, v11}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$b9VGKuNnse0bbguR9jbOM_wK2Ac;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v6, v0

    goto :goto_36

    :cond_30
    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$iMkODTKa3_8kPZUnZZerD2Lv-yo;

    invoke-direct {v0, v11}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$iMkODTKa3_8kPZUnZZerD2Lv-yo;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    move-object v6, v0

    :goto_36
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    move-object/from16 v15, p1

    move/from16 v10, p10

    invoke-direct {v0, v15, v4, v10}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    if-eqz v1, :cond_162

    array-length v4, v1

    const/4 v5, 0x6

    const/16 v6, 0x9

    if-eq v4, v5, :cond_24

    array-length v4, v1

    if-ne v4, v6, :cond_162

    :cond_24
    if-eqz v2, :cond_15a

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2e

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15a

    :cond_2e
    if-eqz v11, :cond_152

    if-eqz v12, :cond_152

    cmpl-float v4, v13, v14

    if-gez v4, :cond_12e

    invoke-static/range {p3 .. p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static/range {p2 .. p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    if-nez v3, :cond_4d

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v4, v5}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    goto :goto_52

    :cond_4d
    array-length v4, v3

    if-ne v4, v6, :cond_116

    iput-object v3, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    :goto_52
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    # invokes: Landroid/graphics/ColorSpace;->inverse3x3([F)[F
    invoke-static {v4}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iput-object v11, v0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v12, v0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput v13, v0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iput v14, v0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    new-instance v9, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;

    invoke-direct {v9, v0}, Landroid/graphics/-$$Lambda$ColorSpace$Rgb$8EkhO2jIf14tuA3BvrmYJMa7YXM;-><init>(Landroid/graphics/ColorSpace$Rgb;)V

    invoke-interface {v11, v9}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v9, v12}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    move-object/from16 v8, p9

    iput-object v8, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v4, v13, v14}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result v4

    iput-boolean v4, v0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v16, v9

    move/from16 v9, p8

    move/from16 v10, p10

    invoke-static/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result v4

    iput-boolean v4, v0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v4, :cond_111

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    if-eqz v4, :cond_e6

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    if-eqz v5, :cond_e6

    # invokes: Landroid/graphics/ColorSpace;->adaptToIlluminantD50([F[F)[F
    invoke-static {v4, v5}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    move-result-object v4

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v5, v5, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    double-to-float v5, v5

    iget-object v6, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v6, v6, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    double-to-float v6, v6

    iget-object v7, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v7, v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    double-to-float v7, v7

    iget-object v8, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v8, v8, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    double-to-float v8, v8

    iget-object v9, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v9, v9, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    double-to-float v9, v9

    iget-object v10, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v1, v10, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    double-to-float v1, v1

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v10, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    double-to-float v2, v10

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v24}, Landroid/graphics/ColorSpace$Rgb;->nativeCreate(FFFFFFF[F)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    sget-object v1, Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    invoke-virtual {v1, v0, v5, v6}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    goto :goto_115

    :cond_e6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorSpace ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") cannot create native object! mWhitePoint: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mTransform: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_111
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    :goto_115
    return-void

    :cond_116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transform must have 9 entries! Has "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range: min="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", max="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "; min must be strictly < max"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The transfer functions of a color space cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object v0
.end method

.method static synthetic access$1400()J
    .registers 2

    invoke-static {}, Landroid/graphics/ColorSpace$Rgb;->nativeGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method private static area([F)F
    .registers 10

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    mul-float v7, v2, v5

    add-float/2addr v6, v7

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    mul-float v7, v0, v5

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v6

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2d

    neg-float v8, v7

    goto :goto_2e

    :cond_2d
    move v8, v7

    :goto_2e
    return v8
.end method

.method private clamp(D)D
    .registers 6

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v1, v0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_9

    :goto_7
    float-to-double v0, v0

    goto :goto_12

    :cond_9
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v1, v0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_11

    goto :goto_7

    :cond_11
    move-wide v0, p1

    :goto_12
    return-wide v0
.end method

.method private static compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z
    .registers 12

    invoke-interface {p2, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p3, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    return v4
.end method

.method private static computePrimaries([F)[F
    .registers 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_5c

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    move-result-object v1

    new-array v2, v0, [F

    fill-array-data v2, :array_66

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_70

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {p0, v3}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    add-float/2addr v5, v7

    const/4 v7, 0x2

    aget v8, v1, v7

    add-float/2addr v5, v8

    aget v8, v2, v4

    aget v9, v2, v6

    add-float/2addr v8, v9

    aget v9, v2, v7

    add-float/2addr v8, v9

    aget v9, v3, v4

    aget v10, v3, v6

    add-float/2addr v9, v10

    aget v10, v3, v7

    add-float/2addr v9, v10

    const/4 v10, 0x6

    new-array v10, v10, [F

    aget v11, v1, v4

    div-float/2addr v11, v5

    aput v11, v10, v4

    aget v11, v1, v6

    div-float/2addr v11, v5

    aput v11, v10, v6

    aget v11, v2, v4

    div-float/2addr v11, v8

    aput v11, v10, v7

    aget v7, v2, v6

    div-float/2addr v7, v8

    aput v7, v10, v0

    aget v0, v3, v4

    div-float/2addr v0, v9

    const/4 v4, 0x4

    aput v0, v10, v4

    aget v0, v3, v6

    div-float/2addr v0, v9

    const/4 v4, 0x5

    aput v0, v10, v4

    return-object v10

    nop

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_66
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_70
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeWhitePoint([F)[F
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v5, v0, v4

    add-float/2addr v2, v5

    new-array v4, v4, [F

    aget v5, v0, v1

    div-float/2addr v5, v2

    aput v5, v4, v1

    aget v1, v0, v3

    div-float/2addr v1, v2

    aput v1, v4, v3

    return-object v4

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeXYZMatrix([F[F)[F
    .registers 32

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    aget v12, p1, v0

    aget v13, p1, v2

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float/2addr v15, v3

    sub-float v16, v14, v5

    div-float v16, v16, v7

    sub-float v17, v14, v9

    div-float v17, v17, v11

    sub-float v18, v14, v12

    div-float v18, v18, v13

    div-float v19, v1, v3

    div-float v20, v5, v7

    div-float v21, v9, v11

    div-float v22, v12, v13

    sub-float v23, v18, v15

    sub-float v24, v20, v19

    mul-float v23, v23, v24

    sub-float v24, v22, v19

    sub-float v25, v16, v15

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    sub-float v24, v17, v15

    sub-float v25, v20, v19

    mul-float v24, v24, v25

    sub-float v25, v21, v19

    sub-float v26, v16, v15

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    div-float v23, v23, v24

    sub-float v24, v22, v19

    sub-float v25, v21, v19

    mul-float v25, v25, v23

    sub-float v24, v24, v25

    sub-float v25, v20, v19

    div-float v24, v24, v25

    sub-float v25, v14, v24

    sub-float v25, v25, v23

    div-float v26, v25, v3

    div-float v27, v24, v7

    div-float v28, v23, v11

    const/16 v10, 0x9

    new-array v10, v10, [F

    mul-float v29, v26, v1

    aput v29, v10, v0

    aput v25, v10, v2

    sub-float v0, v14, v1

    sub-float/2addr v0, v3

    mul-float v0, v0, v26

    aput v0, v10, v4

    mul-float v0, v27, v5

    aput v0, v10, v6

    aput v24, v10, v8

    sub-float v0, v14, v5

    sub-float/2addr v0, v7

    mul-float v0, v0, v27

    const/4 v2, 0x5

    aput v0, v10, v2

    mul-float v0, v28, v9

    const/4 v2, 0x6

    aput v0, v10, v2

    const/4 v0, 0x7

    aput v23, v10, v0

    sub-float/2addr v14, v9

    sub-float/2addr v14, v11

    mul-float v14, v14, v28

    const/16 v0, 0x8

    aput v14, v10, v0

    return-object v10
.end method

.method private static contains([F[F)Z
    .registers 15

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v0, v3

    const/4 v4, 0x3

    aget v5, p0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v5, 0x4

    aget v6, p0, v5

    aget v7, p1, v5

    sub-float/2addr v6, v7

    aput v6, v0, v5

    const/4 v6, 0x5

    aget v7, p0, v6

    aget v8, p1, v6

    sub-float/2addr v7, v8

    aput v7, v0, v6

    aget v7, v0, v1

    aget v8, v0, v2

    aget v9, p1, v1

    aget v10, p1, v5

    sub-float/2addr v9, v10

    aget v10, p1, v2

    aget v11, p1, v6

    sub-float/2addr v10, v11

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_be

    aget v7, p1, v1

    aget v9, p1, v3

    sub-float/2addr v7, v9

    aget v9, p1, v2

    aget v10, p1, v4

    sub-float/2addr v9, v10

    aget v10, v0, v1

    aget v11, v0, v2

    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_61

    goto :goto_be

    :cond_61
    aget v7, v0, v3

    aget v9, v0, v4

    aget v10, p1, v3

    aget v11, p1, v1

    sub-float/2addr v10, v11

    aget v11, p1, v4

    aget v12, p1, v2

    sub-float/2addr v11, v12

    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_bd

    aget v7, p1, v3

    aget v9, p1, v5

    sub-float/2addr v7, v9

    aget v9, p1, v4

    aget v10, p1, v6

    sub-float/2addr v9, v10

    aget v10, v0, v3

    aget v11, v0, v4

    invoke-static {v7, v9, v10, v11}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8e

    goto :goto_bd

    :cond_8e
    aget v7, v0, v5

    aget v9, v0, v6

    aget v10, p1, v5

    aget v3, p1, v3

    sub-float/2addr v10, v3

    aget v3, p1, v6

    aget v4, p1, v4

    sub-float/2addr v3, v4

    invoke-static {v7, v9, v10, v3}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v3

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_bc

    aget v3, p1, v5

    aget v4, p1, v1

    sub-float/2addr v3, v4

    aget v4, p1, v6

    aget v7, p1, v2

    sub-float/2addr v4, v7

    aget v5, v0, v5

    aget v6, v0, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_bb

    goto :goto_bc

    :cond_bb
    return v2

    :cond_bc
    :goto_bc
    return v1

    :cond_bd
    :goto_bd
    return v1

    :cond_be
    :goto_be
    return v1
.end method

.method private static cross(FFFF)F
    .registers 6

    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static isGray([F)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_31

    aget v0, p0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    const/4 v0, 0x2

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    const/4 v0, 0x5

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    const/4 v0, 0x7

    aget v0, p0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    return v1
.end method

.method private static isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .registers 14

    const/4 v0, 0x1

    if-nez p6, :cond_4

    return v0

    :cond_4
    # getter for: Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1600()[F

    move-result-object v1

    # invokes: Landroid/graphics/ColorSpace;->compare([F[F)Z
    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->access$1700([F[F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    sget-object v1, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    # invokes: Landroid/graphics/ColorSpace;->compare([F[F)Z
    invoke-static {p1, v1}, Landroid/graphics/ColorSpace;->access$1700([F[F)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_26

    return v2

    :cond_26
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    const-wide/16 v3, 0x0

    :goto_30
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_4f

    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p2, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_3f

    return v2

    :cond_3f
    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p3, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_48

    return v2

    :cond_48
    const-wide v5, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr v3, v5

    goto :goto_30

    :cond_4f
    return v0
.end method

.method private static isWideGamut([FFF)Z
    .registers 5

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    # getter for: Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1800()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    # getter for: Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1600()[F

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_1e
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public static synthetic lambda$8EkhO2jIf14tuA3BvrmYJMa7YXM(Landroid/graphics/ColorSpace$Rgb;D)D
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$new$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    # invokes: Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$2200(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 20

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v15, v1

    move-wide/from16 v1, p1

    # invokes: Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D
    invoke-static/range {v1 .. v16}, Landroid/graphics/ColorSpace;->access$2100(DDDDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic lambda$new$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    # invokes: Landroid/graphics/ColorSpace;->response(DDDDDD)D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$2000(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 20

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v15, v1

    move-wide/from16 v1, p1

    # invokes: Landroid/graphics/ColorSpace;->response(DDDDDDDD)D
    invoke-static/range {v1 .. v16}, Landroid/graphics/ColorSpace;->access$1900(DDDDDDDD)D

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic lambda$new$4(DD)D
    .registers 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v0, p2

    :goto_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$5(DD)D
    .registers 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v0, p2

    :goto_8
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeCreate(FFFFFFF[F)J
.end method

.method private static native nativeGetNativeFinalizer()J
.end method

.method private static xyPrimaries([F)[F
    .registers 10

    const/4 v0, 0x6

    new-array v1, v0, [F

    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_48

    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    add-float/2addr v2, v6

    aget v6, p0, v3

    div-float/2addr v6, v2

    aput v6, v1, v3

    aget v3, p0, v4

    div-float/2addr v3, v2

    aput v3, v1, v4

    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v6, 0x4

    aget v7, p0, v6

    add-float/2addr v4, v7

    const/4 v7, 0x5

    aget v8, p0, v7

    add-float/2addr v4, v8

    aget v2, p0, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    aget v2, p0, v6

    div-float/2addr v2, v4

    aput v2, v1, v3

    aget v2, p0, v0

    const/4 v3, 0x7

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    add-float/2addr v2, v5

    aget v0, p0, v0

    div-float/2addr v0, v2

    aput v0, v1, v6

    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v7

    goto :goto_4b

    :cond_48
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4b
    return-object v1
.end method

.method private static xyWhitePoint([F)[F
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1c

    aget v2, p0, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    aget v0, p0, v0

    add-float/2addr v2, v0

    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v3

    aget v0, p0, v4

    div-float/2addr v0, v2

    aput v0, v1, v4

    goto :goto_1f

    :cond_1c
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1f
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6c

    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_27

    return v1

    :cond_27
    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_32

    return v1

    :cond_32
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_3d

    return v1

    :cond_3d
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_48

    return v1

    :cond_48
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v3, :cond_53

    iget-object v0, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v3, v0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_53
    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v3, :cond_58

    return v0

    :cond_58
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    return v1

    :cond_63
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, v2, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6c
    :goto_6c
    return v1
.end method

.method public fromLinear(FFF)[F
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public fromLinear([F)[F
    .registers 6

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public fromXyz([F)[F
    .registers 6

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public getEotf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getInverseTransform()[F
    .registers 3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getInverseTransform([F)[F
    .registers 5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getMaxValue(I)F
    .registers 3

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return v0
.end method

.method public getMinValue(I)F
    .registers 3

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return v0
.end method

.method getNativeInstance()J
    .registers 5

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorSpace must use an ICC parametric transfer function! used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOetf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getPrimaries()[F
    .registers 3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getPrimaries([F)[F
    .registers 5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method public getTransform()[F
    .registers 3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getTransform([F)[F
    .registers 5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getWhitePoint()[F
    .registers 3

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getWhitePoint([F)[F
    .registers 5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    return-object p1
.end method

.method public hashCode()I
    .registers 7

    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_25

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_26

    :cond_25
    move v2, v5

    :goto_26
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_34

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_35

    :cond_34
    move v2, v5

    :goto_35
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v5

    :cond_40
    add-int/2addr v1, v5

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v0, :cond_57

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    :cond_57
    return v1
.end method

.method public isSrgb()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public isWideGamut()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public toLinear(FFF)[F
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public toLinear([F)[F
    .registers 6

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public toXyz([F)[F
    .registers 6

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    # invokes: Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1500([F[F)[F

    move-result-object v0

    return-object v0
.end method
