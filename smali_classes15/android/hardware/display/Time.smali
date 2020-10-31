.class public final Landroid/hardware/display/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/Time;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I

.field private final mNano:I

.field private final mSecond:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/display/Time$1;

    invoke-direct {v0}, Landroid/hardware/display/Time$1;-><init>()V

    sput-object v0, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mHour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mMinute:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mSecond:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mNano:I

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalTime;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mHour:I

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mMinute:I

    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mSecond:I

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/Time;->mNano:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalTime()Ljava/time/LocalTime;
    .registers 5

    iget v0, p0, Landroid/hardware/display/Time;->mHour:I

    iget v1, p0, Landroid/hardware/display/Time;->mMinute:I

    iget v2, p0, Landroid/hardware/display/Time;->mSecond:I

    iget v3, p0, Landroid/hardware/display/Time;->mNano:I

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/display/Time;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/Time;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/Time;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/Time;->mNano:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
