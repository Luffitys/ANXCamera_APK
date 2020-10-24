.class Lcom/miui/internal/server/DropBoxManagerService$3;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/miui/internal/server/DropBoxManagerService;->access$200(Lcom/miui/internal/server/DropBoxManagerService;)V

    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-static {p0}, Lcom/miui/internal/server/DropBoxManagerService;->access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
