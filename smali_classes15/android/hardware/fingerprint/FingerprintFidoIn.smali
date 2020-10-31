.class public Landroid/hardware/fingerprint/FingerprintFidoIn;
.super Ljava/lang/Object;
.source "FingerprintFidoIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintFidoIn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AAID:Ljava/lang/String;

.field private nonce:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/fingerprint/FingerprintFidoIn$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFidoIn$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFidoIn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAAID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()[B
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    return-object v0
.end method

.method public setAAID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    return-void
.end method

.method public setNonce([B)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintFidoIn [AAID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->AAID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoIn;->nonce:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
