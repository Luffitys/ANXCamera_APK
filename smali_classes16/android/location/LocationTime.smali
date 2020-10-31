.class public final Landroid/location/LocationTime;
.super Ljava/lang/Object;
.source "LocationTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mElapsedRealtimeNanos:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationTime$1;

    invoke-direct {v0}, Landroid/location/LocationTime$1;-><init>()V

    sput-object v0, Landroid/location/LocationTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/LocationTime;->mTime:J

    iput-wide p3, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationTime;->mTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/LocationTime;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationTime;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
