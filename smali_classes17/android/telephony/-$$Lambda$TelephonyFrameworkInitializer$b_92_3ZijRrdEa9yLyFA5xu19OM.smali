.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;->INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$b_92_3ZijRrdEa9yLyFA5xu19OM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/telephony/TelephonyFrameworkInitializer;->lambda$registerServiceWrappers$1(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    return-object p1
.end method
