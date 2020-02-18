.class Lcom/android/camera/lib/compatibility/related/v29/V29Utils$Resizer;
.super Ljava/lang/Object;
.source "V29Utils.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/lib/compatibility/related/v29/V29Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resizer"
.end annotation


# instance fields
.field private final size:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/lib/compatibility/related/v29/V29Utils$Resizer;->size:Landroid/util/Size;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Size;Lcom/android/camera/lib/compatibility/related/v29/V29Utils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/lib/compatibility/related/v29/V29Utils$Resizer;-><init>(Landroid/util/Size;)V

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/lib/compatibility/related/v29/V29Utils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/v29/V29Utils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-le p0, p3, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    :cond_0
    return-void
.end method
