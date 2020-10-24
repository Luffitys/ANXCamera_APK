.class Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;
.super Ljava/lang/Object;
.source ""


# static fields
.field static INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/core/ParallelDataZipper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper$1;)V

    sput-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;->INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
