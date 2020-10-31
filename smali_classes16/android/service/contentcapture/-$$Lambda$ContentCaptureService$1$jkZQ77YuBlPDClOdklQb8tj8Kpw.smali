.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$jkZQ77YuBlPDClOdklQb8tj8Kpw;

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

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onSessionFinished$4(Ljava/lang/Object;I)V

    return-void
.end method
