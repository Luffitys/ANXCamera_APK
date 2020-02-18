.class Lcom/xiaomi/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;II)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    iput p2, p0, Lcom/xiaomi/stat/j;->a:I

    iput p3, p0, Lcom/xiaomi/stat/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/stat/j;->a:I

    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(I)V

    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    iget p0, p0, Lcom/xiaomi/stat/j;->b:I

    invoke-static {p0}, Lcom/xiaomi/stat/a/l;->a(I)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
