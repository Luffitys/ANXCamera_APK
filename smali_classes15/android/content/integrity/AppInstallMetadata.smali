.class public final Landroid/content/integrity/AppInstallMetadata;
.super Ljava/lang/Object;
.source "AppInstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/AppInstallMetadata$Builder;
    }
.end annotation


# instance fields
.field private final mAllowedInstallersAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallerName:Ljava/lang/String;

.field private final mIsPreInstalled:Z

.field private final mIsStampPresent:Z

.field private final mIsStampTrusted:Z

.field private final mIsStampVerified:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mStampCertificateHash:Ljava/lang/String;

.field private final mVersionCode:J


# direct methods
.method private constructor <init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$000(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mAppCertificates:Ljava/util/List;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$100(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerName:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$200(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mInstallerCertificates:Ljava/util/List;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$300(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mVersionCode:J
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$400(Landroid/content/integrity/AppInstallMetadata$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mIsPreInstalled:Z
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$500(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampPresent:Z
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$600(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampVerified:Z
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$700(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mIsStampTrusted:Z
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$800(Landroid/content/integrity/AppInstallMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mStampCertificateHash:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$900(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    # getter for: Landroid/content/integrity/AppInstallMetadata$Builder;->mAllowedInstallersAndCertificates:Ljava/util/Map;
    invoke-static {p1}, Landroid/content/integrity/AppInstallMetadata$Builder;->access$1000(Landroid/content/integrity/AppInstallMetadata$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/integrity/AppInstallMetadata$Builder;Landroid/content/integrity/AppInstallMetadata$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/integrity/AppInstallMetadata;-><init>(Landroid/content/integrity/AppInstallMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public getAllowedInstallersAndCertificates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAllowedInstallersAndCertificates:Ljava/util/Map;

    return-object v0
.end method

.method public getAppCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getInstallerCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getInstallerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStampCertificateHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    iget-wide v0, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    return-wide v0
.end method

.method public isPreInstalled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    return v0
.end method

.method public isStampPresent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    return v0
.end method

.method public isStampTrusted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    return v0
.end method

.method public isStampVerified()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mAppCertificates:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerName:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_15

    move-object v1, v2

    :cond_15
    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mInstallerCertificates:Ljava/util/List;

    if-nez v3, :cond_1e

    move-object v3, v2

    :cond_1e
    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget-wide v3, p0, Landroid/content/integrity/AppInstallMetadata;->mVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsPreInstalled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampPresent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampVerified:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    iget-boolean v3, p0, Landroid/content/integrity/AppInstallMetadata;->mIsStampTrusted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    iget-object v3, p0, Landroid/content/integrity/AppInstallMetadata;->mStampCertificateHash:Ljava/lang/String;

    if-nez v3, :cond_55

    goto :goto_56

    :cond_55
    move-object v2, v3

    :goto_56
    aput-object v2, v0, v1

    const-string v1, "AppInstallMetadata { PackageName = %s, AppCerts = %s, InstallerName = %s, InstallerCerts = %s, VersionCode = %d, PreInstalled = %b, StampPresent = %b, StampVerified = %b, StampTrusted = %b, StampCert = %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
