.class public Landroid/telephony/ims/ImsUtListener;
.super Ljava/lang/Object;
.source "ImsUtListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtListener"


# instance fields
.field private mServiceInterface:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    return-void
.end method


# virtual methods
.method public onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "onSupplementaryServiceIndication: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallBarringQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallForwardQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallWaitingQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationQueryFailed: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationUpdateFailed: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUtConfigurationUpdated(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationUpdated: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method
