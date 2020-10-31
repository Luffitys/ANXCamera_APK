.class public final synthetic Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;

    invoke-direct {v0}, Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;->INSTANCE:Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Landroid/media/MediaRoute2ProviderService;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/media/MediaRoute2ProviderService;->onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
