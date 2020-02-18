.class Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;
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
    name = "ConcatResultListenerInvoker"
.end annotation


# instance fields
.field private mListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

.field private mRet:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;I)V
    .locals 0
    .param p1    # Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;->mRet:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;->mRet:I

    invoke-interface {v0, p0}, Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;->onConcatFinished(I)V

    return-void
.end method
