.class Lcom/android/gallery3d/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput-boolean p2, p0, Lcom/android/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    return-void
.end method
