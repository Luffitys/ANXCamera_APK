.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$zKz_M9eA5YGpi6vfMJkxAoy9wLQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Landroid/view/contentcapture/DataShareRequest;

    check-cast p3, Landroid/service/contentcapture/IDataShareCallback;

    invoke-static {p1, p2, p3}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onDataShared$6(Ljava/lang/Object;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method
