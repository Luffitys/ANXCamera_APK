.class public Landroid/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Base64$Encoder;,
        Landroid/util/Base64$Decoder;,
        Landroid/util/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 9

    new-instance v0, Landroid/util/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/util/Base64$Decoder;->process([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, v0, Landroid/util/Base64$Decoder;->op:I

    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1c

    iget-object v1, v0, Landroid/util/Base64$Decoder;->output:[B

    return-object v1

    :cond_1c
    iget v1, v0, Landroid/util/Base64$Decoder;->op:I

    new-array v1, v1, [B

    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    iget v3, v0, Landroid/util/Base64$Decoder;->op:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .registers 10

    new-instance v0, Landroid/util/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_17

    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_23

    add-int/lit8 v1, v1, 0x4

    goto :goto_23

    :cond_17
    rem-int/lit8 v2, p2, 0x3

    if-eq v2, v4, :cond_21

    if-eq v2, v3, :cond_1e

    goto :goto_23

    :cond_1e
    add-int/lit8 v1, v1, 0x3

    goto :goto_23

    :cond_21
    add-int/lit8 v1, v1, 0x2

    :cond_23
    :goto_23
    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_36

    if-lez p2, :cond_36

    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v4

    iget-boolean v5, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v5, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_36
    new-array v2, v1, [B

    iput-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    invoke-virtual {v0, p0, p1, p2, v4}, Landroid/util/Base64$Encoder;->process([BIIZ)Z

    nop

    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    return-object v2
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
