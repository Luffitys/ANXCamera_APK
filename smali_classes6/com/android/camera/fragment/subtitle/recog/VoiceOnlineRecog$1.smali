.class Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    return-void
.end method

.method public onRecordBuffer([BIII)V
    .locals 5

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object p4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p4}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecordBuffer accessAppID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aue"

    const-string v2, "raw"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    const-string v2, "cn_en"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accent"

    const-string v2, "mandarin"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain"

    const-string v2, "xiaomi"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rf"

    const-string v2, "deserted"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dwa"

    const-string v2, "wpgs"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rate"

    const-string v2, "16000"

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vgap"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "common"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v0, "business"

    invoke-virtual {p2, v0, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "status"

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v0, "audio"

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {p2, p1, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onRecordBuffer data was null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRecordBuffer Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRecordReleased()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRecordReleased "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "encoding"

    const-string v3, "raw"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    :cond_0
    return-void
.end method
