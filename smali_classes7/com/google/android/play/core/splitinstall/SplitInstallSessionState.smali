.class public Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bytesDownloaded:J

.field private final errorCode:I

.field private final moduleNames:Ljava/util/List;

.field private final sessionId:I

.field splitFileIntents:Ljava/util/List;

.field private final status:I

.field private final totalBytesToDownload:J

.field private final userConfirmationIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    iput p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    iput p3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    iput-wide p6, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    iput-object p8, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    iput-object p10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    return-void
.end method

.method static createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    const-string v0, "session_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "status"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "bytes_downloaded"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "total_bytes_to_download"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "module_names"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v0, "user_confirmation_intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    const-string v0, "split_file_intents"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method


# virtual methods
.method final a(I)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    move-object v0, v11

    move v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method

.method final a(II)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    move-object v0, v11

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method

.method public bytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    return-wide v0
.end method

.method public errorCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    return p0
.end method

.method public moduleNames()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    return-object p0
.end method

.method public final resolutionIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public sessionId()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    return p0
.end method

.method public status()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    iget v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    iget v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xb7

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "SplitInstallSessionState{sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",totalBytesToDownload="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",moduleNames="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalBytesToDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    return-wide v0
.end method
