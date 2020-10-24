.class Lcom/xiaomi/stat/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/stat/u;->b:J

    iput-wide p5, p0, Lcom/xiaomi/stat/u;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/u;->d:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/u;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/stat/u;->b:J

    iget-wide v4, p0, Lcom/xiaomi/stat/u;->c:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
