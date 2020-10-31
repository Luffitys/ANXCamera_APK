.class public final Landroid/telephony/ims/ImsSsData;
.super Ljava/lang/Object;
.source "ImsSsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsSsData$Builder;,
        Landroid/telephony/ims/ImsSsData$ServiceType;,
        Landroid/telephony/ims/ImsSsData$ServiceClassFlags;,
        Landroid/telephony/ims/ImsSsData$TeleserviceType;,
        Landroid/telephony/ims/ImsSsData$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsSsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_CIRCUIT_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_CIRCUIT_SYNC:I = 0x10

.field public static final SERVICE_CLASS_DATA_PACKET_ACCESS:I = 0x40

.field public static final SERVICE_CLASS_DATA_PAD:I = 0x80

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SS_ACTIVATION:I = 0x0

.field public static final SS_ALL_BARRING:I = 0x12

.field public static final SS_ALL_DATA_TELESERVICES:I = 0x3

.field public static final SS_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final SS_ALL_TELESEVICES:I = 0x1

.field public static final SS_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final SS_BAIC:I = 0x10

.field public static final SS_BAIC_ROAMING:I = 0x11

.field public static final SS_BAOC:I = 0xd

.field public static final SS_BAOIC:I = 0xe

.field public static final SS_BAOIC_EXC_HOME:I = 0xf

.field public static final SS_CFU:I = 0x0

.field public static final SS_CFUT:I = 0x6

.field public static final SS_CF_ALL:I = 0x4

.field public static final SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SS_CF_BUSY:I = 0x1

.field public static final SS_CF_NOT_REACHABLE:I = 0x3

.field public static final SS_CF_NO_REPLY:I = 0x2

.field public static final SS_CLIP:I = 0x7

.field public static final SS_CLIR:I = 0x8

.field public static final SS_CNAP:I = 0xb

.field public static final SS_COLP:I = 0x9

.field public static final SS_COLR:I = 0xa

.field public static final SS_DEACTIVATION:I = 0x1

.field public static final SS_ERASURE:I = 0x4

.field public static final SS_INCOMING_BARRING:I = 0x14

.field public static final SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final SS_INCOMING_BARRING_DN:I = 0x15

.field public static final SS_INTERROGATION:I = 0x2

.field public static final SS_OUTGOING_BARRING:I = 0x13

.field public static final SS_REGISTRATION:I = 0x3

.field public static final SS_SMS_SERVICES:I = 0x4

.field public static final SS_TELEPHONY:I = 0x2

.field public static final SS_WAIT:I = 0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCfInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImsSsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSsInfo:[I

.field public final requestType:I

.field public final result:I

.field public final serviceClass:I

.field public final serviceType:I

.field public final teleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/telephony/ims/ImsSsData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/ImsSsData;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telephony/ims/ImsSsData$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsData$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    iput p2, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    iput p3, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    iput p4, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    iput p5, p0, Landroid/telephony/ims/ImsSsData;->result:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    return-object v0
.end method

.method public getRequestType()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    return v0
.end method

.method public getResult()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    return v0
.end method

.method public getServiceClass()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    return v0
.end method

.method public getServiceType()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    return v0
.end method

.method public getSuppServiceInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-object v0
.end method

.method public getSuppServiceInfoCompat()[I
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_69

    :cond_13
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getClirOutgoingState()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getClirInterrogationStatus()I

    move-result v1

    aput v1, v0, v2

    return-object v0

    :cond_38
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeColr()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v1

    aput v1, v0, v3

    :cond_4c
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v1

    aput v1, v0, v2

    return-object v0

    :cond_69
    :goto_69
    sget-object v1, Landroid/telephony/ims/ImsSsData;->TAG:Ljava/lang/String;

    const-string v2, "getSuppServiceInfoCompat: Could not parse mImsSsInfo, returning empty int[]"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTeleserviceType()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    return v0
.end method

.method public isTypeBarring()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v0, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x1

    :goto_44
    return v0
.end method

.method public isTypeCF()Z
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    :goto_2d
    return v1
.end method

.method public isTypeCW()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTypeCf()Z
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCF()Z

    move-result v0

    return v0
.end method

.method public isTypeClip()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isTypeClir()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTypeColp()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTypeColr()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTypeCw()Z
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCW()Z

    move-result v0

    return v0
.end method

.method public isTypeIcb()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isTypeInterrogation()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isTypeUnConditional()Z
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public setCallForwardingInfo([Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    return-void
.end method

.method public setImsSpecificSuppServiceInfo([Landroid/telephony/ims/ImsSsInfo;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-void
.end method

.method public setSuppServiceInfo([I)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsSsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TeleserviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getTeleserviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getTeleserviceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
