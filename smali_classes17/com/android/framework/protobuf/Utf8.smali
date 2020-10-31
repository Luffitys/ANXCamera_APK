.class final Lcom/android/framework/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/Utf8$DecodeUtil;,
        Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;,
        Lcom/android/framework/protobuf/Utf8$SafeProcessor;,
        Lcom/android/framework/protobuf/Utf8$Processor;,
        Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field private static final ASCII_MASK_LONG:J = -0x7f7f7f7f7f7f7f80L

.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1

.field static final MAX_BYTES_PER_CHAR:I = 0x3

.field private static final UNSAFE_COUNT_ASCII_THRESHOLD:I = 0x10

.field private static final processor:Lcom/android/framework/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_17

    :cond_12
    new-instance v0, Lcom/android/framework/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_17
    sput-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(III)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100([BII)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(I)I
    .registers 2

    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;III)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result v0

    return v0
.end method

.method static decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static decodeUtf8([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encode(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method static encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static encodedLength(Ljava/lang/CharSequence;)I
    .registers 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    :goto_13
    if-ge v2, v0, :cond_2a

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    invoke-static {p0, v2}, Lcom/android/framework/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2a
    if-lt v1, v0, :cond_2d

    return v1

    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v1

    const-wide v7, 0x100000000L

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    :goto_6
    if-ge v2, v0, :cond_36

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_16

    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    goto :goto_33

    :cond_16
    add-int/lit8 v1, v1, 0x2

    const v4, 0xd800

    if-gt v4, v3, :cond_33

    const v4, 0xdfff

    if-gt v3, v4, :cond_33

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_2d
    new-instance v5, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v5, v2, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v5

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_36
    return v1
.end method

.method private static estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .registers 9

    move v0, p1

    add-int/lit8 v1, p2, -0x7

    :goto_3
    if-ge v0, v1, :cond_18

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_18
    sub-int v2, v0, p1

    return v2
.end method

.method private static incompleteStateFor(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    move v0, p0

    :goto_7
    return v0
.end method

.method private static incompleteStateFor(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method private static incompleteStateFor(III)I
    .registers 5

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, -0x1

    :goto_13
    return v0
.end method

.method private static incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .registers 6

    if-eqz p3, :cond_26

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1d

    const/4 v0, 0x2

    if-ne p3, v0, :cond_17

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    return v0

    :cond_26
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    return v0
.end method

.method private static incompleteStateFor([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int v1, p2, p1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v1

    return v1

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1f
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v1

    return v1

    :cond_26
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v1

    return v1
.end method

.method static isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([BII)Z
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method static partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 5

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 5

    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v0

    return v0
.end method
