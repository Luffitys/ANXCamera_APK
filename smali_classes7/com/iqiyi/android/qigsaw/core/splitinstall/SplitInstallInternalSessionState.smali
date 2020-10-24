.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bytesDownloaded:J

.field final downloadRequests:Ljava/util/List;

.field private errorCode:I

.field private final moduleNames:Ljava/util/List;

.field final needInstalledSplits:Ljava/util/List;

.field private sessionId:I

.field private splitFileIntents:Ljava/util/List;

.field private status:I

.field private totalBytesToDownload:J

.field private userConfirmationIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames:Ljava/util/List;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->needInstalledSplits:Ljava/util/List;

    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->downloadRequests:Ljava/util/List;

    return-void
.end method

.method static transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->errorCode:I

    const-string v2, "error_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->totalBytesToDownload:J

    const-string v3, "total_bytes_to_download"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    const-string v3, "bytes_downloaded"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "module_names"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    const-string v2, "user_confirmation_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->splitFileIntents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "split_file_intents"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method moduleNames()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames:Ljava/util/List;

    return-object p0
.end method

.method sessionId()I
    .locals 0

    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    return p0
.end method

.method setBytesDownloaded(J)V
    .locals 2

    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    :cond_0
    return-void
.end method

.method setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->errorCode:I

    return-void
.end method

.method setSessionId(I)V
    .locals 0

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    return-void
.end method

.method setSplitFileIntents(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->splitFileIntents:Ljava/util/List;

    return-void
.end method

.method setStatus(I)V
    .locals 1

    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    :cond_0
    return-void
.end method

.method setTotalBytesToDownload(J)V
    .locals 0

    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->totalBytesToDownload:J

    return-void
.end method

.method setUserConfirmationIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method status()I
    .locals 0

    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    return p0
.end method
