.class Lcom/xiaomi/camera/util/ThreadUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/camera/util/ThreadUtils$BlockingOperation;


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/util/ThreadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/ThreadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    return-void
.end method
