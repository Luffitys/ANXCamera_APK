.class public final Landroid/net/NetworkAgentConfig;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkAgentConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkAgentConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptPartialConnectivity:Z

.field public acceptUnvalidated:Z

.field public allowBypass:Z

.field public explicitlySelected:Z

.field public transient hasShownBroken:Z

.field public legacyType:I

.field public legacyTypeName:Ljava/lang/String;

.field private mLegacyExtraInfo:Ljava/lang/String;

.field public provisioningNotificationDisabled:Z

.field public skip464xlat:Z

.field public subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/NetworkAgentConfig$1;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$1;-><init>()V

    sput-object v0, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkAgentConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    const-string v0, ""

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    if-eqz p1, :cond_36

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    iget v0, p1, Landroid/net/NetworkAgentConfig;->legacyType:I

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    :cond_36
    return-void
.end method

.method static synthetic access$002(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_60

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkAgentConfig;

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    iget v4, v2, Landroid/net/NetworkAgentConfig;->legacyType:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v1

    :goto_5f
    return v0

    :cond_60
    :goto_60
    return v1
.end method

.method public getLegacyExtraInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyType()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    return v0
.end method

.method public getLegacyTypeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExplicitlySelected()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    return v0
.end method

.method public isNat64DetectionEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPartialConnectivityAcceptable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    return v0
.end method

.method public isProvisioningNotificationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnvalidatedConnectivityAcceptable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentConfig { allowBypass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", explicitlySelected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", acceptUnvalidated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", acceptPartialConnectivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningNotificationDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscriberId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", skip464xlat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", legacyType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasShownBroken = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", legacyTypeName = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", legacyExtraInfo = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
