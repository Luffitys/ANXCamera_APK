.class public Landroid/content/integrity/InstallerAllowedByManifestFormula;
.super Landroid/content/integrity/IntegrityFormula;
.source "InstallerAllowedByManifestFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/InstallerAllowedByManifestFormula;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALLER_CERTIFICATE_NOT_EVALUATED:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/InstallerAllowedByManifestFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/integrity/InstallerAllowedByManifestFormula$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static installerInAllowedInstallersFromManifest(Landroid/content/integrity/AppInstallMetadata;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTag()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isAppCertificateFormula()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInstallerFormula()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 4

    nop

    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getAllowedInstallersAndCertificates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p1, v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;->installerInAllowedInstallersFromManifest(Landroid/content/integrity/AppInstallMetadata;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
