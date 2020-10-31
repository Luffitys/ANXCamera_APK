.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BqrVsA2dpChoppy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsA2dpChoppy"


# instance fields
.field private mAclTxQueueLength:I

.field private mArrivalTime:J

.field private mGlitchCount:I

.field private mLinkQuality:I

.field private mRxCxmDenials:I

.field private mScheduleTime:J

.field private mTxCxmDenials:I

.field final synthetic this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .registers 5

    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .registers 9

    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_57

    array-length v0, p2

    if-le v0, p3, :cond_57

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    return-void

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsA2dpChoppy: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAclTxQueueLength()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    return v0
.end method

.method public getArrivalTime()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    return-wide v0
.end method

.method public getGlitchCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    return v0
.end method

.method public getLinkQuality()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    return v0
.end method

.method public getLinkQualityStr()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRxCxmDenials()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public getScheduleTime()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    return-wide v0
.end method

.method public getTxCxmDenials()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsA2dpChoppy: {\n    mArrivalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mScheduleTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mGlitchCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTxCxmDenials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRxCxmDenials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAclTxQueueLength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLinkQuality: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getLinkQualityStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
