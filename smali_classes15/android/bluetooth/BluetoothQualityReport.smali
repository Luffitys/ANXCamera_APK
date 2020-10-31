.class public final Landroid/bluetooth/BluetoothQualityReport;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;,
        Landroid/bluetooth/BluetoothQualityReport$BqrCommon;,
        Landroid/bluetooth/BluetoothQualityReport$AirMode;,
        Landroid/bluetooth/BluetoothQualityReport$LinkQuality;,
        Landroid/bluetooth/BluetoothQualityReport$ConnState;,
        Landroid/bluetooth/BluetoothQualityReport$PacketType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_REPORT_ID_A2DP_CHOPPY:I = 0x3

.field public static final QUALITY_REPORT_ID_APPROACH_LSTO:I = 0x2

.field public static final QUALITY_REPORT_ID_CONN_FAIL:I = 0x20

.field public static final QUALITY_REPORT_ID_MONITOR:I = 0x1

.field public static final QUALITY_REPORT_ID_SCO_CHOPPY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothQualityReport"


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mBluetoothClass:I

.field private mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

.field private mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

.field private mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

.field private mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

.field private mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

.field private mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

.field private mLmpSubVer:I

.field private mLmpVer:I

.field private mManufacturerId:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-direct {v0, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_47

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_68

    :cond_47
    const/4 v2, 0x3

    if-ne v0, v2, :cond_52

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_68

    :cond_52
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5d

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_68

    :cond_5d
    const/16 v2, 0x20

    if-ne v0, v2, :cond_68

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-direct {v2, p0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    :cond_68
    :goto_68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;I[B)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BluetoothQualityReport"

    if-nez v0, :cond_16

    const-string/jumbo v0, "remote addr is invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    goto :goto_18

    :cond_16
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    :goto_18
    iput p2, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    iput p4, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    if-nez p5, :cond_2b

    const-string/jumbo v0, "remote name is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iput-object p5, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    :goto_2d
    iput p6, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    const/16 v1, 0x30

    invoke-direct {v0, p0, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4b

    return-void

    :cond_4b
    iget-object v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->getLength()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_7e

    :cond_5d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_68

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_7e

    :cond_68
    const/4 v1, 0x4

    if-ne v0, v1, :cond_73

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_7e

    :cond_73
    const/16 v1, 0x20

    if-ne v0, v1, :cond_7f

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-direct {v1, p0, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    :goto_7e
    return-void

    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothQualityReport: unkown quality report id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothClass()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    return v0
.end method

.method public getBqrCommon()Landroid/bluetooth/BluetoothQualityReport$BqrCommon;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    return-object v0
.end method

.method public getBqrVsA2dpChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    return-object v0
.end method

.method public getBqrVsCommon()Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    return-object v0
.end method

.method public getBqrVsConnectFail()Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    return-object v0
.end method

.method public getBqrVsLsto()Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    return-object v0
.end method

.method public getBqrVsScoChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    return-object v0
.end method

.method public getLmpSubVersion()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    return v0
.end method

.method public getLmpVersion()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    return v0
.end method

.method public getManufacturerId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityReportId()I
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    return v0
.end method

.method public getQualityReportIdStr()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_19

    const-string v1, "INVALID"

    return-object v1

    :cond_19
    const-string v1, "Connect fail"

    return-object v1

    :cond_1c
    const-string v1, "SCO choppy"

    return-object v1

    :cond_1f
    const-string v1, "A2DP choppy"

    return-object v1

    :cond_22
    const-string v1, "Approaching LSTO"

    return-object v1

    :cond_25
    const-string v1, "Quality monitor"

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BQR: {\n  mAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLmpVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLmpSubVer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%04X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mManufacturerId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v5, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mBluetoothClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v2

    const-string v3, "\n}"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111

    :cond_b4
    const/4 v4, 0x3

    if-ne v2, v4, :cond_cc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111

    :cond_cc
    const/4 v4, 0x4

    if-ne v2, v4, :cond_e4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111

    :cond_e4
    const/16 v4, 0x20

    if-ne v2, v4, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111

    :cond_fd
    if-ne v2, v1, :cond_111

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_111
    :goto_111
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsCommon:Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_52

    :cond_37
    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_52

    :cond_40
    const/4 v1, 0x4

    if-ne v0, v1, :cond_49

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_52

    :cond_49
    const/16 v1, 0x20

    if-ne v0, v1, :cond_52

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_52
    :goto_52
    return-void
.end method
