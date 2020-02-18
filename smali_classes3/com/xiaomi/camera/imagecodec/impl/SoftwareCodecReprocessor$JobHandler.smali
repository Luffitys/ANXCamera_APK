.class Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;
.super Landroid/os/Handler;
.source "SoftwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# static fields
.field private static final MSG_DESTROY_ENCODER:I = 0x2

.field private static final MSG_DO_NEXT_JOB:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_DESTROY_ENCODER"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_DO_NEXT_JOB"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->access$200(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V

    :cond_2
    :goto_0
    return-void
.end method
