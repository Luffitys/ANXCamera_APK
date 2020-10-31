.class public final Landroid/security/keystore/recovery/KeyDerivationParams;
.super Ljava/lang/Object;
.source "KeyDerivationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/recovery/KeyDerivationParams$KeyDerivationAlgorithm;
    }
.end annotation


# static fields
.field public static final ALGORITHM_SCRYPT:I = 0x2

.field public static final ALGORITHM_SHA256:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/recovery/KeyDerivationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlgorithm:I

.field private final mMemoryDifficulty:I

.field private final mSalt:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams$1;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyDerivationParams$1;-><init>()V

    sput-object v0, Landroid/security/keystore/recovery/KeyDerivationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I[B)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    return-void
.end method

.method private constructor <init>(I[BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    iput p3, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    return-void
.end method

.method public static createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 4

    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[BI)V

    return-object v0
.end method

.method public static createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 3

    new-instance v0, Landroid/security/keystore/recovery/KeyDerivationParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/keystore/recovery/KeyDerivationParams;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAlgorithm()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    return v0
.end method

.method public getMemoryDifficulty()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    return v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/security/keystore/recovery/KeyDerivationParams;->mMemoryDifficulty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
