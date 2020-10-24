.class Lcom/xiaomi/stat/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/g;->a:Lcom/xiaomi/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/xiaomi/stat/b/i;->a(Z)V

    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/i;->b()V

    return-void
.end method
