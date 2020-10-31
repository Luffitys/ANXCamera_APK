.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_53

    aget-byte v3, p0, v2

    sget-byte v4, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v3, v4, :cond_4d

    const/16 v4, 0xd

    add-int/lit8 v5, v2, 0x1

    :try_start_17
    aget-byte v5, p0, v5

    int-to-char v5, v5

    if-ne v4, v5, :cond_28

    const/16 v4, 0xa

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    int-to-char v5, v5

    if-ne v4, v5, :cond_28

    add-int/lit8 v2, v2, 0x2

    goto :goto_50

    :cond_28
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4a

    if-ne v5, v6, :cond_42

    goto :goto_4a

    :cond_42
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_49} :catch_4b

    goto :goto_50

    :cond_4a
    :goto_4a
    return-object v0

    :catch_4b
    move-exception v4

    return-object v0

    :cond_4d
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
