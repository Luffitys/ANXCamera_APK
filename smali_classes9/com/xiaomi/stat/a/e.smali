.class Lcom/xiaomi/stat/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:[Lcom/xiaomi/stat/a/b;

.field final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/stat/a/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iget-object p0, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-static {v0, p0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/stat/a/e;->a()Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method
