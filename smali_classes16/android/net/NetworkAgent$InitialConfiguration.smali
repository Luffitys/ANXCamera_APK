.class Landroid/net/NetworkAgent$InitialConfiguration;
.super Ljava/lang/Object;
.source "NetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final capabilities:Landroid/net/NetworkCapabilities;

.field public final config:Landroid/net/NetworkAgentConfig;

.field public final context:Landroid/content/Context;

.field public final info:Landroid/net/NetworkInfo;

.field public final properties:Landroid/net/LinkProperties;

.field public final score:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkAgent$InitialConfiguration;->context:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/NetworkAgent$InitialConfiguration;->capabilities:Landroid/net/NetworkCapabilities;

    iput-object p3, p0, Landroid/net/NetworkAgent$InitialConfiguration;->properties:Landroid/net/LinkProperties;

    iput p4, p0, Landroid/net/NetworkAgent$InitialConfiguration;->score:I

    iput-object p5, p0, Landroid/net/NetworkAgent$InitialConfiguration;->config:Landroid/net/NetworkAgentConfig;

    iput-object p6, p0, Landroid/net/NetworkAgent$InitialConfiguration;->info:Landroid/net/NetworkInfo;

    return-void
.end method
