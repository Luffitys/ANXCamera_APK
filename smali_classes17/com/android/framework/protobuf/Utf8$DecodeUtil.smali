.class Lcom/android/framework/protobuf/Utf8$DecodeUtil;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(BBBB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    return-void
.end method

.method static synthetic access$400(B)Z
    .registers 2

    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(B[CI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    return-void
.end method

.method static synthetic access$600(B)Z
    .registers 2

    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(BB[CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    return-void
.end method

.method static synthetic access$800(B)Z
    .registers 2

    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(BBB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    return-void
.end method

.method private static handleFourBytes(BBBB[CI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_41

    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    and-int/lit8 v0, p0, 0x7

    shl-int/lit8 v0, v0, 0x12

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-static {p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->highSurrogate(I)C

    move-result v1

    aput-char v1, p4, p5

    add-int/lit8 v1, p5, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->lowSurrogate(I)C

    move-result v2

    aput-char v2, p4, v1

    return-void

    :cond_41
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private static handleOneByte(B[CI)V
    .registers 4

    int-to-char v0, p0

    aput-char v0, p1, p2

    return-void
.end method

.method private static handleThreeBytes(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2e

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2e

    :cond_14
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    and-int/lit8 v0, p0, 0xf

    shl-int/lit8 v0, v0, 0xc

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p3, p4

    return-void

    :cond_2e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private static handleTwoBytes(BB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_17

    and-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p3

    return-void

    :cond_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private static highSurrogate(I)C
    .registers 3

    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static isNotTrailingByte(B)Z
    .registers 2

    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isOneByte(B)Z
    .registers 2

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static isThreeBytes(B)Z
    .registers 2

    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isTwoBytes(B)Z
    .registers 2

    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static lowSurrogate(I)C
    .registers 3

    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static trailingByteValue(B)I
    .registers 2

    and-int/lit8 v0, p0, 0x3f

    return v0
.end method
