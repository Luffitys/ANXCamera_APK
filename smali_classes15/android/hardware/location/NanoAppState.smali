.class public final Landroid/hardware/location/NanoAppState;
.super Ljava/lang/Object;
.source "NanoAppState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsEnabled:Z

.field private mNanoAppId:J

.field private mNanoAppVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/location/NanoAppState$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppState$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppState$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNanoAppId()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    return-wide v0
.end method

.method public getNanoAppVersion()J
    .registers 3

    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
