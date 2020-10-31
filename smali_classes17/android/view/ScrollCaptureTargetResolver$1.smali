.class Landroid/view/ScrollCaptureTargetResolver$1;
.super Ljava/lang/Object;
.source "ScrollCaptureTargetResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureTargetResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ScrollCaptureTargetResolver;


# direct methods
.method constructor <init>(Landroid/view/ScrollCaptureTargetResolver;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ScrollCaptureTargetResolver$1;->this$0:Landroid/view/ScrollCaptureTargetResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver$1;->this$0:Landroid/view/ScrollCaptureTargetResolver;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTargetResolver;->checkThread()V

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver$1;->this$0:Landroid/view/ScrollCaptureTargetResolver;

    const/4 v1, 0x0

    # invokes: Landroid/view/ScrollCaptureTargetResolver;->supplyResult(Landroid/view/ScrollCaptureTarget;)V
    invoke-static {v0, v1}, Landroid/view/ScrollCaptureTargetResolver;->access$000(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;)V

    return-void
.end method
