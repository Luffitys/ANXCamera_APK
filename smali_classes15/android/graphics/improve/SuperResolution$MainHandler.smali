.class Landroid/graphics/improve/SuperResolution$MainHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_59

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-virtual {v0}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # invokes: Landroid/graphics/improve/SuperResolution;->checkViewIsAvailable(Landroid/widget/ImageView;)Z
    invoke-static {v2, v1}, Landroid/graphics/improve/SuperResolution;->access$000(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    :cond_17
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v3, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    # invokes: Landroid/graphics/improve/SuperResolution;->isTimeOutOfLimit(J)Z
    invoke-static {v2, v3, v4}, Landroid/graphics/improve/SuperResolution;->access$100(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v2

    if-eqz v2, :cond_22

    return-void

    :cond_22
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # invokes: Landroid/graphics/improve/SuperResolution;->drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    invoke-static {v2, v1, v0}, Landroid/graphics/improve/SuperResolution;->access$200(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # getter for: Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;
    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->access$300(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/graphics/improve/ImproveHookAble;->setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const-string v3, "handle message"

    const-string/jumbo v4, "update drawable successful"

    invoke-static {v3, v4}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_44

    goto :goto_59

    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "hook fail"

    invoke-static {v3, v4}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "update drawable fail"

    invoke-static {v4, v3}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_59
    return-void
.end method
