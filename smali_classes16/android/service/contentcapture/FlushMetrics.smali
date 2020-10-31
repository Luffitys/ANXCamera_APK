.class public final Landroid/service/contentcapture/FlushMetrics;
.super Ljava/lang/Object;
.source "FlushMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/FlushMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public sessionFinished:I

.field public sessionStarted:I

.field public viewAppearedCount:I

.field public viewDisappearedCount:I

.field public viewTextChangedCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/FlushMetrics$1;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/FlushMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    iput v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
