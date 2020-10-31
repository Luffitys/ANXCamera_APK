.class public Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
.super Ljava/lang/Object;
.source "IImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFilterGroup"
.end annotation


# instance fields
.field private mFilters:[Lmiui/imagefilters/IImageFilter;


# direct methods
.method public constructor <init>([Lmiui/imagefilters/IImageFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    return-void
.end method


# virtual methods
.method public processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .registers 6

    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    iget-object v3, p0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->mFilters:[Lmiui/imagefilters/IImageFilter;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lmiui/imagefilters/IImageFilter;->putOriginalImage(Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v0}, Lmiui/imagefilters/IImageFilter;->process(Lmiui/imagefilters/ImageData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method
