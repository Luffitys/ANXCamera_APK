.class public Lcom/xiaomi/stat/c/g;
.super Landroid/os/Handler;


# static fields
.field private static final c:Ljava/lang/String; = "UploadTimer"

.field private static final d:I = 0x3a98

.field private static final e:I = 0x5

.field private static final f:I = 0x15180

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Landroid/content/BroadcastReceiver;

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const p1, 0x493e0

    iput p1, p0, Lcom/xiaomi/stat/c/g;->j:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/stat/c/g;->l:J

    iput-boolean v0, p0, Lcom/xiaomi/stat/c/g;->m:Z

    new-instance p1, Lcom/xiaomi/stat/c/h;

    invoke-direct {p1, p0}, Lcom/xiaomi/stat/c/h;-><init>(Lcom/xiaomi/stat/c/g;)V

    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    const p1, 0xea60

    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/g;->a(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " UploadTimer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UploadTimer"

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p1, :cond_1

    const/4 p0, 0x5

    if-ge p1, p0, :cond_1

    return p0

    :cond_1
    const p0, 0x15180

    if-le p1, p0, :cond_2

    return p0

    :cond_2
    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerNetReceiver: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UploadTimer"

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private f()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/b;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result p0

    if-lez p0, :cond_1

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_1
    const/16 p0, 0x3a98

    return p0
.end method

.method private g()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->c()V

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->e()V

    return-void
.end method

.method private h()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " checkDatabase mIsDatabaseEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UploadTimer"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget p0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->n:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->f()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/c/g;->n:I

    iget v0, p0, Lcom/xiaomi/stat/c/g;->n:I

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/stat/c/g;->l:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stat/c/g;->l:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " resetBackgroundInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UploadTimer"

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " totalCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " deleteData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->j:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    if-nez p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    add-int/lit16 p1, p1, 0x3a98

    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/stat/c/g;->j:I

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e()V
    .locals 10

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->n(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->m(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v6

    sub-long v2, v4, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    long-to-float v2, v2

    sub-long v0, v6, v0

    long-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {p0, v6, v7}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;J)V

    invoke-static {p0, v4, v5}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;J)V

    invoke-static {p0, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;F)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->g()V

    iget p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->i()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->h()V

    :cond_2
    :goto_0
    return-void
.end method
