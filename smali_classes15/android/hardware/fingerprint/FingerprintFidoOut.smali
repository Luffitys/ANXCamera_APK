.class public Landroid/hardware/fingerprint/FingerprintFidoOut;
.super Ljava/lang/Object;
.source "FingerprintFidoOut.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintFidoOut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fingerId:I

.field private uvt:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/fingerprint/FingerprintFidoOut$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFidoOut$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFidoOut;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFingerId()I
    .registers 2

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    return v0
.end method

.method public getUvt()[B
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    return-object v0
.end method

.method public setFingerId(I)V
    .registers 2

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    return-void
.end method

.method public setUvt([B)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintFidoOut [uvt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fingerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
