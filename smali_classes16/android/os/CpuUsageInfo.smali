.class public final Landroid/os/CpuUsageInfo;
.super Ljava/lang/Object;
.source "CpuUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CpuUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActive:J

.field private mTotal:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/CpuUsageInfo$1;

    invoke-direct {v0}, Landroid/os/CpuUsageInfo$1;-><init>()V

    sput-object v0, Landroid/os/CpuUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/CpuUsageInfo;->mActive:J

    iput-wide p3, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/CpuUsageInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/CpuUsageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActive()J
    .registers 3

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    return-wide v0
.end method

.method public getTotal()J
    .registers 3

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/CpuUsageInfo;->mTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
