.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$Wuxtt-LzmmvHteiH6rnqxFy6Gng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$Wuxtt-LzmmvHteiH6rnqxFy6Gng;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$Wuxtt-LzmmvHteiH6rnqxFy6Gng;->f$0:I

    check-cast p1, Landroid/service/contentcapture/DataShareReadAdapter;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->lambda$error$1(ILandroid/service/contentcapture/DataShareReadAdapter;)V

    return-void
.end method
