.class public abstract Landroid/content/integrity/IntegrityFormula;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IntegrityFormula$Tag;,
        Landroid/content/integrity/IntegrityFormula$SourceStamp;,
        Landroid/content/integrity/IntegrityFormula$Installer;,
        Landroid/content/integrity/IntegrityFormula$Application;
    }
.end annotation


# static fields
.field public static final BOOLEAN_ATOMIC_FORMULA_TAG:I = 0x3

.field public static final COMPOUND_FORMULA_TAG:I = 0x0

.field public static final INSTALLER_ALLOWED_BY_MANIFEST_FORMULA_TAG:I = 0x4

.field public static final LONG_ATOMIC_FORMULA_TAG:I = 0x2

.field public static final STRING_ATOMIC_FORMULA_TAG:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs all([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs any([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static not(Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .registers 4

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/integrity/IntegrityFormula;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_32

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    sget-object v1, Landroid/content/integrity/InstallerAllowedByManifestFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown formula tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    sget-object v1, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :cond_3b
    sget-object v1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :cond_44
    sget-object v1, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :cond_4d
    sget-object v1, Landroid/content/integrity/CompoundFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1
.end method

.method public static writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public abstract getTag()I
.end method

.method public abstract isAppCertificateFormula()Z
.end method

.method public abstract isInstallerFormula()Z
.end method

.method public abstract matches(Landroid/content/integrity/AppInstallMetadata;)Z
.end method
