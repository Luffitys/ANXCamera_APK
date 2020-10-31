.class public final Landroid/service/autofill/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FillCallback"


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCalled:Z

.field private final mRequestId:I


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iput p2, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    return-void
.end method

.method private assertNotCalled()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    :try_start_1d
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    iget v1, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-interface {v0, v1, p1}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_29
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/FillCallback;->assertNotCalled()V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->isContainCaptcha()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    goto :goto_12

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillCallback;->mCalled:Z

    :goto_12
    if-eqz p1, :cond_19

    iget v0, p0, Landroid/service/autofill/FillCallback;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/service/autofill/FillCallback;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_23
    return-void
.end method
