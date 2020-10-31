.class public Landroid/security/identity/AccessControlProfile;
.super Ljava/lang/Object;
.source "AccessControlProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/AccessControlProfile$Builder;
    }
.end annotation


# instance fields
.field private mAccessControlProfileId:Landroid/security/identity/AccessControlProfileId;

.field private mReaderCertificate:Ljava/security/cert/X509Certificate;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationTimeout:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/AccessControlProfileId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/identity/AccessControlProfileId;-><init>(I)V

    iput-object v0, p0, Landroid/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroid/security/identity/AccessControlProfileId;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/identity/AccessControlProfile$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/identity/AccessControlProfile;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/security/identity/AccessControlProfile;Landroid/security/identity/AccessControlProfileId;)Landroid/security/identity/AccessControlProfileId;
    .registers 2

    iput-object p1, p0, Landroid/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroid/security/identity/AccessControlProfileId;

    return-object p1
.end method

.method static synthetic access$202(Landroid/security/identity/AccessControlProfile;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    return p1
.end method

.method static synthetic access$302(Landroid/security/identity/AccessControlProfile;J)J
    .registers 3

    iput-wide p1, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-wide p1
.end method

.method static synthetic access$402(Landroid/security/identity/AccessControlProfile;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2

    iput-object p1, p0, Landroid/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method


# virtual methods
.method getAccessControlProfileId()Landroid/security/identity/AccessControlProfileId;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroid/security/identity/AccessControlProfileId;

    return-object v0
.end method

.method getReaderCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Landroid/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getUserAuthenticationTimeout()J
    .registers 3

    iget-wide v0, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-wide v0
.end method

.method isUserAuthenticationRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    return v0
.end method
