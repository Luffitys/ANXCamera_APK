.class Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field owner:I

.field size:I

.field final synthetic this$0:Lcom/xiaomi/camera/core/ImageMemoryManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ImageMemoryManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->this$0:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    iput p3, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->size:I

    return-void
.end method
