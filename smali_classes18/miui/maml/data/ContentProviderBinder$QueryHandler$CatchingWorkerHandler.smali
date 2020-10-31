.class public Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lmiui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "Exception on background worker thread"

    const-string v1, "ContentProviderBinder"

    :try_start_4
    invoke-super {p0, p1}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_7} :catch_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_7} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    goto :goto_17

    :catch_8
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :catch_d
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_12
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_17
    return-void
.end method
