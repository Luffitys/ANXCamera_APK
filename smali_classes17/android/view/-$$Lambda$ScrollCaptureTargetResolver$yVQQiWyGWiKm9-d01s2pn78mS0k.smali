.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureTargetResolver;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureTargetResolver;JLjava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iput-wide p2, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$1:J

    iput-object p4, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$0:Landroid/view/ScrollCaptureTargetResolver;

    iget-wide v1, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$1:J

    iget-object v3, p0, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ScrollCaptureTargetResolver;->lambda$start$1$ScrollCaptureTargetResolver(JLjava/util/function/Consumer;)V

    return-void
.end method
