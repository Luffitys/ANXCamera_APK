.class Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;
.super Landroid/os/Handler;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final CHOOSER_TARGET_RANKING_SCORE:I = 0x7

.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_MAX_TIMEOUT:I = 0x3

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_MIN_TIMEOUT:I = 0x2

.field private static final DEFAULT_DIRECT_SHARE_TIMEOUT_MILLIS:I = 0x5dc

.field private static final LIST_VIEW_UPDATE_MESSAGE:I = 0x6

.field private static final SHORTCUT_MANAGER_SHARE_TARGET_RESULT:I = 0x4

.field private static final SHORTCUT_MANAGER_SHARE_TARGET_RESULT_COMPLETED:I = 0x5

.field private static final WATCHDOG_TIMEOUT_MAX_MILLIS:I = 0x2710

.field private static final WATCHDOG_TIMEOUT_MIN_MILLIS:I = 0xbb8


# instance fields
.field private mDirectShareTimeout:I

.field private mMinTimeoutPassed:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo p1, "systemui"

    const-string/jumbo v0, "share_sheet_direct_share_timeout"

    const/16 v1, 0x5dc

    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mDirectShareTimeout:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mMinTimeoutPassed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserActivityForCts$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivityForCts;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeAllMessages()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->restartServiceRequestTimer()V

    return-void
.end method

.method private maybeStopServiceRequestTimer()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mMinTimeoutPassed:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    const/16 v1, 0x6b7

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->logDirectShareTargetReceived(I)V
    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$700(Lcom/android/internal/app/ChooserActivityForCts;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->sendVoiceChoicesIfNeeded()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->completeServiceTargetLoading()V

    :cond_27
    return-void
.end method

.method private removeAllMessages()V
    .registers 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    return-void
.end method

.method private restartServiceRequestTimer()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mMinTimeoutPassed:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeMessages(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryTargets setting watchdog timer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mDirectShareTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooserActivityForCts"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    nop

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mAppendDirectShareEnabled:Z
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$500(Lcom/android/internal/app/ChooserActivityForCts;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mDirectShareTimeout:I

    int-to-long v2, v0

    goto :goto_48

    :cond_46
    const-wide/16 v2, 0x2710

    :goto_48
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_13f

    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ChooserActivityForCts"

    packed-switch v0, :pswitch_data_140

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_13e

    :pswitch_21
    const-string v0, "CHOOSER_TARGET_RANKING_SCORE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    if-eqz v1, :cond_13e

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;->scores:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->addChooserTargetRankingScore(Ljava/util/List;)V

    goto/16 :goto_13e

    :pswitch_3d
    const-string v0, "LIST_VIEW_UPDATE_MESSAGE; "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->refreshListView()V

    goto/16 :goto_13e

    :pswitch_53
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    const/16 v1, 0x6b6

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->logDirectShareTargetReceived(I)V
    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$700(Lcom/android/internal/app/ChooserActivityForCts;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->sendVoiceChoicesIfNeeded()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadComplete()V

    goto/16 :goto_13e

    :pswitch_6a
    const-string v0, "SHORTCUT_MANAGER_SHARE_TARGET_RESULT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v1, :cond_13e

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    if-eqz v1, :cond_99

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v5, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts;->access$800(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/Map;

    move-result-object v7

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v8

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResultsForCts(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;Ljava/util/List;)V

    :cond_99
    goto/16 :goto_13e

    :pswitch_9b
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mMinTimeoutPassed:Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadTimeout()V

    :cond_b2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->unbindRemainingServices()V

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->maybeStopServiceRequestTimer()V

    goto/16 :goto_13e

    :pswitch_bc
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->mMinTimeoutPassed:Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->maybeStopServiceRequestTimer()V

    goto/16 :goto_13e

    :pswitch_c3
    const-string v0, "CHOOSER_TARGET_SERVICE_RESULT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_103

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooserTargetServiceConnection "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returned after being removed from active connections. Have you considered returning results faster?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    :cond_103
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v1, :cond_123

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    if-eqz v1, :cond_123

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v5, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->resultTargets:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v8

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResultsForCts(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;Ljava/util/List;)V

    :cond_123
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivityForCts;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->destroy()V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # getter for: Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivityForCts;->access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->maybeStopServiceRequestTimer()V

    nop

    :cond_13e
    :goto_13e
    return-void

    :cond_13f
    :goto_13f
    return-void

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_bc
        :pswitch_9b
        :pswitch_6a
        :pswitch_53
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method
