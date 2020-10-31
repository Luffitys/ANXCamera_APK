.class Lcom/android/internal/location/GpsNetInitiatedHandler$2;
.super Landroid/telephony/PhoneStateListener;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    # getter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallStateChanged(): state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p1, :cond_36

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    # getter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z
    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$000(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$202(Lcom/android/internal/location/GpsNetInitiatedHandler;J)J

    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z
    invoke-static {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$002(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)Z

    :cond_36
    return-void
.end method
