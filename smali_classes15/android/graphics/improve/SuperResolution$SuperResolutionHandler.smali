.class Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperResolutionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e6

    if-eq v0, v1, :cond_13

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_c

    goto/16 :goto_a7

    :cond_c
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # invokes: Landroid/graphics/improve/SuperResolution;->initImproveInSRThread()V
    invoke-static {v0}, Landroid/graphics/improve/SuperResolution;->access$400(Landroid/graphics/improve/SuperResolution;)V

    goto/16 :goto_a7

    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/graphics/improve/SRReporter;->reportImprove()V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v4, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    # invokes: Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/graphics/improve/SuperResolution;->access$500(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "start improve bitmap"

    invoke-static {v4, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # getter for: Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;
    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->access$600(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;

    move-result-object v3

    iget-object v4, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Landroid/graphics/improve/BitmapImproveAble;->improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_3f

    return-void

    :cond_3f
    const-string v5, "handle message"

    if-eqz v3, :cond_a8

    iget-object v6, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_a8

    :cond_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "improve bitmap successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # invokes: Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    invoke-static {v7, v3}, Landroid/graphics/improve/SuperResolution;->access$500(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v6, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    # invokes: Landroid/graphics/improve/SuperResolution;->add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v5, v4, v6}, Landroid/graphics/improve/SuperResolution;->access$700(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Landroid/graphics/improve/SRReporter;->reportImproveTime(J)V

    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    const-string v8, "check improve use time"

    # invokes: Landroid/graphics/improve/SuperResolution;->checkTime(JLjava/lang/String;)V
    invoke-static {v7, v1, v2, v8}, Landroid/graphics/improve/SuperResolution;->access$800(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V

    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v8, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    # invokes: Landroid/graphics/improve/SuperResolution;->isTimeOutOfLimit(J)Z
    invoke-static {v7, v8, v9}, Landroid/graphics/improve/SuperResolution;->access$100(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v7

    if-eqz v7, :cond_89

    return-void

    :cond_89
    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # getter for: Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;
    invoke-static {v7}, Landroid/graphics/improve/SuperResolution;->access$900(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v7

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    # getter for: Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;
    invoke-static {v8}, Landroid/graphics/improve/SuperResolution;->access$900(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v0}, Landroid/graphics/improve/SuperResolution$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-wide v9, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    const-wide/16 v11, 0x1f4

    add-long/2addr v9, v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/improve/SuperResolution$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_a7
    return-void

    :cond_a8
    :goto_a8
    const-string v6, "improve fail !!!"

    invoke-static {v5, v6}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "algorithm error"

    invoke-static {v5, v6}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
