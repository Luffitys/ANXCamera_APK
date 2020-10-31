.class public Landroid/telephony/ims/stub/ImsSmsImplBase;
.super Ljava/lang/Object;
.source "ImsSmsImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsSmsImplBase$StatusReportResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$DeliverStatusResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$SendStatusResult;
    }
.end annotation


# static fields
.field public static final DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field public static final DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field public static final DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field public static final DELIVER_STATUS_OK:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SmsImplBase"

.field public static final RESULT_NO_NETWORK_ERROR:I = -0x1

.field public static final SEND_STATUS_ERROR:I = 0x2

.field public static final SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field public static final SEND_STATUS_ERROR_RETRY:I = 0x3

.field public static final SEND_STATUS_OK:I = 0x1

.field public static final STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final STATUS_REPORT_STATUS_OK:I = 0x1


# instance fields
.field private mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .registers 6

    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .registers 6

    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSmsReport() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "3gpp"

    return-object v0
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public final onSendSmsResult(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-eqz v1, :cond_18

    :try_start_7
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v7, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    goto :goto_16

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_16
    monitor-exit v0

    return-void

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public final onSendSmsResultError(IIIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-eqz v1, :cond_18

    :try_start_7
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    goto :goto_16

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_16
    monitor-exit v0

    return-void

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public final onSendSmsResultSuccess(II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-eqz v1, :cond_18

    :try_start_7
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    goto :goto_16

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_16
    monitor-exit v0

    return-void

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public final onSmsReceived(ILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    if-eqz v1, :cond_49

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_51

    goto :goto_47

    :catch_d
    move-exception v1

    :try_start_e
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deliver sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3b

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3b

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    goto :goto_47

    :cond_3b
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    :goto_47
    monitor-exit v0

    return-void

    :cond_49
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_51

    throw v1
.end method

.method public final onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-eqz v1, :cond_2e

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {v1, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_36

    goto :goto_2c

    :catch_d
    move-exception v1

    :try_start_e
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    :goto_2c
    monitor-exit v0

    return-void

    :cond_2e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_36

    throw v1
.end method

.method public final onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    if-eqz v1, :cond_49

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_51

    goto :goto_47

    :catch_d
    move-exception v1

    :try_start_e
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3b

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3b

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    goto :goto_47

    :cond_3b
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsStatusReportReceivedWithoutMessageRef: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    :goto_47
    monitor-exit v0

    return-void

    :cond_49
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_51

    throw v1
.end method

.method public final registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResult(IIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not send sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method
