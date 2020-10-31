.class public Landroid/privacy/internal/rappor/RapporConfig;
.super Ljava/lang/Object;
.source "RapporConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "Rappor"


# instance fields
.field final mEncoderId:Ljava/lang/String;

.field final mNumBits:I

.field final mNumBloomHashes:I

.field final mNumCohorts:I

.field final mProbabilityF:D

.field final mProbabilityP:D

.field final mProbabilityQ:D


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDDII)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    const-string v12, "encoderId cannot be empty"

    invoke-static {v10, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object/from16 v10, p1

    iput-object v10, v0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    const/4 v12, 0x0

    if-lez v1, :cond_25

    move v13, v11

    goto :goto_26

    :cond_25
    move v13, v12

    :goto_26
    const-string/jumbo v14, "numBits needs to be > 0"

    invoke-static {v13, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput v1, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    const-wide/16 v13, 0x0

    cmpl-double v15, v2, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ltz v15, :cond_3c

    cmpg-double v15, v2, v16

    if-gtz v15, :cond_3c

    move v15, v11

    goto :goto_3d

    :cond_3c
    move v15, v12

    :goto_3d
    const-string/jumbo v11, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v15, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v2, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    cmpl-double v11, v4, v13

    if-ltz v11, :cond_4f

    cmpg-double v11, v4, v16

    if-gtz v11, :cond_4f

    const/4 v11, 0x1

    goto :goto_50

    :cond_4f
    move v11, v12

    :goto_50
    const-string/jumbo v15, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v11, v15}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v4, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    cmpl-double v11, v6, v13

    if-ltz v11, :cond_62

    cmpg-double v11, v6, v16

    if-gtz v11, :cond_62

    const/4 v11, 0x1

    goto :goto_63

    :cond_62
    move v11, v12

    :goto_63
    const-string/jumbo v13, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v6, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    if-lez v8, :cond_6f

    const/4 v11, 0x1

    goto :goto_70

    :cond_6f
    move v11, v12

    :goto_70
    const-string/jumbo v13, "numCohorts needs to be > 0"

    invoke-static {v11, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput v8, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    if-lez v9, :cond_7c

    const/4 v11, 0x1

    goto :goto_7d

    :cond_7c
    move v11, v12

    :goto_7d
    const-string/jumbo v12, "numBloomHashes needs to be > 0"

    invoke-static {v11, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput v9, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "Rappor"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "EncoderId: %s, NumBits: %d, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f, NumCohorts: %d, NumBloomHashes: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
