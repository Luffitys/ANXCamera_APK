.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor <init>(I[J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ltz p3, :cond_27

    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 p3, p3, -0x4

    if-nez v0, :cond_10

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x1

    if-ltz v1, :cond_1e

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1e

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_1e
    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_26
    goto :goto_1

    :cond_27
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_40

    if-lez v1, :cond_40

    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    sub-long v8, v2, v5

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v1, :cond_3b

    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-static {v7, v13, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v11, v1, v10

    int-to-long v11, v11

    div-long v11, v8, v11

    sub-long/2addr v8, v11

    const-wide v14, 0xffffffffffL

    cmp-long v14, v11, v14

    if-lez v14, :cond_34

    const-wide v11, 0xffffffffffL

    :cond_34
    or-long v14, v11, p2

    aput-wide v14, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_3b
    add-int/2addr v4, v1

    array-length v10, v7

    if-le v4, v10, :cond_40

    array-length v4, v7

    :cond_40
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public clearTime()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-wide/16 v3, -0x1

    if-gtz v2, :cond_b

    return-wide v3

    :cond_b
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v2, :cond_3d

    aget-wide v9, v1, v8

    const-wide/high16 v11, 0xff000000000000L

    and-long/2addr v9, v11

    const/16 v11, 0x30

    shr-long/2addr v9, v11

    aget-wide v11, v1, v8

    const-wide/high16 v13, -0x100000000000000L

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shr-long/2addr v11, v13

    and-long v13, v11, p1

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_3a

    and-long v13, v9, p1

    cmp-long v13, v13, p3

    if-nez v13, :cond_3a

    add-int/lit8 v7, v7, 0x1

    aget-wide v13, v1, v8

    const-wide v15, 0xffffffffffL

    and-long/2addr v13, v15

    add-long/2addr v5, v13

    :cond_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_3d
    if-gtz v7, :cond_40

    return-wide v3

    :cond_40
    if-eqz p5, :cond_45

    const/4 v3, 0x0

    aput v7, p5, v3

    :cond_45
    int-to-long v3, v7

    div-long v3, v5, v3

    const-wide/16 v8, 0x64

    mul-long/2addr v3, v8

    return-wide v3
.end method

.method public computeTimePerLevel()J
    .registers 10

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_9

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_9
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v1, :cond_1a

    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    int-to-long v4, v1

    div-long v4, v2, v4

    return-wide v4
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_9
    const/16 v5, 0x66

    const/16 v6, 0x46

    const/16 v7, 0x2d

    if-ge v2, v1, :cond_76

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    if-eq v8, v7, :cond_76

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x44

    if-eq v9, v7, :cond_71

    const-wide/16 v7, 0x0

    if-eq v9, v6, :cond_6f

    const/16 v6, 0x49

    if-eq v9, v6, :cond_6b

    const/16 v6, 0x5a

    if-eq v9, v6, :cond_67

    const/16 v6, 0x64

    if-eq v9, v6, :cond_63

    if-eq v9, v5, :cond_61

    const/16 v5, 0x69

    if-eq v9, v5, :cond_5d

    const/16 v5, 0x7a

    if-eq v9, v5, :cond_59

    const/16 v5, 0x4f

    if-eq v9, v5, :cond_55

    const/16 v5, 0x50

    if-eq v9, v5, :cond_51

    const/16 v5, 0x6f

    if-eq v9, v5, :cond_4d

    const/16 v5, 0x70

    if-eq v9, v5, :cond_49

    goto :goto_75

    :cond_49
    const-wide/high16 v5, 0x4000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_4d
    const-wide/high16 v5, 0x1000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_51
    const-wide/high16 v5, 0x400000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_55
    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_59
    const-wide/high16 v5, 0x3000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_5d
    const-wide/high16 v5, 0x8000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_61
    or-long/2addr v3, v7

    goto :goto_75

    :cond_63
    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_67
    const-wide/high16 v5, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v3, v5

    goto :goto_75

    :cond_6b
    const-wide/high16 v5, 0x800000000000000L

    or-long/2addr v3, v5

    goto :goto_75

    :cond_6f
    or-long/2addr v3, v7

    goto :goto_75

    :cond_71
    const-wide/high16 v5, 0x200000000000000L

    or-long/2addr v3, v5

    nop

    :goto_75
    goto :goto_9

    :cond_76
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    :cond_7a
    :goto_7a
    const/16 v10, 0x39

    const/4 v11, 0x4

    const/16 v12, 0x41

    const/16 v13, 0x61

    const/16 v14, 0x30

    if-ge v2, v1, :cond_b3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-eq v15, v7, :cond_b1

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v8, v11

    move/from16 v15, v16

    if-lt v15, v14, :cond_9b

    if-gt v15, v10, :cond_9b

    add-int/lit8 v10, v15, -0x30

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_7a

    :cond_9b
    if-lt v15, v13, :cond_a6

    if-gt v15, v5, :cond_a6

    add-int/lit8 v16, v15, -0x61

    add-int/lit8 v10, v16, 0xa

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_7a

    :cond_a6
    if-lt v15, v12, :cond_7a

    if-gt v15, v6, :cond_7a

    add-int/lit8 v16, v15, -0x41

    add-int/lit8 v10, v16, 0xa

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_7a

    :cond_b1
    move/from16 v15, v16

    :cond_b3
    add-int/lit8 v2, v2, 0x1

    const/16 v15, 0x28

    shl-long v15, v8, v15

    const-wide v17, 0xff0000000000L

    and-long v15, v15, v17

    or-long/2addr v3, v15

    const-wide/16 v15, 0x0

    :goto_c3
    if-ge v2, v1, :cond_112

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v18, v6

    if-eq v6, v7, :cond_110

    add-int/lit8 v2, v2, 0x1

    shl-long/2addr v15, v11

    move/from16 v6, v18

    if-lt v6, v14, :cond_e2

    if-gt v6, v10, :cond_e2

    add-int/lit8 v7, v6, -0x30

    int-to-long v10, v7

    add-long/2addr v15, v10

    const/16 v6, 0x46

    const/16 v7, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_c3

    :cond_e2
    if-lt v6, v13, :cond_f4

    if-gt v6, v5, :cond_f4

    add-int/lit8 v7, v6, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v10, v7

    add-long/2addr v15, v10

    const/16 v6, 0x46

    const/16 v7, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_c3

    :cond_f4
    if-lt v6, v12, :cond_107

    const/16 v7, 0x46

    if-gt v6, v7, :cond_109

    add-int/lit8 v10, v6, -0x41

    add-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    add-long/2addr v15, v10

    move v6, v7

    const/16 v7, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_c3

    :cond_107
    const/16 v7, 0x46

    :cond_109
    move v6, v7

    const/16 v7, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_c3

    :cond_110
    move/from16 v6, v18

    :cond_112
    move-object/from16 v5, p0

    iget-object v6, v5, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v10, 0xffffffffffL

    and-long/2addr v10, v15

    or-long/2addr v10, v3

    aput-wide v10, v6, p1

    return-void
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .registers 15

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v5, v5

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit8 v7, v5, 0x3

    const/4 v8, 0x1

    add-int/2addr v7, v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x4

    if-eq v7, v8, :cond_44

    if-eq v7, v9, :cond_3e

    if-eq v7, v10, :cond_38

    if-eq v7, v11, :cond_32

    goto :goto_49

    :cond_32
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_38
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_3e
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_44
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_49
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_52

    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_5b

    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5b
    and-int/lit8 v7, v6, 0x3

    add-int/2addr v7, v8

    if-eq v7, v8, :cond_79

    if-eq v7, v9, :cond_73

    if-eq v7, v10, :cond_6d

    if-eq v7, v11, :cond_67

    goto :goto_7e

    :cond_67
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_6d
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_73
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_79
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7e
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_87

    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_87
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_90

    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_90
    const/16 v7, 0x2d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v8, v4

    invoke-direct {p0, v8, v9, v11, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x24

    invoke-direct {p0, v2, v3, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    return-void
.end method

.method public getDurationAt(I)J
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .registers 6

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1a

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    return-void

    :cond_1a
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more step durations than available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 6

    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method
