.class Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlamDetectListenerInvoker"
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRet:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;->mListeners:Ljava/util/List;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;->mRet:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;->mRet:Z

    invoke-interface {v1, v2}, Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;->onSlam(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
