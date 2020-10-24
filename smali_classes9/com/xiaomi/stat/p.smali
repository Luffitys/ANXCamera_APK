.class Lcom/xiaomi/stat/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;IIJJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    iput p2, p0, Lcom/xiaomi/stat/p;->a:I

    iput p3, p0, Lcom/xiaomi/stat/p;->b:I

    iput-wide p4, p0, Lcom/xiaomi/stat/p;->c:J

    iput-wide p6, p0, Lcom/xiaomi/stat/p;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/p;->e:Lcom/xiaomi/stat/e;

    iget v1, p0, Lcom/xiaomi/stat/p;->a:I

    iget v2, p0, Lcom/xiaomi/stat/p;->b:I

    iget-wide v3, p0, Lcom/xiaomi/stat/p;->c:J

    iget-wide v5, p0, Lcom/xiaomi/stat/p;->d:J

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/stat/a/l;->a(IIJJ)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
