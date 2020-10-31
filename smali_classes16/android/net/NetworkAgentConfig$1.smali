.class Landroid/net/NetworkAgentConfig$1;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkAgentConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkAgentConfig;
    .registers 6

    new-instance v0, Landroid/net/NetworkAgentConfig;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, v3

    :goto_42
    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    iput-boolean v2, v0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/NetworkAgentConfig;->access$002(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgentConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkAgentConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NetworkAgentConfig;
    .registers 3

    new-array v0, p1, [Landroid/net/NetworkAgentConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkAgentConfig$1;->newArray(I)[Landroid/net/NetworkAgentConfig;

    move-result-object p1

    return-object p1
.end method
