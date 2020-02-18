.class Lcom/xiaomi/stat/c/i$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/c/i;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/stat/c/i$a;->a:Lcom/xiaomi/stat/c/i;

    invoke-static {p0}, Lcom/xiaomi/stat/c/i;->a(Lcom/xiaomi/stat/c/i;)V

    :cond_0
    return-void
.end method
