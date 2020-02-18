.class Lcom/xiaomi/stat/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xiaomi/stat/MiStatParams;

.field final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/z;->e:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/z;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/stat/z;->b:J

    iput-wide p5, p0, Lcom/xiaomi/stat/z;->c:J

    iput-object p7, p0, Lcom/xiaomi/stat/z;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/z;->e:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->A()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/z;->e:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/z;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xiaomi/stat/z;->b:J

    iget-wide v2, p0, Lcom/xiaomi/stat/z;->c:J

    sub-long v2, v4, v2

    iget-object v6, p0, Lcom/xiaomi/stat/z;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
