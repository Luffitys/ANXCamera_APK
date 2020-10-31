.class final Lcom/android/framework/protobuf/Utf8$SafeProcessor;
.super Lcom/android/framework/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    :goto_11
    return v0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .registers 9

    :goto_0
    if-lt p1, p2, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    move v1, p1

    if-gez p1, :cond_72

    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_21

    if-lt v0, p2, :cond_15

    return v1

    :cond_15
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_20

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_6f

    move v0, p1

    :cond_20
    return v2

    :cond_21
    const/16 v4, -0x10

    if-ge v1, v4, :cond_49

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_2e

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$1100([BII)I

    move-result p1

    return p1

    :cond_2e
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    move v5, v0

    if-gt v0, v3, :cond_48

    const/16 v0, -0x60

    if-ne v1, p1, :cond_3b

    if-lt v5, v0, :cond_48

    :cond_3b
    const/16 p1, -0x13

    if-ne v1, p1, :cond_41

    if-ge v5, v0, :cond_48

    :cond_41
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_6f

    move v4, p1

    :cond_48
    return v2

    :cond_49
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_52

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$1100([BII)I

    move-result p1

    return p1

    :cond_52
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    move v4, v0

    if-gt v0, v3, :cond_6e

    shl-int/lit8 v0, v1, 0x1c

    add-int/lit8 v5, v4, 0x70

    add-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_6e

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gt p1, v3, :cond_70

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_6f

    :cond_6e
    goto :goto_71

    :cond_6f
    goto :goto_0

    :cond_70
    move p1, v0

    :goto_71
    return v2

    :cond_72
    move p1, v0

    goto :goto_0
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

    if-ltz v2, :cond_b4

    move/from16 v2, p2

    add-int v5, v2, v1

    new-array v12, v1, [C

    const/4 v6, 0x0

    :goto_16
    if-ge v2, v5, :cond_2a

    aget-byte v7, v0, v2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v8

    if-nez v8, :cond_21

    goto :goto_2a

    :cond_21
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v7, v12, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v6, v8

    goto :goto_16

    :cond_2a
    :goto_2a
    move v11, v6

    :goto_2b
    if-ge v2, v5, :cond_ae

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v0, v2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-eqz v7, :cond_53

    add-int/lit8 v7, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3c
    if-ge v6, v5, :cond_50

    aget-byte v8, v0, v6

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v8}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_47

    goto :goto_50

    :cond_47
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v7, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v8, v12, v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v7, v9

    goto :goto_3c

    :cond_50
    :goto_50
    move v2, v6

    move v11, v7

    goto :goto_a8

    :cond_53
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v7

    if-eqz v7, :cond_6c

    if-ge v6, v5, :cond_67

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v8, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v2, v6, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v2, v7

    move v11, v8

    goto :goto_a8

    :cond_67
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_6c
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v7

    if-eqz v7, :cond_8b

    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_86

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v0, v7

    add-int/lit8 v9, v11, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v2, v6, v7, v12, v11}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v2, v8

    move v11, v9

    goto :goto_a8

    :cond_86
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_8b
    add-int/lit8 v7, v5, -0x2

    if-ge v6, v7, :cond_a9

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v0, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v9, v0, v7

    add-int/lit8 v13, v6, 0x1

    aget-byte v10, v0, v6

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

    :goto_a8
    goto :goto_2b

    :cond_a9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_ae
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12, v3, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    :cond_b4
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 15

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p3

    const/4 v2, 0x0

    add-int v3, p3, p4

    :goto_8
    const/16 v4, 0x80

    if-ge v2, v0, :cond_1f

    add-int v5, v2, v1

    if-ge v5, v3, :cond_1f

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    if-ge v5, v4, :cond_1f

    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    if-ne v2, v0, :cond_24

    add-int v4, v1, v0

    return v4

    :cond_24
    add-int/2addr v1, v2

    :goto_25
    if-ge v2, v0, :cond_108

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v4, :cond_37

    if-ge v1, v3, :cond_37

    add-int/lit8 v6, v1, 0x1

    int-to-byte v7, v5

    aput-byte v7, p2, v1

    move v1, v6

    goto/16 :goto_bf

    :cond_37
    const/16 v6, 0x800

    if-ge v5, v6, :cond_51

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_51

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    goto :goto_bf

    :cond_51
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_5b

    if-ge v6, v5, :cond_7c

    :cond_5b
    add-int/lit8 v8, v3, -0x3

    if-gt v1, v8, :cond_7c

    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v6, 0x1

    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    add-int/lit8 v6, v1, 0x1

    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    move v1, v6

    goto :goto_bf

    :cond_7c
    add-int/lit8 v8, v3, -0x4

    if-gt v1, v8, :cond_cb

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_c3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_c3

    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    add-int/lit8 v8, v1, 0x1

    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    add-int/lit8 v1, v8, 0x1

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    add-int/lit8 v8, v1, 0x1

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    add-int/lit8 v1, v8, 0x1

    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    nop

    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    :cond_c3
    new-instance v4, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v6, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    :cond_cb
    if-gt v7, v5, :cond_e9

    if-gt v5, v6, :cond_e9

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_e3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_e9

    :cond_e3
    new-instance v4, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v4, v2, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    :cond_e9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_108
    return v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .registers 12

    if-eqz p1, :cond_89

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1d

    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1c

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_19

    move p3, v1

    goto :goto_1c

    :cond_19
    move p3, v1

    goto/16 :goto_89

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    const/16 v4, -0x10

    if-ge v0, v4, :cond_4c

    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_33

    add-int/lit8 v5, p3, 0x1

    aget-byte v4, p2, p3

    if-lt v5, p4, :cond_32

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v4}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    :cond_32
    move p3, v5

    :cond_33
    if-gt v4, v3, :cond_4b

    const/16 v5, -0x60

    if-ne v0, v1, :cond_3b

    if-lt v4, v5, :cond_4b

    :cond_3b
    const/16 v1, -0x13

    if-ne v0, v1, :cond_41

    if-ge v4, v5, :cond_4b

    :cond_41
    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_49

    move p3, v1

    goto :goto_4b

    :cond_49
    move p3, v1

    goto :goto_89

    :cond_4b
    :goto_4b
    return v2

    :cond_4c
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_60

    add-int/lit8 v5, p3, 0x1

    aget-byte v1, p2, p3

    if-lt v5, p4, :cond_5e

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    :cond_5e
    move p3, v5

    goto :goto_63

    :cond_60
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    :goto_63
    if-nez v4, :cond_71

    add-int/lit8 v5, p3, 0x1

    aget-byte v4, p2, p3

    if-lt v5, p4, :cond_70

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    :cond_70
    move p3, v5

    :cond_71
    if-gt v1, v3, :cond_88

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_88

    if-gt v4, v3, :cond_88

    add-int/lit8 v5, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_86

    move p3, v5

    goto :goto_88

    :cond_86
    move p3, v5

    goto :goto_89

    :cond_88
    :goto_88
    return v2

    :cond_89
    :goto_89
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result v0

    return v0
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
