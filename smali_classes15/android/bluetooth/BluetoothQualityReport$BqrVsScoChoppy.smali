.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;
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
    name = "BqrVsScoChoppy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsScoChoppy"


# instance fields
.field private mAirFormat:I

.field private mGlitchCount:I

.field private mGoodRxFrameCount:I

.field private mInstanceCount:I

.field private mIntervalEsco:I

.field private mLateDispatch:I

.field private mLpaIntrMiss:I

.field private mMicIntrMiss:I

.field private mMissedInstanceCount:I

.field private mPlcDiscardCount:I

.field private mPlcFillCount:I

.field private mRxCxmDenials:I

.field private mRxRetransmitSlotCount:I

.field private mSprIntrMiss:I

.field private mTxAbortCount:I

.field private mTxCxmDenials:I

.field private mTxRetransmitSlotCount:I

.field private mWindowEsco:I

.field final synthetic this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .registers 8

    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a8

    array-length v0, p2

    if-le v0, p3, :cond_a8

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    :try_start_81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I
    :try_end_9d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_81 .. :try_end_9d} :catch_9e

    goto :goto_a7

    :catch_9e
    move-exception v1

    const-string v2, "BluetoothQualityReport.BqrVsScoChoppy"

    const-string/jumbo v3, "some fields are not contained"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a7
    return-void

    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsScoChoppy: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAirFormat()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    return v0
.end method

.method public getAirFormatStr()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGlitchCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    return v0
.end method

.method public getGoodRxFrameCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    return v0
.end method

.method public getInstanceCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    return v0
.end method

.method public getIntervalEsco()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    return v0
.end method

.method public getLateDispatch()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    return v0
.end method

.method public getLpaIntrMiss()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    return v0
.end method

.method public getMicIntrMiss()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    return v0
.end method

.method public getMissedInstanceCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    return v0
.end method

.method public getPlcDiscardCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    return v0
.end method

.method public getPlcFillCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    return v0
.end method

.method public getRxCxmDenials()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public getRxRetransmitSlotCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    return v0
.end method

.method public getSprIntrMiss()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    return v0
.end method

.method public getTxAbortCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    return v0
.end method

.method public getTxCxmDenials()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public getTxRetransmitSlotCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    return v0
.end method

.method public getWindowEsco()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsScoChoppy: {\n    mGlitchCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIntervalEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowEsco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAirFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getAirFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRxCxmDenials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTxAbortCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mLateDispatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMicIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLpaIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSprIntrMiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlcFillCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlcDiscardCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMissedInstanceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mRxRetransmitSlotCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRxFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mIntervalEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mWindowEsco:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mAirFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxAbortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLateDispatch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMicIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mLpaIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mSprIntrMiss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcFillCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mPlcDiscardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mMissedInstanceCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mTxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mRxRetransmitSlotCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->mGoodRxFrameCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
