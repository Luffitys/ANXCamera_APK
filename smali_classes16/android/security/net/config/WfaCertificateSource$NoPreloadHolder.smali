.class Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;
.super Ljava/lang/Object;
.source "WfaCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/WfaCertificateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/security/net/config/WfaCertificateSource;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/security/net/config/WfaCertificateSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/net/config/WfaCertificateSource;-><init>(Landroid/security/net/config/WfaCertificateSource$1;)V

    sput-object v0, Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;->INSTANCE:Landroid/security/net/config/WfaCertificateSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/security/net/config/WfaCertificateSource;
    .registers 1

    sget-object v0, Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;->INSTANCE:Landroid/security/net/config/WfaCertificateSource;

    return-object v0
.end method
