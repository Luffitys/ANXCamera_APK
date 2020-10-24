.class Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field isRequested:Z

.field tag:Lcom/android/gallery3d/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/exif/ExifTag;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/gallery3d/exif/ExifTag;

    iput-boolean p2, p0, Lcom/android/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
