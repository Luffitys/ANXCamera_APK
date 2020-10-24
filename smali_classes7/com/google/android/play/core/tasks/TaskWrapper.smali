.class public Lcom/google/android/play/core/tasks/TaskWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mTask:Lcom/google/android/play/core/tasks/TaskImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/TaskImpl;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/TaskWrapper;->mTask:Lcom/google/android/play/core/tasks/TaskImpl;

    return-void
.end method


# virtual methods
.method public final getTask()Lcom/google/android/play/core/tasks/Task;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskWrapper;->mTask:Lcom/google/android/play/core/tasks/TaskImpl;

    return-object p0
.end method

.method public final setException(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskWrapper;->mTask:Lcom/google/android/play/core/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/TaskImpl;->setException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public final setResult(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/TaskWrapper;->mTask:Lcom/google/android/play/core/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/TaskImpl;->setResult(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
