.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "PooledStringReader.java"


# instance fields
.field private final mIn:Landroid/os/Parcel;

.field private final mPool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStringCount()I
    .registers 2

    iget-object v0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    :cond_d
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aput-object v0, v2, v1

    return-object v0
.end method
