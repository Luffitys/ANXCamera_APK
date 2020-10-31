.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$w-tuWwiP1K_0_aWpap-nR9WJ3UQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Landroid/service/contentcapture/ActivityEvent;

    invoke-static {p1, p2}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onActivityEvent$7(Ljava/lang/Object;Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method
