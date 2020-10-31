.class public Landroid/hardware/camera2/utils/LongParcelable;
.super Ljava/lang/Object;
.source "LongParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private number:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/camera2/utils/LongParcelable$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/LongParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/LongParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/LongParcelable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-void
.end method

.method public setNumber(J)V
    .registers 3

    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
