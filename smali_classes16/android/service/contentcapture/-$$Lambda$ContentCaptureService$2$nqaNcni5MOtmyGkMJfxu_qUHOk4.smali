.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/pm/ParceledListSlice;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Landroid/content/ContentCaptureOptions;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/service/contentcapture/ContentCaptureService$2;->lambda$sendEvents$0(Ljava/lang/Object;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method
