.class public Landroid/net/util/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/util/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeparator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/util/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/util/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/util/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/util/nsd/DnsSdTxtRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    iget-object v0, p1, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_11

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    :cond_11
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method static synthetic access$000(Landroid/net/util/nsd/DnsSdTxtRecord;)[B
    .registers 2

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    return-object v0
.end method

.method private getKey(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_11

    iget-object v2, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_11

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    iget-object v1, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_36

    aget-byte v1, v1, v0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2c

    iget-object v3, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    add-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_29

    goto :goto_2c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2c
    :goto_2c
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3

    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method private getValue(I)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_12

    iget-object v3, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v0, v4, :cond_12

    aget-byte v3, v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    iget-object v2, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_3f

    aget-byte v2, v2, v0

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_3f

    iget-object v4, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    add-int v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3c

    sub-int v5, v2, v3

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [B

    add-int v5, v0, v3

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    sub-int v7, v2, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3f

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method private getValue(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p0, v1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v2

    return-object v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method private insert([B[BI)V
    .registers 14

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    array-length v2, p2

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x1

    if-ge v4, p3, :cond_1b

    iget-object v6, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v6

    if-ge v3, v7, :cond_1b

    aget-byte v6, v6, v3

    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1b
    array-length v4, p1

    add-int/2addr v4, v2

    if-eqz p2, :cond_21

    move v6, v5

    goto :goto_22

    :cond_21
    move v6, v1

    :goto_22
    add-int/2addr v4, v6

    array-length v6, v0

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    new-array v5, v6, [B

    iput-object v5, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v0

    sub-int/2addr v5, v3

    iget-object v7, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    sub-int v8, v6, v5

    invoke-static {v0, v3, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte v8, v4

    aput-byte v8, v7, v3

    add-int/lit8 v8, v3, 0x1

    array-length v9, p1

    invoke-static {p1, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_54

    iget-object v7, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v8, v3, 0x1

    array-length v9, p1

    add-int/2addr v8, v9

    const/16 v9, 0x3d

    aput-byte v9, v7, v8

    array-length v8, p1

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x2

    invoke-static {p2, v1, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_54
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_14

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    return v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroid/net/util/nsd/DnsSdTxtRecord;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/util/nsd/DnsSdTxtRecord;

    iget-object v1, v0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v2, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getRawData()[B
    .registers 2

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v1, v3, :cond_11

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_5c

    aget-byte v2, v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_54

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_24

    iget-object v3, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_54

    :cond_24
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v4

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [B

    iput-object v5, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v0, v2

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v4

    sub-int/2addr v7, v0

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1

    :cond_54
    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5c
    const/4 v1, -0x1

    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    :try_start_a
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_43

    nop

    const/4 v3, 0x0

    :goto_12
    array-length v4, v2

    if-ge v3, v4, :cond_26

    aget-byte v4, v2, v3

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "= is not a valid character in key"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_26
    array-length v3, v2

    add-int/2addr v3, v1

    const/16 v4, 0xff

    if-ge v3, v4, :cond_3b

    invoke-virtual {p0, p1}, Landroid/net/util/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    invoke-virtual {p0}, Landroid/net/util/nsd/DnsSdTxtRecord;->keyCount()I

    move-result v3

    :cond_37
    invoke-direct {p0, v2, v0, v3}, Landroid/net/util/nsd/DnsSdTxtRecord;->insert([B[BI)V

    return-void

    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_43
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key should be US-ASCII"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Landroid/net/util/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "}"

    if-eqz v4, :cond_3c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4b
    if-nez v0, :cond_4f

    move-object v0, v2

    goto :goto_63

    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_66
    if-eqz v0, :cond_6a

    move-object v1, v0

    goto :goto_6c

    :cond_6a
    const-string v1, ""

    :goto_6c
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/util/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
