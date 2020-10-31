.class public Lmiui/telephony/dtmf/DTMFUtil;
.super Ljava/lang/Object;
.source "DTMFUtil.java"


# static fields
.field private static final DECIBEL_THRESHOLD_LIST:[I

.field private static final DEFAULT_SAMPLE_RATE:I = 0x1f40

.field private static final FREQUENCE_INDEX_GAP:I = 0x5

.field private static final HEALTHY:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFUtil"

.field private static final SAMPLE_RATE_LIST:[I

.field private static final STEP:I = 0x100

.field private static final TARGET_FREQUENCIES:[F

.field private static final TARGET_HIGH_FREQUENCY:F = 1075.0f

.field private static final TARGET_LOW_FREQUENCY:F = 600.0f

.field private static final VERSION:I = 0x2


# instance fields
.field private mHealthy:I

.field private mPreCalculatedCosines:[F

.field private mSampleRate:I

.field private mWnkList:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x44160000    # 600.0f
        0x442e4000    # 697.0f
        0x44408000    # 770.0f
        0x44550000    # 852.0f
        0x446b4000    # 941.0f
        0x44866000    # 1075.0f
        0x44972000    # 1209.0f
        0x44a70000    # 1336.0f
        0x44b8a000    # 1477.0f
        0x44cc2000    # 1633.0f
    .end array-data

    :array_32
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0x7d00
        0xac44
    .end array-data

    :array_40
    .array-data 4
        0x17
        0x20
        0x1f
        0x22
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x1f40

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmiui/telephony/dtmf/DTMFUtil;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    if-lez p2, :cond_18

    move v0, p2

    goto :goto_19

    :cond_18
    const/4 v0, 0x3

    :goto_19
    iput v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return-void
.end method

.method private bufferFilter([FI)[F
    .registers 11

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    return-object p1

    :cond_5
    new-array v0, v1, [F

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    const/4 v6, 0x0

    :goto_e
    array-length v7, p1

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_1d

    aget v7, p1, v6

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_1a

    aget v3, p1, v6

    :cond_1a
    add-int/lit8 v6, v6, 0x2

    goto :goto_e

    :cond_1d
    const/4 v6, 0x1

    :goto_1e
    array-length v7, p1

    div-int/2addr v7, v1

    if-ge v6, v7, :cond_2d

    aget v7, p1, v6

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_2a

    aget v5, p1, v6

    :cond_2a
    add-int/lit8 v6, v6, 0x2

    goto :goto_1e

    :cond_2d
    aget v1, p1, v2

    cmpl-float v1, v3, v1

    if-nez v1, :cond_42

    aget v1, p1, v4

    cmpl-float v1, v5, v1

    if-nez v1, :cond_42

    aget v1, p1, v2

    aput v1, v0, v2

    aget v1, p1, v4

    aput v1, v0, v4

    return-object v0

    :cond_42
    const/4 v1, 0x0

    return-object v1
.end method

.method private dtmfDetectAndValidate([BIZ)[F
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x100

    new-array v3, v3, [B

    iget v4, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    new-array v5, v5, [F

    new-instance v6, Lmiui/telephony/dtmf/DTMFAudioInputStream;

    invoke-direct {v6, p1}, Lmiui/telephony/dtmf/DTMFAudioInputStream;-><init>([B)V

    new-instance v7, Lmiui/telephony/dtmf/DTMFDataConveter;

    invoke-direct {v7, p2, p3}, Lmiui/telephony/dtmf/DTMFDataConveter;-><init>(IZ)V

    :goto_19
    iget v8, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ge v2, v8, :cond_4d

    array-length v8, p1

    if-lt v1, v8, :cond_21

    goto :goto_4d

    :cond_21
    move v0, v1

    add-int/lit16 v8, v1, 0x100

    array-length v9, p1

    if-le v8, v9, :cond_29

    array-length v8, p1

    goto :goto_2b

    :cond_29
    add-int/lit16 v8, v1, 0x100

    :goto_2b
    move v1, v8

    sub-int v8, v1, v0

    invoke-virtual {v6, v3, v8}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read([BI)I

    invoke-virtual {v7, v3}, Lmiui/telephony/dtmf/DTMFDataConveter;->byteToFloat([B)[F

    move-result-object v8

    invoke-direct {p0, v8}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfFrequenciesDetecter([F)[F

    move-result-object v5

    if-eqz v5, :cond_4c

    mul-int/lit8 v9, v2, 0x2

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v4, v9

    mul-int/lit8 v9, v2, 0x2

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget v10, v5, v10

    aput v10, v4, v9

    add-int/lit8 v2, v2, 0x1

    :cond_4c
    goto :goto_19

    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->close()V

    iget v8, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    if-ne v2, v8, :cond_5b

    mul-int/lit8 v8, v2, 0x2

    invoke-direct {p0, v4, v8}, Lmiui/telephony/dtmf/DTMFUtil;->bufferFilter([FI)[F

    move-result-object v8

    return-object v8

    :cond_5b
    const/4 v8, 0x0

    return-object v8
.end method

.method private dtmfFrequenciesDetecter([F)[F
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v4, v5

    const/4 v7, 0x0

    aput v6, v4, v7

    iget v6, v0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {v0, v6}, Lmiui/telephony/dtmf/DTMFUtil;->getDecibelThreshold(I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_25

    const-string v3, "DTMFUtil"

    const-string v5, "can not get threshold"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_25
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v11, v11

    new-array v11, v11, [F

    const/4 v12, 0x0

    :goto_2e
    sget-object v13, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v13, v13

    if-ge v12, v13, :cond_71

    const/4 v13, 0x0

    move v10, v13

    move v9, v13

    move v8, v13

    const/4 v13, 0x0

    :goto_38
    array-length v14, v1

    if-ge v13, v14, :cond_4a

    move v10, v9

    move v9, v8

    iget-object v14, v0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    aget v14, v14, v12

    mul-float/2addr v14, v9

    sub-float/2addr v14, v10

    aget v15, v1, v13

    add-float v8, v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    :cond_4a
    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    iget-object v15, v0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    aget v15, v15, v12

    mul-float/2addr v15, v9

    sub-float v15, v8, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    double-to-float v13, v7

    aput v13, v11, v12

    aget v13, v11, v12

    int-to-float v14, v6

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6b

    aput-boolean v5, v2, v12

    :cond_6b
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_2e

    :cond_71
    const/4 v7, 0x0

    :goto_72
    array-length v12, v2

    div-int/2addr v12, v3

    if-ge v7, v12, :cond_98

    add-int/lit8 v12, v7, 0x5

    sget-object v13, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v14, v13

    rem-int/2addr v12, v14

    aget-boolean v14, v2, v7

    if-eqz v14, :cond_94

    aget-boolean v14, v2, v12

    if-eqz v14, :cond_94

    aget v14, v13, v7

    const/4 v15, 0x0

    aput v14, v4, v15

    aget v13, v13, v12

    aput v13, v4, v5

    invoke-direct {v0, v4}, Lmiui/telephony/dtmf/DTMFUtil;->isValidate([F)Z

    move-result v13

    if-eqz v13, :cond_95

    return-object v4

    :cond_94
    const/4 v15, 0x0

    :cond_95
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_98
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getAudioFloatBuffer([FII)[F
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    mul-int v2, v1, p2

    div-int/lit16 v2, v2, 0x3e8

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    const-string v3, "DTMFUtil"

    const-string v4, "parameter buffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_15
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x0

    aget v7, v0, v7

    float-to-double v7, v7

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v7, v9

    const/4 v11, 0x1

    aget v11, v0, v11

    float-to-double v11, v11

    mul-double/2addr v11, v9

    new-array v9, v2, [F

    const/4 v10, 0x0

    :goto_2b
    array-length v13, v9

    if-ge v10, v13, :cond_55

    int-to-double v13, v10

    move v15, v2

    move-wide/from16 v16, v3

    int-to-double v2, v1

    div-double/2addr v13, v2

    mul-double v2, v7, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v18

    mul-double v20, v11, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    add-double v0, v2, v20

    double-to-float v0, v0

    aput v0, v9, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    move-wide/from16 v3, v16

    goto :goto_2b

    :cond_55
    return-object v9
.end method

.method private getDecibelThreshold(I)I
    .registers 7

    sget-object v0, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v0, v0

    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    array-length v1, v1

    const/4 v2, -0x1

    const-string v3, "DTMFUtil"

    if-eq v0, v1, :cond_11

    const-string v0, "the number of SAMPLE_RATE_LIST and DECIBEL_THRESHOLD_LIST can not match"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_13
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v4, v1

    if-ge v0, v4, :cond_20

    aget v1, v1, v0

    if-ne p1, v1, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_20
    :goto_20
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->SAMPLE_RATE_LIST:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2b

    const-string v1, "can not find db threshold"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2b
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->DECIBEL_THRESHOLD_LIST:[I

    aget v1, v1, v0

    return v1
.end method

.method public static getDualFrequence(C)[F
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/16 v1, 0x23

    const v2, 0x446b4000    # 941.0f

    const v3, 0x44b8a000    # 1477.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, v1, :cond_61

    const/16 v1, 0x2a

    const v6, 0x44972000    # 1209.0f

    if-eq p0, v1, :cond_5c

    const/high16 v1, 0x44550000    # 852.0f

    const v7, 0x44408000    # 770.0f

    const v8, 0x442e4000    # 697.0f

    const/high16 v9, 0x44a70000    # 1336.0f

    packed-switch p0, :pswitch_data_68

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v4

    aput v1, v0, v5

    goto :goto_66

    :pswitch_2a
    aput v1, v0, v5

    aput v3, v0, v4

    goto :goto_66

    :pswitch_2f
    aput v1, v0, v5

    aput v9, v0, v4

    goto :goto_66

    :pswitch_34
    aput v1, v0, v5

    aput v6, v0, v4

    goto :goto_66

    :pswitch_39
    aput v7, v0, v5

    aput v3, v0, v4

    goto :goto_66

    :pswitch_3e
    aput v7, v0, v5

    aput v9, v0, v4

    goto :goto_66

    :pswitch_43
    aput v7, v0, v5

    aput v6, v0, v4

    goto :goto_66

    :pswitch_48
    aput v8, v0, v5

    aput v3, v0, v4

    goto :goto_66

    :pswitch_4d
    aput v8, v0, v5

    aput v9, v0, v4

    goto :goto_66

    :pswitch_52
    aput v8, v0, v5

    aput v6, v0, v4

    goto :goto_66

    :pswitch_57
    aput v2, v0, v5

    aput v9, v0, v4

    goto :goto_66

    :cond_5c
    aput v2, v0, v5

    aput v6, v0, v4

    goto :goto_66

    :cond_61
    aput v2, v0, v5

    aput v3, v0, v4

    nop

    :goto_66
    return-object v0

    nop

    :pswitch_data_68
    .packed-switch 0x30
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
    .end packed-switch
.end method

.method public static getTargetHighFrequency()F
    .registers 1

    const v0, 0x44866000    # 1075.0f

    return v0
.end method

.method public static getTargetLowFrequency()F
    .registers 1

    const/high16 v0, 0x44160000    # 600.0f

    return v0
.end method

.method public static getVersion()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method private initPrecalculatedCosines()V
    .registers 9

    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    if-nez v0, :cond_c

    const-string v0, "DTMFUtil"

    const-string v1, "fail to dispatching funtion initPrecalculatedCosines: you need to set mSampleRate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    :goto_d
    sget-object v1, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v2, v1

    if-ge v0, v2, :cond_46

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    aget v1, v1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v4

    iget v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v4, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mPreCalculatedCosines:[F

    double-to-float v2, v4

    aput v2, v1, v0

    const-wide v1, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    sget-object v3, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v3, v3, v0

    float-to-double v6, v3

    mul-double/2addr v6, v1

    iget v1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    int-to-double v1, v1

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFUtil;->mWnkList:[F

    double-to-float v6, v1

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_46
    return-void
.end method

.method private isValidate([F)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "DTMFUtil"

    const-string v2, "null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    const/high16 v1, 0x43860000    # 268.0f

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p1, v0

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v1

    if-gez v3, :cond_18

    return v0

    :cond_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    sget-object v6, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    array-length v7, v6

    if-ge v5, v7, :cond_37

    aget v7, p1, v0

    aget v6, v6, v5

    cmpl-float v6, v7, v6

    if-nez v6, :cond_29

    move v3, v5

    :cond_29
    aget v6, p1, v2

    sget-object v7, Lmiui/telephony/dtmf/DTMFUtil;->TARGET_FREQUENCIES:[F

    aget v7, v7, v5

    cmpl-float v6, v6, v7

    if-nez v6, :cond_34

    move v4, v5

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_37
    sub-int v5, v4, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3d

    return v2

    :cond_3d
    return v0
.end method


# virtual methods
.method public getHealthy()I
    .registers 2

    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    return v0
.end method

.method public parseFrequency([BIZ)[F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    const-string v0, "DTMFUtil"

    const-string v1, "parameter error: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lmiui/telephony/dtmf/DTMFUtil;->dtmfDetectAndValidate([BIZ)[F

    move-result-object v0

    return-object v0
.end method

.method public setHealthy(I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mHealthy:I

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    iput p1, p0, Lmiui/telephony/dtmf/DTMFUtil;->mSampleRate:I

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFUtil;->initPrecalculatedCosines()V

    return-void
.end method
