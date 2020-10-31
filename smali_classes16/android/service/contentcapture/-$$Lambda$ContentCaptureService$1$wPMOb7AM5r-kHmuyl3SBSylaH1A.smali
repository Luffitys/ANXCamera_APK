.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$wPMOb7AM5r-kHmuyl3SBSylaH1A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {p1}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onDisconnected$1(Ljava/lang/Object;)V

    return-void
.end method
