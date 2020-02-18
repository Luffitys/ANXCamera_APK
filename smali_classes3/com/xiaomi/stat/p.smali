.class Lcom/xiaomi/stat/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/p;->c:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/p;->a:Z

    iput-boolean p3, p0, Lcom/xiaomi/stat/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/stat/p;->a:Z

    invoke-static {v0}, Lcom/xiaomi/stat/b;->g(Z)V

    iget-boolean p0, p0, Lcom/xiaomi/stat/p;->b:Z

    invoke-static {p0}, Lcom/xiaomi/stat/b;->h(Z)V

    return-void
.end method
