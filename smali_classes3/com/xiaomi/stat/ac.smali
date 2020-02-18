.class Lcom/xiaomi/stat/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/stat/MiStatParams;

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;ZLcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/ac;->c:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/ac;->a:Z

    iput-object p3, p0, Lcom/xiaomi/stat/ac;->b:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/ac;->c:Lcom/xiaomi/stat/e;

    iget-boolean v1, p0, Lcom/xiaomi/stat/ac;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/ac;->c:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/ac;->b:Lcom/xiaomi/stat/MiStatParams;

    iget-boolean p0, p0, Lcom/xiaomi/stat/ac;->a:Z

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
