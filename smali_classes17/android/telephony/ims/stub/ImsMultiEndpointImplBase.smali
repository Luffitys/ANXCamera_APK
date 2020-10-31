.class public Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.super Ljava/lang/Object;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiEndpointImplBase"


# instance fields
.field private mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

.field private mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-void
.end method

.method static synthetic access$002(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)Lcom/android/ims/internal/IImsExternalCallStateListener;
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object p1
.end method


# virtual methods
.method public getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v0
.end method

.method public final onImsExternalCallStateUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MultiEndpointImplBase"

    const-string v1, "ims external call state update triggered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    if-eqz v0, :cond_16

    :try_start_b
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    :goto_16
    return-void
.end method

.method public requestImsExternalCallStateInfo()V
    .registers 3

    const-string v0, "MultiEndpointImplBase"

    const-string/jumbo v1, "requestImsExternalCallStateInfo() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
