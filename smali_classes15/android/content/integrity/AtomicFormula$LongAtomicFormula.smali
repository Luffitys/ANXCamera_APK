.class public final Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
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
    name = "LongAtomicFormula"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$LongAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOperator:Ljava/lang/Integer;

.field private final mValue:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    nop

    invoke-static {p2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->isValidOperator(I)Z

    move-result v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Unknown operator: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-void
.end method

.method private static getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v0

    return-wide v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in IntAtomicFormula"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValidOperator(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
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

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getOperator()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    const/4 v2, 0x2

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
    .registers 9

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_a

    goto :goto_56

    :cond_a
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J

    move-result-wide v2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4a

    if-eq v0, v4, :cond_3e

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2c

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2b

    move v1, v4

    :cond_2b
    return v1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    aput-object v5, v4, v1

    const-string v1, "Unexpected operator %d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-lez v0, :cond_49

    move v1, v4

    :cond_49
    return v1

    :cond_4a
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_55

    move v1, v4

    :cond_55
    return v1

    :cond_56
    :goto_56
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_b

    goto :goto_30

    :cond_b
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v3

    invoke-static {v3}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    aput-object v2, v0, v1

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    :goto_30
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v2

    invoke-static {v2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty LongAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
