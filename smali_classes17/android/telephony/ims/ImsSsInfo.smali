.class public final Landroid/telephony/ims/ImsSsInfo;
.super Ljava/lang/Object;
.source "ImsSsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsSsInfo$Builder;,
        Landroid/telephony/ims/ImsSsInfo$ClirInterrogationStatus;,
        Landroid/telephony/ims/ImsSsInfo$ClirOutgoingState;,
        Landroid/telephony/ims/ImsSsInfo$ServiceProvisionStatus;,
        Landroid/telephony/ims/ImsSsInfo$ServiceStatus;
    }
.end annotation


# static fields
.field public static final CLIR_OUTGOING_DEFAULT:I = 0x0

.field public static final CLIR_OUTGOING_INVOCATION:I = 0x1

.field public static final CLIR_OUTGOING_SUPPRESSION:I = 0x2

.field public static final CLIR_STATUS_NOT_PROVISIONED:I = 0x0

.field public static final CLIR_STATUS_PROVISIONED_PERMANENT:I = 0x1

.field public static final CLIR_STATUS_TEMPORARILY_ALLOWED:I = 0x4

.field public static final CLIR_STATUS_TEMPORARILY_RESTRICTED:I = 0x3

.field public static final CLIR_STATUS_UNKNOWN:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final NOT_REGISTERED:I = -0x1

.field public static final SERVICE_NOT_PROVISIONED:I = 0x0

.field public static final SERVICE_PROVISIONED:I = 0x1

.field public static final SERVICE_PROVISIONING_UNKNOWN:I = -0x1


# instance fields
.field private mClirInterrogationStatus:I

.field private mClirOutgoingState:I

.field public mIcbNum:Ljava/lang/String;

.field public mProvisionStatus:I

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/ImsSsInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    iput-object p2, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Landroid/telephony/ims/ImsSsInfo;I)I
    .registers 2

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    return p1
.end method

.method static synthetic access$102(Landroid/telephony/ims/ImsSsInfo;I)I
    .registers 2

    iput p1, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return p1
.end method

.method private static provisionStatusToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const-string v0, "Service provisioning unknown"

    return-object v0

    :cond_8
    const-string v0, "Service provisioned"

    return-object v0

    :cond_b
    const-string v0, "Service not provisioned"

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClirInterrogationStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    return v0
.end method

.method public getClirOutgoingState()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    return v0
.end method

.method public getCompatArray(I)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_16

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getClirOutgoingState()I

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getClirInterrogationStatus()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    :cond_16
    const/16 v3, 0xa

    if-ne p1, v3, :cond_20

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    aput v3, v0, v2

    :cond_20
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getIcbNum()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingCommunicationBarringNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    if-nez v1, :cond_18

    const-string v1, "disabled"

    goto :goto_1a

    :cond_18
    const-string v1, "enabled"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProvisionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-static {v1}, Landroid/telephony/ims/ImsSsInfo;->provisionStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirInterrogationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/ImsSsInfo;->mClirOutgoingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
