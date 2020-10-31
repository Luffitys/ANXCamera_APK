.class public final Landroid/net/apf/ApfCapabilities;
.super Ljava/lang/Object;
.source "ApfCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/apf/ApfCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apfPacketFormat:I

.field public final apfVersionSupported:I

.field public final maximumApfProgramSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/apf/ApfCapabilities$1;

    invoke-direct {v0}, Landroid/net/apf/ApfCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    iput p2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iput p3, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/apf/ApfCapabilities$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/apf/ApfCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getApfDrop8023Frames()Z
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getApfEtherTypeBlackList()[I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/apf/ApfCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/apf/ApfCapabilities;

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    iget v3, v0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hasDataAccess()Z
    .registers 3

    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s{version: %d, maxSize: %d, format: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
