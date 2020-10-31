.class public Lmiui/text/ExtraTextUtils;
.super Ljava/lang/Object;
.source "ExtraTextUtils.java"


# static fields
.field public static final GB:J = 0x3b9aca00L

.field private static final HEX_DIGITS:[C

.field public static final KB:J = 0x3e8L

.field public static final MB:J = 0xf4240L

.field private static final UNIT:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 14

    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    long-to-float v0, p1

    sget v1, Lcom/miui/internal/R$string;->size_byte:I

    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez v3, :cond_13

    sget v1, Lcom/miui/internal/R$string;->size_kilo_byte:I

    div-float/2addr v0, v4

    :cond_13
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1a

    sget v1, Lcom/miui/internal/R$string;->size_mega_byte:I

    div-float/2addr v0, v4

    :cond_1a
    cmpl-float v3, v0, v2

    if-lez v3, :cond_21

    sget v1, Lcom/miui/internal/R$string;->size_giga_byte:I

    div-float/2addr v0, v4

    :cond_21
    cmpl-float v3, v0, v2

    if-lez v3, :cond_28

    sget v1, Lcom/miui/internal/R$string;->size_tera_byte:I

    div-float/2addr v0, v4

    :cond_28
    cmpl-float v2, v0, v2

    if-lez v2, :cond_2f

    sget v1, Lcom/miui/internal/R$string;->size_peta_byte:I

    div-float/2addr v0, v4

    :cond_2f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const-string v3, "%.2f"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_46

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_46
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6a

    if-eqz p3, :cond_5d

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_5d
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_6a
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    const-string v6, "%.0f"

    if-gez v2, :cond_8e

    if-eqz p3, :cond_81

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_81
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_8e
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x2e

    const/16 v7, 0x30

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-le v3, v8, :cond_c5

    add-int/lit8 v8, v3, -0x3

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_c5

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_c5

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_c5

    add-int/lit8 v6, v3, -0x3

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_dd

    :cond_c5
    if-le v3, v9, :cond_dd

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_dd

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_dd

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_dd
    :goto_dd
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$string;->size_suffix:I

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromHexReadable(Ljava/lang/String;)[B
    .registers 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const-string v2, "s is not a readable string: "

    if-nez v1, :cond_8f

    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_8e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v4, v10, :cond_28

    if-gt v4, v7, :cond_28

    add-int/lit8 v11, v4, -0x30

    goto :goto_39

    :cond_28
    if-lt v4, v9, :cond_31

    if-gt v4, v6, :cond_31

    add-int/lit8 v11, v4, -0x61

    add-int/lit8 v11, v11, 0xa

    goto :goto_39

    :cond_31
    if-lt v4, v8, :cond_79

    if-gt v4, v5, :cond_79

    add-int/lit8 v11, v4, -0x41

    add-int/lit8 v11, v11, 0xa

    :goto_39
    shl-int/lit8 v11, v11, 0x4

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_49

    if-gt v4, v7, :cond_49

    add-int/lit8 v5, v4, -0x30

    add-int/2addr v11, v5

    goto :goto_5c

    :cond_49
    if-lt v4, v9, :cond_53

    if-gt v4, v6, :cond_53

    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v11, v5

    goto :goto_5c

    :cond_53
    if-lt v4, v8, :cond_64

    if-gt v4, v5, :cond_64

    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v11, v5

    :goto_5c
    shr-int/lit8 v5, v3, 0x1

    int-to-byte v6, v11

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    :cond_64
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_79
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8e
    return-object v1

    :cond_8f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toHexReadable([B)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([BLjava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static toHexReadable([BLjava/lang/Appendable;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_25

    aget-byte v2, p0, v1

    move v3, v2

    if-gez v3, :cond_e

    add-int/lit16 v3, v3, 0x100

    :cond_e
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v5, v3, 0xf

    sget-object v6, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v6, v6, v4

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v6

    sget-object v7, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v7, v7, v5

    invoke-interface {v6, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_27

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    nop

    return-void

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception throw during when append"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
