.class Lmiui/util/async/TaskManager$2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/async/TaskManager;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/TaskManager$2;->this$0:Lmiui/util/async/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/util/async/TaskManager$2;->this$0:Lmiui/util/async/TaskManager;

    invoke-virtual {v0}, Lmiui/util/async/TaskManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
