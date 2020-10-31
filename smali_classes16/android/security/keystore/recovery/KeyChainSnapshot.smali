.class public final Landroid/security/keystore/recovery/KeyChainSnapshot;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyChainSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COUNTER_ID:J = 0x1L

.field private static final DEFAULT_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

.field private mCounterId:J

.field private mEncryptedRecoveryKeyBlob:[B

.field private mEntryRecoveryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyChainProtectionParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAttempts:I

.field private mServerParams:[B

.field private mSnapshotVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyChainSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    sget-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    sget-object v0, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    sget-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/RecoveryCertPath;

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/recovery/KeyChainSnapshot$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I
    .registers 2

    iput p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    return p1
.end method

.method static synthetic access$202(Landroid/security/keystore/recovery/KeyChainSnapshot;I)I
    .registers 2

    iput p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    return p1
.end method

.method static synthetic access$302(Landroid/security/keystore/recovery/KeyChainSnapshot;J)J
    .registers 3

    iput-wide p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    return-wide p1
.end method

.method static synthetic access$400(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-object v0
.end method

.method static synthetic access$402(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-object p1
.end method

.method static synthetic access$500(Landroid/security/keystore/recovery/KeyChainSnapshot;)Landroid/security/keystore/recovery/RecoveryCertPath;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    return-object v0
.end method

.method static synthetic access$502(Landroid/security/keystore/recovery/KeyChainSnapshot;Landroid/security/keystore/recovery/RecoveryCertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    return-object p1
.end method

.method static synthetic access$600(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-object v0
.end method

.method static synthetic access$802(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCounterId()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    return-wide v0
.end method

.method public getEncryptedRecoveryKeyBlob()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    return-object v0
.end method

.method public getKeyChainProtectionParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    return-object v0
.end method

.method public getMaxAttempts()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    return v0
.end method

.method public getServerParams()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    return-object v0
.end method

.method public getSnapshotVersion()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    return v0
.end method

.method public getTrustedHardwareCertPath()Ljava/security/cert/CertPath;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getWrappedApplicationKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mSnapshotVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mKeyChainProtectionParams:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEncryptedRecoveryKeyBlob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mEntryRecoveryData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mMaxAttempts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCounterId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mServerParams:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot;->mCertPath:Landroid/security/keystore/recovery/RecoveryCertPath;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
