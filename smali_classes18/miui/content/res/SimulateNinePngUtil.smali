.class public Lmiui/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    return-void

    :array_a
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computePatchColor([B)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .registers 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .registers 5

    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .registers 11

    if-eqz p0, :cond_6d

    array-length v0, p0

    const/16 v1, 0x29

    if-lt v0, v1, :cond_6d

    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6d

    :cond_e
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object p0

    :cond_15
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v0

    array-length v2, p0

    add-int/lit8 v2, v2, 0xc

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/16 v3, 0x21

    const/4 v4, 0x0

    :goto_23
    const/16 v5, 0x21

    if-ge v4, v5, :cond_2e

    aget-byte v5, p0, v4

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2e
    array-length v4, v0

    invoke-static {v2, v5, v4}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    invoke-static {v2}, Lmiui/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    const/16 v4, 0x29

    const/4 v6, 0x0

    :goto_38
    array-length v7, v0

    if-ge v6, v7, :cond_44

    add-int/lit8 v7, v6, 0x29

    aget-byte v8, v0, v6

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_44
    array-length v6, v0

    add-int/2addr v6, v1

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v7, 0x25

    array-length v8, v0

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v1, v2, v7, v8}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v2, v6, v7}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    const/4 v7, 0x0

    :goto_5c
    array-length v8, p0

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_6c

    add-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v7

    add-int/lit8 v9, v7, 0x21

    aget-byte v9, p0, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_6c
    return-object v2

    :cond_6d
    :goto_6d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x29

    :try_start_3
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_d

    const/4 v1, 0x0

    goto :goto_15

    :cond_d
    array-length v3, v1

    if-ge v2, v3, :cond_15

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    move-object v1, v3

    :cond_15
    :goto_15
    invoke-static {v1}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v3

    if-eqz v3, :cond_21

    new-instance v4, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v4, p0, v3}, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_22

    move-object v0, v4

    :cond_21
    goto :goto_26

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-object v0
.end method

.method private static fillNinePngFormatMark([B)V
    .registers 3

    const/16 v0, 0x25

    const/16 v1, 0x6e

    aput-byte v1, p0, v0

    const/16 v0, 0x26

    const/16 v1, 0x70

    aput-byte v1, p0, v0

    const/16 v0, 0x27

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    const/16 v0, 0x28

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .registers 6

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    const/16 v2, 0x34

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    aput-byte v3, v2, v4

    aput-byte v3, v2, v3

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    const/16 v3, 0x24

    invoke-static {v2, v3, v0}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    const/16 v3, 0x2c

    invoke-static {v2, v3, v1}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v3

    const/16 v4, 0x30

    invoke-static {v2, v4, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    return-object v2
.end method

.method private static isNinePngFormat([B)Z
    .registers 4

    if-eqz p0, :cond_27

    array-length v0, p0

    const/16 v1, 0x28

    if-le v0, v1, :cond_27

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_27

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v2, 0x70

    if-ne v0, v2, :cond_27

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_27

    aget-byte v0, p0, v1

    const/16 v1, 0x63

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method private static isPngFormat([B)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
