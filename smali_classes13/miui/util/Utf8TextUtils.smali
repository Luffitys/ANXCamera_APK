.class public Lmiui/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Utf8TextUtils$CharRange;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field private static final MIN_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Utf8TextUtils"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findRange([BII)Lmiui/util/Utf8TextUtils$CharRange;
    .registers 5

    new-instance v0, Lmiui/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiui/util/Utf8TextUtils$CharRange;-><init>()V

    invoke-static {p0, p1, p2}, Lmiui/util/Utf8TextUtils;->isValidCharacter([BII)Z

    move-result v1

    if-eqz v1, :cond_f

    iput p1, v0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iput p2, v0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    :cond_f
    return-object v0
.end method

.method private static getByteCount(B)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_13

    shr-int v2, p0, v1

    int-to-byte v2, v2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_d

    goto :goto_13

    :cond_d
    nop

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_13
    :goto_13
    return v0
.end method

.method private static getCharRangeAt([BI)Lmiui/util/Utf8TextUtils$CharRange;
    .registers 5

    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getByteCount(B)I

    move-result v0

    if-nez v0, :cond_f

    new-instance v1, Lmiui/util/Utf8TextUtils$CharRange;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lmiui/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object v1

    :cond_f
    invoke-static {p0, p1, v0}, Lmiui/util/Utf8TextUtils;->findRange([BII)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object v1

    return-object v1
.end method

.method private static getUtf8CharList([B)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lmiui/util/Utf8TextUtils$CharRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    invoke-static {p0, v1}, Lmiui/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1e

    :cond_17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v3

    goto :goto_6

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static isValidCharacter([BII)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1a

    const/4 v2, 0x6

    if-le p2, v2, :cond_8

    goto :goto_1a

    :cond_8
    const/4 v2, 0x1

    :goto_9
    if-ge v2, p2, :cond_19

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiui/util/Utf8TextUtils;->getByteCount(B)I

    move-result v3

    if-eq v3, v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_52

    if-gt p2, p1, :cond_b

    goto :goto_52

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1e
    if-ltz p1, :cond_51

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_27

    goto :goto_51

    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/Utf8TextUtils$CharRange;

    iget v4, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-lt p2, v3, :cond_37

    array-length v5, v0

    goto :goto_3f

    :cond_37
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/Utf8TextUtils$CharRange;

    iget v5, v5, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    :goto_3f
    sub-int v6, v5, v4

    new-array v7, v6, [B

    const/4 v8, 0x0

    invoke-static {v0, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_47
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4e} :catch_4f

    return-object v8

    :catch_4f
    move-exception v8

    return-object v1

    :cond_51
    :goto_51
    return-object v1

    :cond_52
    :goto_52
    return-object v1
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-ge v3, p1, :cond_2a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-le v3, p1, :cond_3e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_43
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4a
    if-ltz v3, :cond_65

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/Utf8TextUtils$CharRange;

    iget v5, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_5a

    nop

    add-int/lit8 v3, v3, -0x1

    goto :goto_4a

    :cond_5a
    invoke-virtual {v4}, Lmiui/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v5

    if-gt v5, p1, :cond_62

    move v2, v5

    goto :goto_65

    :cond_62
    iget v6, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    move v2, v6

    :cond_65
    :goto_65
    array-length v3, v0

    if-ge v2, v3, :cond_76

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_75} :catch_77

    return-object v4

    :cond_76
    return-object p0

    :catch_77
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get bytes of UTF-8 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utf8TextUtils"

    invoke-static {v2, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method
