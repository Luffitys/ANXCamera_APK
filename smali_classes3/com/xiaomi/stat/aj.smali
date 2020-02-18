.class public Lcom/xiaomi/stat/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/aj$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field private static final b:I = 0x2710

.field private static final c:I = 0x3


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/os/HandlerThread;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/stat/aj;->g:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaomi/stat/aj;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/stat/aj;->i:I

    iput-boolean v0, p0, Lcom/xiaomi/stat/aj;->j:Z

    iput-object p1, p0, Lcom/xiaomi/stat/aj;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/aj;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/aj;->g:I

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/stat/aj;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/aj;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/stat/aj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/stat/aj;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/stat/aj;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/aj;->h:I

    return p0
.end method

.method private d()V
    .locals 5

    new-instance v0, Lcom/xiaomi/stat/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/stat/aj$a;-><init>(Lcom/xiaomi/stat/aj;Lcom/xiaomi/stat/ak;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, ""

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/stat/aj;->f:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/xiaomi/stat/aj;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/stat/aj;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/xiaomi/stat/aj$a;->a(Lcom/xiaomi/stat/aj$a;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/aj;->d()V

    iget-object v0, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/xiaomi/stat/aj;->j:Z

    iget-object v1, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    iget p0, p0, Lcom/xiaomi/stat/aj;->i:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/aj;->i:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/stat/aj;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/aj;->j:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/aj;->g:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/aj;->h:I

    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/stat/aj;->j:Z

    return p0
.end method
