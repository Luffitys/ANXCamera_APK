.class public Landroid/hardware/location/NanoAppInstanceInfo;
.super Ljava/lang/Object;
.source "NanoAppInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:J

.field private mAppVersion:I

.field private mContexthubId:I

.field private mHandle:I

.field private mName:Ljava/lang/String;

.field private mNeededExecMemBytes:I

.field private mNeededReadMemBytes:I

.field private mNeededSensors:[I

.field private mNeededWriteMemBytes:I

.field private mOutputEvents:[I

.field private mPublisher:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppInstanceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    return-void
.end method

.method public constructor <init>(IJII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    iput-wide p2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    iput p4, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    iput p5, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppInstanceInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    return-wide v0
.end method

.method public getAppVersion()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    return v0
.end method

.method public getContexthubId()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    return v0
.end method

.method public getHandle()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    return v0
.end method

.method public getNeededReadMemBytes()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    return v0
.end method

.method public getNeededSensors()[I
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .registers 2

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    return v0
.end method

.method public getOutputEvents()[I
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Id : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Version : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
