.class public Lmiui/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field private static final MIN_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Utf8TextUtils"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findRange([BII)Lmiui/util/Utf8TextUtils$CharRange;
    .locals 1

    new-instance v0, Lmiui/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiui/util/Utf8TextUtils$CharRange;-><init>()V

    invoke-static {p0, p1, p2}, Lmiui/util/Utf8TextUtils;->isValidCharacter([BII)Z

    move-result p0

    if-eqz p0, :cond_0

    iput p1, v0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iput p2, v0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    :cond_0
    return-object v0
.end method

.method private static getByteCount(B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    shr-int v3, p0, v1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static getCharRangeAt([BI)Lmiui/util/Utf8TextUtils$CharRange;
    .locals 1

    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getByteCount(B)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lmiui/util/Utf8TextUtils$CharRange;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object p0

    :cond_0
    invoke-static {p0, p1, v0}, Lmiui/util/Utf8TextUtils;->findRange([BII)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object p0

    return-object p0
.end method

.method private static getUtf8CharList([B)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-static {p0, v1}, Lmiui/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v2, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static isValidCharacter([BII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    const/4 v2, 0x6

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiui/util/Utf8TextUtils;->getByteCount(B)I

    move-result v3

    if-eq v3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    if-gt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/Utf8TextUtils$CharRange;

    iget p1, p1, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-lt p2, p0, :cond_3

    array-length p0, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/util/Utf8TextUtils$CharRange;

    iget p0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    :goto_0
    sub-int/2addr p0, p1

    new-array p2, p0, [B

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/Utf8TextUtils$CharRange;

    iget v5, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lmiui/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    :cond_4
    iget v2, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    :cond_5
    :goto_2
    array-length p1, v0

    if-ge v2, p1, :cond_6

    new-array p1, v2, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get bytes of UTF-8 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utf8TextUtils"

    invoke-static {p1, p0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
