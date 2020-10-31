.class Landroid/media/AudioStatusHandler$DeviceState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceState"
.end annotation


# instance fields
.field mConfig:I

.field mPid:I

.field mReason:Ljava/lang/String;

.field mUid:I

.field mUsage:I

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4

    iput-object p1, p0, Landroid/media/AudioStatusHandler$DeviceState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public update(IILjava/lang/String;)Z
    .registers 10

    iget v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9b

    iget v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    if-ne p2, v0, :cond_b

    goto/16 :goto_9b

    :cond_b
    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    const/4 v0, 0x1

    if-nez p3, :cond_1e

    const-string v1, ""

    iput-object v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceState update eventSource is null, but normal"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    const/16 v2, 0x3a

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_2f
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_48

    goto :goto_56

    :catch_48
    move-exception v3

    iput v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    iput v1, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DeviceState update failed to format uid & pid"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    iput-object p3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    # getter for: Landroid/media/AudioStatusHandler;->DEBUG:Z
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$400()Z

    move-result v1

    if-eqz v1, :cond_9a

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceState update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return v0

    :cond_9b
    :goto_9b
    return v1
.end method
