.class Lcom/xiaomi/stat/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/o;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/stat/o;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
