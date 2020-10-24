.class public Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final F_THRESHOLD:F = 0.5f

.field private static final Max_Express_Num:I = 0x239

.field private static final Max_Outline_Num:I = 0x9a

.field private static final OUTLINE_THRESHOLD_VALUE:F = 0.8f


# instance fields
.field private drumStatus:F

.field private expWeights:[F

.field private eyeBlink:I

.field private eyeBrowRaise:I

.field private face:Lcom/arcsoft/avatar2/AvatarConfig$ASRect;

.field private faceCount:I

.field private faceOrientations:[F

.field private headPoseLr:I

.field private isMirror:Z

.field private mouthOpen:I

.field private nodHead:I

.field private orientation:I

.field private orientationLeftEyes:[F

.field private orientationRightEyes:[F

.field private orientations:[F

.field private outlines:[Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

.field private pitchStatus:I

.field private processHeight:I

.field private processWidth:I

.field private result:I

.field private rollStatus:I

.field private shelterFlags:[F

.field private tongueStatus:I

.field private yawStatus:I

.field private zoomInScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9a

    new-array v0, v0, [Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    iput-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->outlines:[Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->mouthOpen:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBlink:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBrowRaise:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->nodHead:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->headPoseLr:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->yawStatus:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->rollStatus:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->pitchStatus:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->processHeight:I

    iput p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->processWidth:I

    iput p3, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientation:I

    iput-boolean p4, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->isMirror:Z

    const/16 p1, 0x9a

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    new-array p2, p1, [Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    iput-object p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->outlines:[Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    new-instance p4, Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    invoke-direct {p4}, Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;-><init>()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->outlines:[Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    aput-object p4, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;

    invoke-direct {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->face:Lcom/arcsoft/avatar2/AvatarConfig$ASRect;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceOrientations:[F

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->result:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceCount:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->zoomInScale:F

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->mouthOpen:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBlink:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBrowRaise:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->nodHead:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->headPoseLr:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->yawStatus:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->rollStatus:I

    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->pitchStatus:I

    return-void
.end method

.method public static getMaxExpressNum()I
    .locals 1

    const/16 v0, 0x239

    return v0
.end method


# virtual methods
.method public checkFaceBlocking()Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    array-length v12, v11

    if-ge v2, v12, :cond_8

    if-ltz v2, :cond_0

    const/16 v12, 0x12

    if-gt v2, v12, :cond_0

    aget v11, v11, v2

    add-float/2addr v3, v11

    goto :goto_1

    :cond_0
    const/16 v11, 0x13

    if-lt v2, v11, :cond_1

    const/16 v11, 0x24

    if-gt v2, v11, :cond_1

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v4, v11

    goto :goto_1

    :cond_1
    const/16 v11, 0x25

    if-lt v2, v11, :cond_2

    const/16 v11, 0x2e

    if-gt v2, v11, :cond_2

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v5, v11

    goto :goto_1

    :cond_2
    const/16 v11, 0x2f

    if-lt v2, v11, :cond_3

    const/16 v11, 0x38

    if-gt v2, v11, :cond_3

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v6, v11

    goto :goto_1

    :cond_3
    const/16 v11, 0x39

    if-lt v2, v11, :cond_4

    const/16 v11, 0x44

    if-gt v2, v11, :cond_4

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v7, v11

    goto :goto_1

    :cond_4
    const/16 v11, 0x45

    if-lt v2, v11, :cond_5

    const/16 v11, 0x50

    if-gt v2, v11, :cond_5

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v8, v11

    goto :goto_1

    :cond_5
    const/16 v11, 0x51

    if-lt v2, v11, :cond_6

    const/16 v11, 0x5c

    if-gt v2, v11, :cond_6

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v9, v11

    goto :goto_1

    :cond_6
    const/16 v11, 0x5d

    if-lt v2, v11, :cond_7

    const/16 v11, 0x70

    if-gt v2, v11, :cond_7

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v10, v11

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    const/4 v2, 0x7

    :goto_2
    const/16 v11, 0x1d

    if-gt v2, v11, :cond_9

    iget-object v11, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v11, v11, v2

    add-float/2addr v1, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const/high16 p0, 0x41980000    # 19.0f

    div-float/2addr v3, p0

    const/high16 p0, 0x41900000    # 18.0f

    div-float/2addr v4, p0

    const/high16 p0, 0x41200000    # 10.0f

    div-float/2addr v5, p0

    div-float/2addr v6, p0

    const/high16 p0, 0x41400000    # 12.0f

    div-float/2addr v7, p0

    div-float/2addr v8, p0

    div-float/2addr v9, p0

    const/high16 p0, 0x41a00000    # 20.0f

    div-float/2addr v10, p0

    const/high16 p0, 0x41b80000    # 23.0f

    div-float/2addr v1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v2, v3, p0

    const/4 v11, 0x1

    if-lez v2, :cond_a

    cmpl-float v2, v5, p0

    if-lez v2, :cond_a

    cmpl-float v2, v7, p0

    if-lez v2, :cond_a

    return v11

    :cond_a
    cmpl-float v2, v4, p0

    if-lez v2, :cond_b

    cmpl-float v2, v6, p0

    if-lez v2, :cond_b

    cmpl-float p0, v8, p0

    if-lez p0, :cond_b

    return v11

    :cond_b
    const p0, 0x3ecccccd    # 0.4f

    cmpl-float v2, v5, p0

    if-lez v2, :cond_c

    cmpl-float v2, v6, p0

    if-lez v2, :cond_c

    cmpl-float v2, v8, p0

    if-lez v2, :cond_c

    cmpl-float v2, v7, p0

    if-lez v2, :cond_c

    return v11

    :cond_c
    cmpl-float v1, v1, p0

    if-lez v1, :cond_d

    cmpl-float v2, v10, p0

    if-lez v2, :cond_d

    cmpl-float v2, v9, p0

    if-lez v2, :cond_d

    return v11

    :cond_d
    cmpl-float v2, v3, p0

    if-lez v2, :cond_e

    cmpl-float p0, v4, p0

    if-lez p0, :cond_e

    if-lez v1, :cond_e

    return v11

    :cond_e
    return v0
.end method

.method public checkOutLineInfo()I
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceOrientations:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    const/high16 v5, -0x3d240000    # -110.0f

    cmpl-float v5, v2, v5

    const/16 v6, 0x9

    const/high16 v7, -0x3e600000    # -20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    if-ltz v5, :cond_0

    const/high16 v5, -0x3d740000    # -70.0f

    cmpg-float v5, v2, v5

    if-lez v5, :cond_4

    :cond_0
    cmpl-float v5, v2, v7

    if-ltz v5, :cond_1

    cmpg-float v5, v2, v8

    if-lez v5, :cond_4

    :cond_1
    const/high16 v5, 0x43200000    # 160.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    const/high16 v5, 0x43340000    # 180.0f

    cmpg-float v5, v2, v5

    if-lez v5, :cond_4

    :cond_2
    const/high16 v5, -0x3ccc0000    # -180.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_3

    const/high16 v5, -0x3ce00000    # -160.0f

    cmpg-float v5, v2, v5

    if-lez v5, :cond_4

    :cond_3
    const/high16 v5, 0x428c0000    # 70.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_11

    const/high16 v5, 0x42dc0000    # 110.0f

    cmpg-float v2, v2, v5

    if-lez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    cmpg-float v2, v7, v3

    if-gtz v2, :cond_11

    cmpg-float v2, v3, v8

    if-lez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    cmpg-float v2, v7, v0

    if-gtz v2, :cond_11

    cmpg-float v0, v0, v8

    if-lez v0, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    const/16 v5, 0x24

    if-gt v2, v5, :cond_7

    iget-object v5, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v5, v5, v2

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/high16 v2, 0x42100000    # 36.0f

    div-float/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fFaceValue = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CheckOutLine"

    invoke-static {v5, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v3, v2

    if-lez v3, :cond_8

    const/4 p0, 0x6

    return p0

    :cond_8
    const/16 v3, 0x45

    move v6, v0

    :goto_1
    const/16 v7, 0x50

    if-gt v3, v7, :cond_9

    iget-object v7, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v7, v7, v3

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fLeftEyeValue = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x39

    move v9, v0

    :goto_2
    const/16 v10, 0x44

    if-gt v7, v10, :cond_a

    iget-object v10, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v10, v10, v7

    add-float/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    div-float/2addr v9, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fRightEyeValue = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v3, v9, v6

    if-lez v3, :cond_b

    const/4 v4, 0x3

    move v6, v9

    :cond_b
    const/16 v3, 0x5d

    move v7, v0

    :goto_3
    const/16 v9, 0x70

    if-gt v3, v9, :cond_c

    iget-object v9, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v9, v9, v3

    add-float/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    div-float/2addr v7, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fMouthEyeValue = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v3, v7, v6

    if-lez v3, :cond_d

    const/4 v4, 0x4

    move v6, v7

    :cond_d
    const/16 v3, 0x51

    :goto_4
    const/16 v7, 0x77

    if-gt v3, v7, :cond_e

    iget-object v7, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    aget v7, v7, v3

    add-float/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    const/high16 p0, 0x421c0000    # 39.0f

    div-float/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fNOSEEyeValue = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float p0, v0, v6

    if-lez p0, :cond_f

    const/4 v4, 0x5

    move v6, v0

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fMax = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " res = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float p0, v6, v2

    if-lez p0, :cond_10

    move v1, v4

    :cond_10
    return v1

    :cond_11
    :goto_5
    return v6
.end method

.method public getExpWeights()[F
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->expWeights:[F

    return-object p0
.end method

.method public getEyeBlink()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBlink:I

    return p0
.end method

.method public getFaceCount()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceCount:I

    return p0
.end method

.method public getHeadPoseLr()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->headPoseLr:I

    return p0
.end method

.method public getHeadRollStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->rollStatus:I

    return p0
.end method

.method public getMouthOpen()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->mouthOpen:I

    return p0
.end method

.method public getOrientationLeftEyes()[F
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationLeftEyes:[F

    return-object p0
.end method

.method public getOrientationRightEyes()[F
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationRightEyes:[F

    return-object p0
.end method

.method public getOrientations()[F
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientations:[F

    return-object p0
.end method

.method public getPitchStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->pitchStatus:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mouthOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->mouthOpen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eyeBlink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBlink:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eyeBrowRaise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->eyeBrowRaise:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodHead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->nodHead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headPoseLr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->headPoseLr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yawStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->yawStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rollStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->rollStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pitchStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->pitchStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTongueStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->tongueStatus:I

    return p0
.end method

.method public setEmpty()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->processHeight:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->processWidth:I

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientation:I

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->isMirror:Z

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceCount:I

    iget-object v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->outlines:[Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    iput v4, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;->x:F

    iput v4, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASPointF;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->face:Lcom/arcsoft/avatar2/AvatarConfig$ASRect;

    iput v0, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;->bottom:I

    iput v0, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;->right:I

    iput v0, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;->top:I

    iput v0, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASRect;->left:I

    iget-object v1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->faceOrientations:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    iput v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->result:I

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientations:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationLeftEyes:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationRightEyes:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->expWeights:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    iput v4, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->zoomInScale:F

    return-void
.end method

.method public setExpWeights([F)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->expWeights:[F

    return-void
.end method

.method public setOrientationLeftEyes([F)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationLeftEyes:[F

    return-void
.end method

.method public setOrientationRightEyes([F)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientationRightEyes:[F

    return-void
.end method

.method public setOrientations([F)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->orientations:[F

    return-void
.end method

.method public setTongueStatus(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->tongueStatus:I

    return-void
.end method

.method public shelterIsNull()Z
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterFlags:[F

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
