.class Lmiui/vip/VipService$4;
.super Ljava/lang/Object;
.source "VipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/vip/VipService;->queryBanners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipService;


# direct methods
.method constructor <init>(Lmiui/vip/VipService;)V
    .registers 2

    iput-object p1, p0, Lmiui/vip/VipService$4;->this$0:Lmiui/vip/VipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/vip/VipService$4;->this$0:Lmiui/vip/VipService;

    iget-object v0, v0, Lmiui/vip/VipService;->mService:Lcom/miui/internal/vip/VipServiceClient;

    invoke-virtual {v0}, Lcom/miui/internal/vip/VipServiceClient;->queryBanners()V

    return-void
.end method
