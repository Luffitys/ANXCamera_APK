.class Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field processStartTime:J

.field final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;

.field timestamp:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    iput-wide p4, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    return-void
.end method
