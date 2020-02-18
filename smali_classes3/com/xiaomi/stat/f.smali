.class Lcom/xiaomi/stat/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/stat/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/d/e;->a()V

    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->h(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()V

    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stat/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/stat/f;->b:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/xiaomi/stat/b;->o()V

    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/b;->f(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->d(Lcom/xiaomi/stat/e;)V

    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->b()V

    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/g;-><init>(Lcom/xiaomi/stat/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
