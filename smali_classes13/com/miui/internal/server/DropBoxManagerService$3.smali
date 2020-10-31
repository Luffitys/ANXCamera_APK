.class Lcom/miui/internal/server/DropBoxManagerService$3;
.super Ljava/lang/Thread;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/miui/internal/server/DropBoxManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    # invokes: Lcom/miui/internal/server/DropBoxManagerService;->init()V
    invoke-static {v0}, Lcom/miui/internal/server/DropBoxManagerService;->access$200(Lcom/miui/internal/server/DropBoxManagerService;)V

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    # invokes: Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J
    invoke-static {v0}, Lcom/miui/internal/server/DropBoxManagerService;->access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    const-string v1, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method
