.class final Lcom/xiaomi/stat/d/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    return-void
.end method
