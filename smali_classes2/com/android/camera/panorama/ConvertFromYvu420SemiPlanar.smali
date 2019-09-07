.class public Lcom/android/camera/panorama/ConvertFromYvu420SemiPlanar;
.super Ljava/lang/Object;
.source "ConvertFromYvu420SemiPlanar.java"

# interfaces
.implements Lcom/android/camera/panorama/IImage2BytesConverter;


# static fields
.field private static final PIXEL_STRIDE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public image2bytes(Landroid/media/Image;)[B
    .locals 12

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    mul-int v8, p0, v0

    mul-int/lit8 v9, v8, 0x3

    div-int/2addr v9, v6

    new-array v9, v9, [B

    if-ge p0, v7, :cond_0

    move v10, v2

    :goto_0
    if-ge v10, v0, :cond_1

    mul-int v11, v10, v7

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v11, v10, p0

    invoke-virtual {v1, v9, v11, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v9, v2, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_1
    if-ge p0, p1, :cond_3

    :goto_1
    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v7, v4

    if-ge v2, v7, :cond_2

    mul-int v7, v2, p1

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v9, v8, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v8, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p0, v4

    invoke-virtual {v5, v9, v8, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v5, v9, v8, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/2addr v8, p0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v9, v8, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v9
.end method
