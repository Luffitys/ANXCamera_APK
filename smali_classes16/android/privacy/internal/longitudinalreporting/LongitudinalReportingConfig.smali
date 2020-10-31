.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final mEncoderId:Ljava/lang/String;

.field private final mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final mProbabilityF:D

.field private final mProbabilityP:D

.field private final mProbabilityQ:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDD)V
    .registers 29

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-wide/from16 v10, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    cmpl-double v3, v12, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ltz v3, :cond_1b

    cmpg-double v3, v12, v6

    if-gtz v3, :cond_1b

    move v3, v5

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    const-string/jumbo v8, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v12, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    cmpl-double v3, v14, v1

    if-ltz v3, :cond_2e

    cmpg-double v3, v14, v6

    if-gtz v3, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    const-string/jumbo v8, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v14, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    cmpl-double v1, v10, v1

    if-ltz v1, :cond_40

    cmpg-double v1, v10, v6

    if-gtz v1, :cond_40

    move v4, v5

    :cond_40
    const-string/jumbo v1, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v10, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    const-string v2, "encoderId cannot be empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object/from16 v8, p1

    iput-object v8, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    new-instance v9, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sub-double v16, v6, v12

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-object/from16 v20, v9

    move-wide/from16 v8, v16

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "LongitudinalReporting"

    return-object v0
.end method

.method getEncoderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object v0
.end method

.method getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .registers 2

    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object v0
.end method

.method getProbabilityP()D
    .registers 3

    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method getProbabilityQ()D
    .registers 3

    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
