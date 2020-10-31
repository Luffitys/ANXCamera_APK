.class public final Landroid/media/TimedMetaData;
.super Ljava/lang/Object;
.source "TimedMetaData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimedMetaData"


# instance fields
.field private mMetaData:[B

.field private mTimestampUs:J


# direct methods
.method public constructor <init>(J[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_a

    iput-wide p1, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    iput-object p3, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null metaData is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/media/TimedMetaData;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;
    .registers 2

    new-instance v0, Landroid/media/TimedMetaData;

    invoke-direct {v0, p0}, Landroid/media/TimedMetaData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetaData()[B
    .registers 2

    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    return-wide v0
.end method
