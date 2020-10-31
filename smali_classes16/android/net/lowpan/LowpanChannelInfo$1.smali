.class Landroid/net/lowpan/LowpanChannelInfo$1;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanChannelInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;
    .registers 4

    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;-><init>(Landroid/net/lowpan/LowpanChannelInfo$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$102(Landroid/net/lowpan/LowpanChannelInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$202(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$302(Landroid/net/lowpan/LowpanChannelInfo;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$402(Landroid/net/lowpan/LowpanChannelInfo;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$502(Landroid/net/lowpan/LowpanChannelInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    # setter for: Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->access$602(Landroid/net/lowpan/LowpanChannelInfo;Z)Z

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/lowpan/LowpanChannelInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object p1

    return-object p1
.end method
