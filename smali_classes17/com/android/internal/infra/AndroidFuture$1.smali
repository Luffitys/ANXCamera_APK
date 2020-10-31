.class Lcom/android/internal/infra/AndroidFuture$1;
.super Lcom/android/internal/infra/IAndroidFuture$Stub;
.source "AndroidFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/infra/AndroidFuture;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Lcom/android/internal/infra/IAndroidFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_17

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    move v0, v1

    :goto_17
    if-nez v0, :cond_3b

    # getter for: Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ignored, as local future is already completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method
