.class Lmiui/util/Pools$BasePool$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/Pools$BasePool;


# direct methods
.method constructor <init>(Lmiui/util/Pools$BasePool;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/Pools$BasePool$1;->this$0:Lmiui/util/Pools$BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/util/Pools$BasePool$1;->this$0:Lmiui/util/Pools$BasePool;

    invoke-virtual {v0}, Lmiui/util/Pools$BasePool;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
