.class public final synthetic Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;

    invoke-direct {v0}, Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;->INSTANCE:Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;

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

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/media/MediaRoute2ProviderService;->onSetSessionVolume(JLjava/lang/String;I)V

    return-void
.end method
