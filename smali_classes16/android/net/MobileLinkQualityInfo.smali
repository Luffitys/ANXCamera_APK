.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "MobileLinkQualityInfo.java"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmErrorRate:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mMobileNetworkType:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .registers 3

    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/net/MobileLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-object v0
.end method


# virtual methods
.method public getCdmaDbm()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public getEvdoDbm()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoSnr()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public getGsmErrorRate()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public getLteCqi()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public getLteRsrp()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public getMobileNetworkType()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public setCdmaDbm(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return-void
.end method

.method public setGsmErrorRate(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return-void
.end method

.method public setLteCqi(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public setLteRsrp(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return-void
.end method

.method public setLteRsrq(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return-void
.end method

.method public setLteRssnr(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return-void
.end method

.method public setLteSignalStrength(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return-void
.end method

.method public setMobileNetworkType(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return-void
.end method

.method public setRssi(I)V
    .registers 2

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
