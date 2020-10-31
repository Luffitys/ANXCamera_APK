.class public final Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
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
    name = "BooleanAtomicFormula"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_e

    const/4 v2, 0x6

    if-ne p1, v2, :cond_c

    goto :goto_e

    :cond_c
    move v2, v0

    goto :goto_f

    :cond_e
    :goto_e
    move v2, v1

    :goto_f
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_e

    const/4 v2, 0x6

    if-ne p1, v2, :cond_c

    goto :goto_e

    :cond_c
    move v2, v0

    goto :goto_f

    :cond_e
    :goto_e
    move v2, v1

    :goto_f
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method private static getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z
    .registers 5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_22

    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isStampTrusted()Z

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in BooleanAtomicFormula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isPreInstalled()Z

    move-result v0

    return v0
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

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public getTag()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppCertificateFormula()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInstallerFormula()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z

    move-result v0

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v1

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v3

    invoke-static {v3}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty BooleanAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
