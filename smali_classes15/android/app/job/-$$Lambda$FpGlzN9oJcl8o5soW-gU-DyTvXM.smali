.class public final synthetic Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;

    invoke-direct {v0}, Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;-><init>()V

    sput-object v0, Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;->INSTANCE:Landroid/app/job/-$$Lambda$FpGlzN9oJcl8o5soW-gU-DyTvXM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/os/PowerWhitelistManager;

    invoke-direct {v0, p1}, Landroid/os/PowerWhitelistManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
