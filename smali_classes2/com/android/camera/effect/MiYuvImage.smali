.class public Lcom/android/camera/effect/MiYuvImage;
.super Ljava/lang/Object;
.source "MiYuvImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiYuvImage"


# instance fields
.field public mData:[B

.field public mFormat:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    iput p2, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iput p3, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    iput p4, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    return-void
.end method


# virtual methods
.method public getUVBuffer()Ljava/nio/ByteBuffer;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "data is null when getUVBuffer"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget p0, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v2, v1, p0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    mul-int v3, v1, p0

    const/4 v4, 0x0

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "Not supprot this format"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getVUBuffer()Ljava/nio/ByteBuffer;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "data is null when getUVBuffer"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget p0, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v2, v1, p0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    mul-int v3, v1, p0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    aget-byte v0, v2, v0

    aput-byte v0, v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "Not supprot this format"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getYBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "data is null when getYBuffer"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget p0, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v2, v1, p0

    new-array v2, v2, [B

    mul-int/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {v0, p0, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "Not supprot this format"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getYuvBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object p0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v0, "data is null when getYuvBuffer"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
