.class final Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;
.super Lcom/android/framework/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .registers 1

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .registers 14

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :goto_7
    const/4 v1, 0x0

    :goto_8
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    move v1, p0

    if-ltz p0, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_8

    :cond_19
    move-wide p0, v4

    :cond_1a
    if-nez p2, :cond_1e

    const/4 v2, 0x0

    return v2

    :cond_1e
    add-int/lit8 p2, p2, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_3c

    if-nez p2, :cond_2a

    return v1

    :cond_2a
    add-int/lit8 p2, p2, -0x1

    const/16 v4, -0x3e

    if-lt v1, v4, :cond_3b

    add-long/2addr v2, p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v5, :cond_39

    move-wide p0, v2

    goto :goto_3b

    :cond_39
    move-wide p0, v2

    goto :goto_97

    :cond_3b
    :goto_3b
    return v6

    :cond_3c
    const/16 v7, -0x10

    if-ge v1, v7, :cond_6a

    const/4 v7, 0x2

    if-ge p2, v7, :cond_48

    invoke-static {p0, p1, v1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    :cond_48
    add-int/lit8 p2, p2, -0x2

    add-long v7, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v5, :cond_69

    const/16 p1, -0x60

    if-ne v1, v4, :cond_58

    if-lt p0, p1, :cond_69

    :cond_58
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5e

    if-ge p0, p1, :cond_69

    :cond_5e
    add-long/2addr v2, v7

    invoke-static {v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_67

    move-wide v7, v2

    goto :goto_69

    :cond_67
    move-wide p0, v2

    goto :goto_97

    :cond_69
    :goto_69
    return v6

    :cond_6a
    const/4 v4, 0x3

    if-ge p2, v4, :cond_72

    invoke-static {p0, p1, v1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    :cond_72
    add-int/lit8 p2, p2, -0x3

    add-long v7, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gt p0, v5, :cond_9a

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p0, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_9a

    add-long v9, v7, v2

    invoke-static {v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-gt p1, v5, :cond_99

    add-long v7, v9, v2

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_96

    goto :goto_9a

    :cond_96
    move-wide p0, v7

    :goto_97
    goto/16 :goto_7

    :cond_99
    move-wide v7, v9

    :cond_9a
    :goto_9a
    return v6
.end method

.method private static partialIsValidUtf8([BJI)I
    .registers 15

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v1, v0

    add-long/2addr p1, v1

    :goto_7
    const/4 v1, 0x0

    :goto_8
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move v1, p1

    if-ltz p1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_8

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1e

    const/4 v2, 0x0

    return v2

    :cond_1e
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_3c

    if-nez p3, :cond_2a

    return v1

    :cond_2a
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x3e

    if-lt v1, v4, :cond_3b

    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_39

    move-wide p1, v2

    goto :goto_3b

    :cond_39
    move-wide p1, v2

    goto :goto_99

    :cond_3b
    :goto_3b
    return v6

    :cond_3c
    const/16 v7, -0x10

    if-ge v1, v7, :cond_6b

    const/4 v7, 0x2

    if-ge p3, v7, :cond_48

    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    :cond_48
    add-int/lit8 p3, p3, -0x2

    add-long v7, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    if-gt p1, v5, :cond_6a

    const/16 p1, -0x60

    if-ne v1, v4, :cond_59

    if-lt p2, p1, :cond_6a

    :cond_59
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5f

    if-ge p2, p1, :cond_6a

    :cond_5f
    add-long/2addr v2, v7

    invoke-static {p0, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_68

    move-wide v7, v2

    goto :goto_6a

    :cond_68
    move-wide p1, v2

    goto :goto_99

    :cond_6a
    :goto_6a
    return v6

    :cond_6b
    const/4 v4, 0x3

    if-ge p3, v4, :cond_73

    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    :cond_73
    add-int/lit8 p3, p3, -0x3

    add-long v7, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    if-gt p1, v5, :cond_9c

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p2, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_9c

    add-long v9, v7, v2

    invoke-static {p0, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v5, :cond_9b

    add-long v7, v9, v2

    invoke-static {p0, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_98

    goto :goto_9c

    :cond_98
    move-wide p1, v7

    :goto_99
    goto/16 :goto_7

    :cond_9b
    move-wide v7, v9

    :cond_9c
    :goto_9c
    return v6
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .registers 10

    move v0, p2

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    const/4 v1, 0x0

    return v1

    :cond_7
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x7

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    move v3, v1

    :goto_f
    if-lez v3, :cond_21

    const-wide/16 v4, 0x1

    add-long/2addr v4, p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1d

    sub-int p0, v1, v3

    return p0

    :cond_1d
    add-int/lit8 v3, v3, -0x1

    move-wide p0, v4

    goto :goto_f

    :cond_21
    sub-int/2addr v0, v1

    :goto_22
    if-lt v0, v2, :cond_3a

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v3

    const-wide v5, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    const-wide/16 v3, 0x8

    add-long/2addr p0, v3

    add-int/lit8 v0, v0, -0x8

    goto :goto_22

    :cond_3a
    sub-int v2, p2, v0

    return v2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .registers 7

    const/16 v0, 0x10

    if-ge p3, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p3, :cond_17

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v1

    goto :goto_7

    :cond_17
    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .registers 7

    if-eqz p3, :cond_28

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1f

    const/4 v0, 0x2

    if-ne p3, v0, :cond_19

    nop

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    :cond_28
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8;->access$1200(I)I

    move-result v0

    return v0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .registers 8

    if-eqz p4, :cond_28

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1f

    const/4 v0, 0x2

    if-ne p4, v0, :cond_19

    nop

    invoke-static {p0, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    invoke-static {p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    invoke-static {p0, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    :cond_28
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->access$1200(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    or-int v2, p2, v1

    array-length v3, v0

    sub-int v3, v3, p2

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_d1

    move/from16 v2, p2

    add-int v5, v2, v1

    new-array v12, v1, [C

    const/4 v6, 0x0

    :goto_16
    if-ge v2, v5, :cond_2d

    int-to-long v7, v2

    invoke-static {v0, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v7

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v8

    if-nez v8, :cond_24

    goto :goto_2d

    :cond_24
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v7, v12, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v6, v8

    goto :goto_16

    :cond_2d
    :goto_2d
    move v11, v6

    :goto_2e
    if-ge v2, v5, :cond_cb

    add-int/lit8 v6, v2, 0x1

    int-to-long v7, v2

    invoke-static {v0, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-eqz v7, :cond_5d

    add-int/lit8 v7, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_42
    if-ge v6, v5, :cond_59

    int-to-long v8, v6

    invoke-static {v0, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v8

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v8}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_50

    goto :goto_59

    :cond_50
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v7, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v8, v12, v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v7, v9

    goto :goto_42

    :cond_59
    :goto_59
    move v2, v6

    move v11, v7

    goto/16 :goto_c4

    :cond_5d
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v7

    if-eqz v7, :cond_79

    if-ge v6, v5, :cond_74

    add-int/lit8 v7, v6, 0x1

    int-to-long v8, v6

    invoke-static {v0, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v6

    add-int/lit8 v8, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v2, v6, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v2, v7

    move v11, v8

    goto :goto_c4

    :cond_74
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_79
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v7

    if-eqz v7, :cond_9e

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_99

    add-int/lit8 v7, v6, 0x1

    int-to-long v8, v6

    invoke-static {v0, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v6

    add-int/lit8 v8, v7, 0x1

    int-to-long v9, v7

    invoke-static {v0, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v7

    add-int/lit8 v9, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v2, v6, v7, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v2, v8

    move v11, v9

    goto :goto_c4

    :cond_99
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_9e
    add-int/lit8 v7, v5, -0x2

    if-ge v6, v7, :cond_c6

    add-int/lit8 v7, v6, 0x1

    int-to-long v8, v6

    invoke-static {v0, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v8

    add-int/lit8 v6, v7, 0x1

    int-to-long v9, v7

    invoke-static {v0, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v9

    add-int/lit8 v13, v6, 0x1

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v10

    add-int/lit8 v14, v11, 0x1

    move v6, v2

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v12

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v6 .. v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v14, v4

    move v2, v13

    move v11, v14

    :goto_c4
    goto/16 :goto_2e

    :cond_c6
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_cb
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12, v3, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    :cond_d1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const-string v3, "buffer length=%d, index=%d, size=%d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_da

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    int-to-long v7, v1

    add-long/2addr v7, v5

    new-array v2, v1, [C

    const/4 v9, 0x0

    :goto_1c
    cmp-long v10, v5, v7

    const-wide/16 v15, 0x1

    if-gez v10, :cond_35

    invoke-static {v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v10}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_35

    :cond_2d
    add-long/2addr v5, v15

    add-int/lit8 v11, v9, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v10, v2, v9}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v9, v11

    goto :goto_1c

    :cond_35
    :goto_35
    move v14, v9

    :goto_36
    cmp-long v9, v5, v7

    if-gez v9, :cond_d4

    add-long v9, v5, v15

    invoke-static {v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v5}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v6

    if-eqz v6, :cond_66

    add-int/lit8 v6, v14, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v5, v2, v14}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_4b
    cmp-long v11, v9, v7

    if-gez v11, :cond_62

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v12

    if-nez v12, :cond_5a

    goto :goto_62

    :cond_5a
    add-long/2addr v9, v15

    add-int/lit8 v12, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v11, v2, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v6, v12

    goto :goto_4b

    :cond_62
    :goto_62
    move v14, v6

    move-wide v5, v9

    goto/16 :goto_cd

    :cond_66
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v5}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v6

    if-eqz v6, :cond_83

    cmp-long v6, v9, v7

    if-gez v6, :cond_7e

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    add-int/lit8 v9, v14, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v5, v6, v2, v14}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v14, v9

    move-wide v5, v11

    goto :goto_cd

    :cond_7e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_83
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v5}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v6

    if-eqz v6, :cond_a8

    sub-long v11, v7, v15

    cmp-long v6, v9, v11

    if-gez v6, :cond_a3

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    add-long v9, v11, v15

    invoke-static {v11, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    add-int/lit8 v12, v14, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v5, v6, v11, v2, v14}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move-wide v5, v9

    move v14, v12

    goto :goto_cd

    :cond_a3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_a8
    const-wide/16 v11, 0x2

    sub-long v11, v7, v11

    cmp-long v6, v9, v11

    if-gez v6, :cond_cf

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    add-long v17, v11, v15

    invoke-static {v11, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    add-long v19, v17, v15

    invoke-static/range {v17 .. v18}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    add-int/lit8 v6, v14, 0x1

    move v9, v5

    move-object v13, v2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v9 .. v14}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v6, v4

    move v14, v6

    move-wide/from16 v5, v19

    :goto_cd
    goto/16 :goto_36

    :cond_cf
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_d4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    :cond_da
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v3, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_15d

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_15d

    const/4 v11, 0x0

    :goto_1a
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v11, v8, :cond_36

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-ge v15, v12, :cond_34

    add-long v12, v4, v13

    move/from16 v15, v16

    int-to-byte v14, v15

    invoke-static {v1, v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v11, v11, 0x1

    move-wide v4, v12

    goto :goto_1a

    :cond_34
    move/from16 v15, v16

    :cond_36
    if-ne v11, v8, :cond_3a

    long-to-int v9, v4

    return v9

    :cond_3a
    :goto_3a
    if-ge v11, v8, :cond_15b

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_54

    cmp-long v16, v4, v6

    if-gez v16, :cond_54

    add-long v16, v4, v13

    int-to-byte v12, v15

    invoke-static {v1, v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v4, v16

    const/16 v12, 0x80

    move-wide/from16 v16, v6

    goto/16 :goto_10b

    :cond_54
    const/16 v12, 0x800

    if-ge v15, v12, :cond_7b

    const-wide/16 v16, 0x2

    sub-long v16, v6, v16

    cmp-long v12, v4, v16

    if-gtz v12, :cond_7b

    add-long v2, v4, v13

    ushr-int/lit8 v12, v15, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v2, v13

    and-int/lit8 v12, v15, 0x3f

    const/16 v13, 0x80

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-static {v1, v2, v3, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v16, v6

    const/16 v12, 0x80

    goto/16 :goto_10b

    :cond_7b
    const v2, 0xdfff

    const v3, 0xd800

    if-lt v15, v3, :cond_85

    if-ge v2, v15, :cond_b9

    :cond_85
    const-wide/16 v12, 0x3

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_b9

    const-wide/16 v2, 0x1

    add-long v13, v4, v2

    ushr-int/lit8 v12, v15, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v13, v2

    ushr-int/lit8 v12, v15, 0x6

    and-int/lit8 v12, v12, 0x3f

    const/16 v2, 0x80

    or-int/lit16 v3, v12, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v13, v14, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v12, 0x1

    add-long v19, v4, v12

    and-int/lit8 v3, v15, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-static {v1, v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v16, v6

    move-wide/from16 v4, v19

    const/16 v12, 0x80

    goto :goto_10b

    :cond_b9
    const-wide/16 v12, 0x4

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_124

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_11a

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-static {v15, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move-wide/from16 v16, v6

    const-wide/16 v12, 0x1

    add-long v6, v4, v12

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v6, v12

    ushr-int/lit8 v14, v2, 0xc

    and-int/lit8 v14, v14, 0x3f

    const/16 v12, 0x80

    or-int/lit16 v13, v14, 0x80

    int-to-byte v13, v13

    invoke-static {v1, v6, v7, v13}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v6, 0x1

    add-long v13, v4, v6

    ushr-int/lit8 v18, v2, 0x6

    and-int/lit8 v6, v18, 0x3f

    or-int/2addr v6, v12

    int-to-byte v6, v6

    invoke-static {v1, v4, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    const-wide/16 v6, 0x1

    add-long v4, v13, v6

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v6, v12

    int-to-byte v6, v6

    invoke-static {v1, v13, v14, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    nop

    :goto_10b
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v6, v16

    const-wide/16 v13, 0x1

    goto/16 :goto_3a

    :cond_117
    move-wide/from16 v16, v6

    goto :goto_11c

    :cond_11a
    move-wide/from16 v16, v6

    :goto_11c
    new-instance v2, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v3, v11, -0x1

    invoke-direct {v2, v3, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    :cond_124
    move-wide/from16 v16, v6

    if-gt v3, v15, :cond_140

    if-gt v15, v2, :cond_140

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_13a

    add-int/lit8 v2, v11, 0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-nez v2, :cond_140

    :cond_13a
    new-instance v2, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v11, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    :cond_140
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15b
    long-to-int v2, v4

    return v2

    :cond_15d
    move-wide/from16 v16, v6

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, p3, p4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_178

    const/4 v9, 0x0

    :goto_24
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_40

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-ge v15, v12, :cond_3e

    add-long v12, v4, v13

    move/from16 v15, v16

    int-to-byte v14, v15

    invoke-static {v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_24

    :cond_3e
    move/from16 v15, v16

    :cond_40
    if-ne v9, v8, :cond_49

    sub-long v10, v4, v2

    long-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_49
    :goto_49
    if-ge v9, v8, :cond_16d

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_66

    cmp-long v16, v4, v6

    if-gez v16, :cond_66

    add-long v16, v4, v13

    int-to-byte v12, v15

    invoke-static {v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v18, v13

    move v13, v15

    move-wide/from16 v4, v16

    move-wide/from16 v16, v2

    const/16 v3, 0x80

    goto/16 :goto_11f

    :cond_66
    const/16 v12, 0x800

    if-ge v15, v12, :cond_91

    const-wide/16 v16, 0x2

    sub-long v16, v6, v16

    cmp-long v12, v4, v16

    if-gtz v12, :cond_91

    move-wide/from16 v16, v2

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v13

    and-int/lit8 v5, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    move-wide/from16 v18, v13

    move v13, v15

    const/16 v3, 0x80

    goto/16 :goto_11f

    :cond_91
    move-wide/from16 v16, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_9d

    if-ge v1, v15, :cond_cc

    :cond_9d
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_cc

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v3, v1, v13

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    add-long v1, v3, v13

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v1

    move-wide/from16 v18, v13

    move v13, v15

    const/16 v3, 0x80

    goto :goto_11f

    :cond_cc
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_136

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_12d

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    invoke-static {v15, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-eqz v1, :cond_12a

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    move v12, v2

    add-long v2, v4, v13

    ushr-int/lit8 v13, v1, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    invoke-static {v4, v5, v13}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    const-wide/16 v13, 0x1

    add-long v4, v2, v13

    ushr-int/lit8 v19, v1, 0xc

    and-int/lit8 v13, v19, 0x3f

    const/16 v14, 0x80

    or-int/2addr v13, v14

    int-to-byte v13, v13

    invoke-static {v2, v3, v13}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move v13, v15

    const-wide/16 v2, 0x1

    add-long v14, v4, v2

    ushr-int/lit8 v19, v1, 0x6

    and-int/lit8 v2, v19, 0x3f

    const/16 v3, 0x80

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    const-wide/16 v18, 0x1

    add-long v4, v14, v18

    and-int/lit8 v2, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v14, v15, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    nop

    :goto_11f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move v12, v3

    move-wide/from16 v2, v16

    move-wide/from16 v13, v18

    goto/16 :goto_49

    :cond_12a
    move v12, v2

    move v13, v15

    goto :goto_12e

    :cond_12d
    move v13, v15

    :goto_12e
    new-instance v1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v9, -0x1

    invoke-direct {v1, v2, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_136
    move v13, v15

    move v3, v13

    if-gt v2, v3, :cond_152

    if-gt v3, v1, :cond_152

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_14c

    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-nez v1, :cond_152

    :cond_14c
    new-instance v1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v1, v9, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    :cond_152
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16d
    move-wide/from16 v16, v2

    sub-long v1, v4, v16

    long-to-int v1, v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_178
    move-wide/from16 v16, v2

    move-object v2, v1

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, -0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 22

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    array-length v5, v1

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    if-ltz v4, :cond_b6

    int-to-long v4, v2

    int-to-long v6, v3

    if-eqz v0, :cond_ae

    cmp-long v8, v4, v6

    if-ltz v8, :cond_18

    return v0

    :cond_18
    int-to-byte v8, v0

    const/16 v9, -0x20

    const/4 v10, -0x1

    const/16 v11, -0x41

    const-wide/16 v12, 0x1

    if-ge v8, v9, :cond_33

    const/16 v9, -0x3e

    if-lt v8, v9, :cond_32

    add-long/2addr v12, v4

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_2f

    move-wide v4, v12

    goto :goto_32

    :cond_2f
    move-wide v4, v12

    goto/16 :goto_ae

    :cond_32
    :goto_32
    return v10

    :cond_33
    const/16 v14, -0x10

    if-ge v8, v14, :cond_67

    shr-int/lit8 v14, v0, 0x8

    not-int v14, v14

    int-to-byte v14, v14

    if-nez v14, :cond_4d

    add-long v15, v4, v12

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    cmp-long v4, v15, v6

    if-ltz v4, :cond_4c

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v8, v14}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    :cond_4c
    move-wide v4, v15

    :cond_4d
    if-gt v14, v11, :cond_66

    const/16 v15, -0x60

    if-ne v8, v9, :cond_55

    if-lt v14, v15, :cond_66

    :cond_55
    const/16 v9, -0x13

    if-ne v8, v9, :cond_5b

    if-ge v14, v15, :cond_66

    :cond_5b
    add-long/2addr v12, v4

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_64

    move-wide v4, v12

    goto :goto_66

    :cond_64
    move-wide v4, v12

    goto :goto_ae

    :cond_66
    :goto_66
    return v10

    :cond_67
    shr-int/lit8 v9, v0, 0x8

    not-int v9, v9

    int-to-byte v9, v9

    const/4 v14, 0x0

    if-nez v9, :cond_7f

    add-long v15, v4, v12

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v9

    cmp-long v4, v15, v6

    if-ltz v4, :cond_7d

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    :cond_7d
    move-wide v4, v15

    goto :goto_82

    :cond_7f
    shr-int/lit8 v15, v0, 0x10

    int-to-byte v14, v15

    :goto_82
    if-nez v14, :cond_94

    add-long v15, v4, v12

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    cmp-long v4, v15, v6

    if-ltz v4, :cond_93

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v8, v9, v14}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result v4

    return v4

    :cond_93
    move-wide v4, v15

    :cond_94
    if-gt v9, v11, :cond_ad

    shl-int/lit8 v15, v8, 0x1c

    add-int/lit8 v16, v9, 0x70

    add-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x1e

    if-nez v15, :cond_ad

    if-gt v14, v11, :cond_ad

    add-long/2addr v12, v4

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_ab

    move-wide v4, v12

    goto :goto_ad

    :cond_ab
    move-wide v4, v12

    goto :goto_ae

    :cond_ad
    :goto_ad
    return v10

    :cond_ae
    :goto_ae
    sub-long v8, v6, v4

    long-to-int v8, v8

    invoke-static {v1, v4, v5, v8}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result v8

    return v8

    :cond_b6
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Array length=%d, index=%d, limit=%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 20

    move/from16 v0, p1

    move/from16 v1, p3

    or-int v2, v1, p4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-ltz v2, :cond_bd

    invoke-static/range {p2 .. p2}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    sub-int v4, p4, v1

    int-to-long v4, v4

    add-long/2addr v4, v2

    if-eqz v0, :cond_b5

    cmp-long v6, v2, v4

    if-ltz v6, :cond_20

    return v0

    :cond_20
    int-to-byte v6, v0

    const/16 v7, -0x20

    const/4 v8, -0x1

    const/16 v9, -0x41

    const-wide/16 v10, 0x1

    if-ge v6, v7, :cond_3b

    const/16 v7, -0x3e

    if-lt v6, v7, :cond_3a

    add-long/2addr v10, v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_37

    move-wide v2, v10

    goto :goto_3a

    :cond_37
    move-wide v2, v10

    goto/16 :goto_b5

    :cond_3a
    :goto_3a
    return v8

    :cond_3b
    const/16 v12, -0x10

    if-ge v6, v12, :cond_6f

    shr-int/lit8 v12, v0, 0x8

    not-int v12, v12

    int-to-byte v12, v12

    if-nez v12, :cond_55

    add-long v13, v2, v10

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    cmp-long v2, v13, v4

    if-ltz v2, :cond_54

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v6, v12}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    :cond_54
    move-wide v2, v13

    :cond_55
    if-gt v12, v9, :cond_6e

    const/16 v13, -0x60

    if-ne v6, v7, :cond_5d

    if-lt v12, v13, :cond_6e

    :cond_5d
    const/16 v7, -0x13

    if-ne v6, v7, :cond_63

    if-ge v12, v13, :cond_6e

    :cond_63
    add-long/2addr v10, v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_6c

    move-wide v2, v10

    goto :goto_6e

    :cond_6c
    move-wide v2, v10

    goto :goto_b5

    :cond_6e
    :goto_6e
    return v8

    :cond_6f
    shr-int/lit8 v7, v0, 0x8

    not-int v7, v7

    int-to-byte v7, v7

    const/4 v12, 0x0

    if-nez v7, :cond_87

    add-long v13, v2, v10

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    cmp-long v2, v13, v4

    if-ltz v2, :cond_85

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    :cond_85
    move-wide v2, v13

    goto :goto_8a

    :cond_87
    shr-int/lit8 v13, v0, 0x10

    int-to-byte v12, v13

    :goto_8a
    if-nez v12, :cond_9c

    add-long v13, v2, v10

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    cmp-long v2, v13, v4

    if-ltz v2, :cond_9b

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v6, v7, v12}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result v2

    return v2

    :cond_9b
    move-wide v2, v13

    :cond_9c
    if-gt v7, v9, :cond_b4

    shl-int/lit8 v13, v6, 0x1c

    add-int/lit8 v14, v7, 0x70

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x1e

    if-nez v13, :cond_b4

    if-gt v12, v9, :cond_b4

    add-long/2addr v10, v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_b2

    move-wide v2, v10

    goto :goto_b4

    :cond_b2
    move-wide v2, v10

    goto :goto_b5

    :cond_b4
    :goto_b4
    return v8

    :cond_b5
    :goto_b5
    sub-long v6, v4, v2

    long-to-int v6, v6

    invoke-static {v2, v3, v6}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result v6

    return v6

    :cond_bd
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
