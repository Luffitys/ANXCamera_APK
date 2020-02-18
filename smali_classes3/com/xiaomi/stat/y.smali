.class Lcom/xiaomi/stat/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/y;->b:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/y;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/stat/y;->a:Z

    invoke-static {p0}, Lcom/xiaomi/stat/b;->c(Z)V

    return-void
.end method
