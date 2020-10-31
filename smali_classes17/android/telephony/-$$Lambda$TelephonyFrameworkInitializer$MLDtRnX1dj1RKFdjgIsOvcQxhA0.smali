.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;->INSTANCE:Landroid/telephony/-$$Lambda$TelephonyFrameworkInitializer$MLDtRnX1dj1RKFdjgIsOvcQxhA0;

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

    invoke-static {p1}, Landroid/telephony/TelephonyFrameworkInitializer;->lambda$registerServiceWrappers$4(Landroid/content/Context;)Landroid/telephony/euicc/EuiccCardManager;

    move-result-object p1

    return-object p1
.end method
