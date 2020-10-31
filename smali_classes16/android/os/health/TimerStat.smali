.class public final Landroid/os/health/TimerStat;
.super Ljava/lang/Object;
.source "TimerStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/health/TimerStat$1;

    invoke-direct {v0}, Landroid/os/health/TimerStat$1;-><init>()V

    sput-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    iput-wide p2, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/health/TimerStat;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    return-wide v0
.end method

.method public setCount(I)V
    .registers 2

    iput p1, p0, Landroid/os/health/TimerStat;->mCount:I

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/health/TimerStat;->mTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/health/TimerStat;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/health/TimerStat;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
