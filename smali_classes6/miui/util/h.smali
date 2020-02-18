.class Lmiui/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/util/Pools$a;


# direct methods
.method constructor <init>(Lmiui/util/Pools$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiui/util/h;->j:Lmiui/util/Pools$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiui/util/h;->j:Lmiui/util/Pools$a;

    invoke-virtual {v0}, Lmiui/util/Pools$a;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
