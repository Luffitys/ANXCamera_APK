.class public final Landroid/security/keystore/recovery/KeyChainProtectionParams;
.super Ljava/lang/Object;
.source "KeyChainProtectionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;,
        Landroid/security/keystore/recovery/KeyChainProtectionParams$LockScreenUiFormat;,
        Landroid/security/keystore/recovery/KeyChainProtectionParams$UserSecretType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_LOCKSCREEN:I = 0x64

.field public static final UI_FORMAT_PASSWORD:I = 0x2

.field public static final UI_FORMAT_PATTERN:I = 0x3

.field public static final UI_FORMAT_PIN:I = 0x1


# instance fields
.field private mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

.field private mLockScreenUiFormat:Ljava/lang/Integer;

.field private mSecret:[B

.field private mUserSecretType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    sget-object v0, Landroid/security/keystore/recovery/KeyDerivationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/recovery/KeyChainProtectionParams$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object v0
.end method

.method static synthetic access$302(Landroid/security/keystore/recovery/KeyChainProtectionParams;Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object p1
.end method

.method static synthetic access$400(Landroid/security/keystore/recovery/KeyChainProtectionParams;)[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-object v0
.end method

.method static synthetic access$402(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)[B
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-object p1
.end method


# virtual methods
.method public clearSecret()V
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    return-object v0
.end method

.method public getLockScreenUiFormat()I
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSecret()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    return-object v0
.end method

.method public getUserSecretType()I
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mUserSecretType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mLockScreenUiFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mKeyDerivationParams:Landroid/security/keystore/recovery/KeyDerivationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->mSecret:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
