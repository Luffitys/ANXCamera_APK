.class public Landroid/telephony/ims/stub/ImsEcbmImplBase;
.super Ljava/lang/Object;
.source "ImsEcbmImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsEcbmImplBase"


# instance fields
.field private mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-void
.end method

.method static synthetic access$002(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)Lcom/android/ims/internal/IImsEcbmListener;
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object p1
.end method


# virtual methods
.method public final enteredEcbm()V
    .registers 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Entered ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    if-eqz v0, :cond_16

    :try_start_b
    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V
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

.method public exitEmergencyCallbackMode()V
    .registers 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "exitEmergencyCallbackMode() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final exitedEcbm()V
    .registers 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Exited ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    if-eqz v0, :cond_16

    :try_start_b
    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
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

.method public getImsEcbm()Lcom/android/ims/internal/IImsEcbm;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-object v0
.end method
