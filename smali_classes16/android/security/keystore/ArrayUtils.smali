.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .registers 2

    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_d

    :cond_c
    move-object v0, p0

    :goto_d
    return-object v0
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object v0, p0

    :goto_d
    return-object v0
.end method

.method public static concat([BII[BII)[B
    .registers 8

    if-nez p2, :cond_7

    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p5, :cond_e

    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    :cond_e
    add-int v0, p2, p5

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concat([B[B)[B
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    move v4, v1

    goto :goto_7

    :cond_6
    move v4, v0

    :goto_7
    const/4 v6, 0x0

    if-eqz p1, :cond_b

    array-length v0, p1

    :cond_b
    move v7, v0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static concat([I[I)[I
    .registers 6

    if-eqz p0, :cond_1d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    :cond_6
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_1c

    :cond_c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1c
    :goto_1c
    return-object p0

    :cond_1d
    :goto_1d
    return-object p1
.end method

.method public static copy([BI[BII)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    if-nez p0, :cond_6

    goto :goto_1b

    :cond_6
    array-length v1, p2

    sub-int/2addr v1, p3

    if-le p4, v1, :cond_d

    array-length v1, p2

    sub-int p4, v1, p3

    :cond_d
    array-length v1, p0

    sub-int/2addr v1, p1

    if-le p4, v1, :cond_14

    array-length v1, p0

    sub-int p4, v1, p1

    :cond_14
    if-gtz p4, :cond_17

    return v0

    :cond_17
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public static subarray([BII)[B
    .registers 5

    if-nez p2, :cond_5

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    :cond_5
    if-nez p1, :cond_b

    array-length v0, p0

    if-ne p2, v0, :cond_b

    return-object p0

    :cond_b
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
