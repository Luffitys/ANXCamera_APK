.class final Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;
.super Landroid/app/usage/ICacheQuotaService$Stub;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheQuotaServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method private constructor <init>(Landroid/app/usage/CacheQuotaService;)V
    .registers 2

    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-direct {p0}, Landroid/app/usage/ICacheQuotaService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;)V

    return-void
.end method


# virtual methods
.method public computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    nop

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    # getter for: Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    # getter for: Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
