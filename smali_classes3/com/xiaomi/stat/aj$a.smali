.class Lcom/xiaomi/stat/aj$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/aj;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/xiaomi/stat/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/stat/aj$a;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/stat/aj;Lcom/xiaomi/stat/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/aj$a;-><init>(Lcom/xiaomi/stat/aj;)V

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/aj$a;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/aj$a;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/aj$a;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-static {v0}, Lcom/xiaomi/stat/aj;->a(Lcom/xiaomi/stat/aj;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-static {v0}, Lcom/xiaomi/stat/aj;->b(Lcom/xiaomi/stat/aj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-static {v0}, Lcom/xiaomi/stat/aj;->c(Lcom/xiaomi/stat/aj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/stat/aj$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/stat/aj$a;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-static {p0}, Lcom/xiaomi/stat/aj;->d(Lcom/xiaomi/stat/aj;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/stat/aj$a;->a:Lcom/xiaomi/stat/aj;

    invoke-virtual {p0}, Lcom/xiaomi/stat/aj;->b()V

    :cond_2
    :goto_0
    return v1
.end method
