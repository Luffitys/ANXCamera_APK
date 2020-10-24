.class Lcom/xiaomi/camera/core/ParallelDataZipper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field final synthetic val$cameraType:I

.field final synthetic val$image:Landroid/media/Image;

.field final synthetic val$imageType:I

.field final synthetic val$isPoolImage:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iput p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iput-boolean p4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    iput p5, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$400(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1, v5, v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$200(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImage: no capture data with timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    move v7, v1

    move v8, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v7

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v8

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {v0, v7, v8, v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZZ)V

    iget-object v9, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v9}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$400(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v9

    if-eq v9, v7, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImage: update stream number with: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v7

    if-eq v7, v8, :cond_3

    invoke-virtual {v0, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isSatFusionShot()Z

    move-result v7

    if-eq v7, v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsSatFusionShot(Z)V

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImage: timestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", streamNum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", fusion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    const/4 v7, 0x6

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    :goto_1
    iget-boolean v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v0, v1, v2, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;JJ)V

    return-void
.end method
