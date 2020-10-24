.class public abstract Lcom/google/android/play/core/remote/RemoteTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final task:Lcom/google/android/play/core/tasks/TaskWrapper;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method final getTask()Lcom/google/android/play/core/tasks/TaskWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-object p0
.end method

.method public final run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :cond_0
    :goto_0
    return-void
.end method
