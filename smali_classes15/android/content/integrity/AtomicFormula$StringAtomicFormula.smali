.class public final Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringAtomicFormula"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$StringAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsHashedValue:Ljava/lang/Boolean;

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    if-eq p1, v1, :cond_15

    const/4 v2, 0x3

    if-eq p1, v2, :cond_15

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    const/4 v2, 0x7

    if-ne p1, v2, :cond_13

    goto :goto_15

    :cond_13
    move v2, v0

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v1

    :goto_16
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_15

    if-eq p1, v3, :cond_15

    if-eq p1, v1, :cond_15

    const/4 v4, 0x2

    if-eq p1, v4, :cond_15

    if-ne p1, v0, :cond_13

    goto :goto_15

    :cond_13
    move v4, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v4, v3

    :goto_16
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1, p2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->hashValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eq p1, v3, :cond_39

    if-eq p1, v1, :cond_39

    if-eq p1, v0, :cond_39

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_39
    move v2, v3

    :cond_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    if-eq p1, v1, :cond_15

    const/4 v2, 0x3

    if-eq p1, v2, :cond_15

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    const/4 v2, 0x7

    if-ne p1, v2, :cond_13

    goto :goto_15

    :cond_13
    move v2, v0

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v1

    :goto_16
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-void
.end method

.method private static getMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_41

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x7

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getStampCertificateHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in StringAtomicFormula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_33
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_41
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-256 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static hashValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_12

    if-eqz p0, :cond_d

    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    :cond_d
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
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

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getIsHashedValue()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppCertificateFormula()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isInstallerFormula()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_18

    :cond_9
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    goto :goto_2a

    :cond_b
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v3

    invoke-static {v3}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    :goto_2a
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v1

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty StringAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
