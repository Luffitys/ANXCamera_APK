.class Landroid/view/contentcapture/ContentCaptureCondition$1;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureCondition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;
    .registers 5

    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/contentcapture/ContentCaptureCondition;-><init>(Landroid/content/LocusId;I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;
    .registers 3

    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureCondition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p1

    return-object p1
.end method
