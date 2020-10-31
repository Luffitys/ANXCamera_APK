.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field private mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

.field private mAuthentication:Landroid/net/IpSecAlgorithm;

.field private mDestinationAddress:Ljava/lang/String;

.field private mEncapRemotePort:I

.field private mEncapSocketResourceId:I

.field private mEncapType:I

.field private mEncryption:Landroid/net/IpSecAlgorithm;

.field private mMarkMask:I

.field private mMarkValue:I

.field private mMode:I

.field private mNattKeepaliveInterval:I

.field private mNetwork:Landroid/net/Network;

.field private mSourceAddress:Ljava/lang/String;

.field private mSpiResourceId:I

.field private mXfrmInterfaceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/IpSecConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMode:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    iget-object v0, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget v0, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget-object v0, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapType:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v0, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    iget v0, p1, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/IpSecConfig;

    iget v2, p0, Landroid/net/IpSecConfig;->mMode:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMode:I

    if-ne v2, v3, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_2f

    iget-object v3, v0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_2f
    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-ne v2, v3, :cond_85

    :cond_35
    iget v2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapType:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v3, v0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v3, v0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    if-ne v2, v3, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v3, v0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMarkValue:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    iget v3, v0, Landroid/net/IpSecConfig;->mMarkMask:I

    if-ne v2, v3, :cond_85

    iget v2, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    iget v3, v0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    if-ne v2, v3, :cond_85

    const/4 v1, 0x1

    goto :goto_86

    :cond_85
    nop

    :goto_86
    return v1
.end method

.method public getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getAuthentication()Landroid/net/IpSecAlgorithm;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEncapRemotePort()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return v0
.end method

.method public getEncapSocketResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return v0
.end method

.method public getEncapType()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return v0
.end method

.method public getEncryption()Landroid/net/IpSecAlgorithm;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getMarkMask()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return v0
.end method

.method public getMarkValue()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    return v0
.end method

.method public getNattKeepaliveInterval()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getSourceAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSpiResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return v0
.end method

.method public getXfrmInterfaceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    return v0
.end method

.method public setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setAuthentication(Landroid/net/IpSecAlgorithm;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setDestinationAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-void
.end method

.method public setEncapRemotePort(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return-void
.end method

.method public setEncapSocketResourceId(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public setEncapType(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return-void
.end method

.method public setEncryption(Landroid/net/IpSecAlgorithm;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setMarkMask(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method public setMarkValue(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return-void
.end method

.method public setMode(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mMode:I

    return-void
.end method

.method public setNattKeepaliveInterval(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setSourceAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-void
.end method

.method public setSpiResourceId(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return-void
.end method

.method public setXfrmInterfaceId(I)V
    .registers 2

    iput p1, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    nop

    const-string/jumbo v1, "{mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const-string v1, "TUNNEL"

    goto :goto_16

    :cond_14
    const-string v1, "TRANSPORT"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDestinationAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapSocketResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapRemotePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNattKeepaliveInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mSpiResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthenticatedEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mXfrmInterfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mXfrmInterfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
