.class public Landroid/telephony/data/ApnSetting$Builder;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApnName:Ljava/lang/String;

.field private mApnSetId:I

.field private mApnTypeBitmask:I

.field private mAuthType:I

.field private mCarrierEnabled:Z

.field private mCarrierId:I

.field private mEntryName:Ljava/lang/String;

.field private mId:I

.field private mMaxConns:I

.field private mMaxConnsTime:I

.field private mMmsProxyAddress:Ljava/lang/String;

.field private mMmsProxyPort:I

.field private mMmsc:Landroid/net/Uri;

.field private mModemCognitive:Z

.field private mMtu:I

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:I

.field private mNetworkTypeBitmask:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfileId:I

.field private mProtocol:I

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mRoamingProtocol:I

.field private mSkip464Xlat:I

.field private mUser:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return v0
.end method

.method static synthetic access$1100(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return v0
.end method

.method static synthetic access$1200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return v0
.end method

.method static synthetic access$1400(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return v0
.end method

.method static synthetic access$1500(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtu:I

    return v0
.end method

.method static synthetic access$1600(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return v0
.end method

.method static synthetic access$1800(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return v0
.end method

.method static synthetic access$1900(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return v0
.end method

.method static synthetic access$2100(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return v0
.end method

.method static synthetic access$2200(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return v0
.end method

.method static synthetic access$2300(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return v0
.end method

.method static synthetic access$2400(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return v0
.end method

.method static synthetic access$2600(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return v0
.end method

.method static synthetic access$2700(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return v0
.end method

.method static synthetic access$2800(Landroid/telephony/data/ApnSetting$Builder;I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return v0
.end method

.method static synthetic access$400(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return v0
.end method

.method static synthetic access$700(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return v0
.end method

.method private setId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return-object p0
.end method


# virtual methods
.method public build()Landroid/telephony/data/ApnSetting;
    .registers 3

    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit16 v0, v0, 0xfff

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1e

    :cond_18
    new-instance v0, Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting$1;)V

    return-object v0

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public buildWithoutCheck()Landroid/telephony/data/ApnSetting;
    .registers 3

    new-instance v0, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting$1;)V

    return-object v0
.end method

.method public setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method public setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return-object p0
.end method

.method public setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return-object p0
.end method

.method public setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return-object p0
.end method

.method public setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return-object p0
.end method

.method public setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return-object p0
.end method

.method public setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return-object p0
.end method

.method public setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object p0
.end method

.method public setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtu:I

    return-object p0
.end method

.method public setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method public setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return-object p0
.end method

.method public setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return-object p0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return-object p0
.end method

.method public setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return-object p0
.end method

.method public setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return-object p0
.end method

.method public setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return-object p0
.end method

.method public setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method

.method public setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return-object p0
.end method
