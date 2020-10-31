.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;->INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$o3geRfUaRT9tnqKKZbu1EbUxw4Q;

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

    invoke-static {p1}, Landroid/telephony/TelephonyFrameworkInitializer;->lambda$registerServiceWrappers$5(Landroid/content/Context;)Landroid/telephony/ims/ImsManager;

    move-result-object p1

    return-object p1
.end method
