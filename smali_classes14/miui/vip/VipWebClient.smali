.class public Lmiui/vip/VipWebClient;
.super Landroid/webkit/WebViewClient;
.source "VipWebClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/VipWebClient$UrlParameters;,
        Lmiui/vip/VipWebClient$AccountInfo;
    }
.end annotation


# static fields
.field static final ACCOUNT_AVATAR:Ljava/lang/String; = "account_avatar/"

.field static final ACCOUNT_CALLBACK:Ljava/lang/String; = "accountCallback"

.field static final ACCOUNT_FIELD:Ljava/lang/String; = "account"

.field static final ACHIEVEMENT_CALLBACK:Ljava/lang/String; = "achievementCallback"

.field static final ARRAY_BEGIN:Ljava/lang/String; = "["

.field static final ARRAY_END:Ljava/lang/String; = "]"

.field static final COMMA:Ljava/lang/String; = ","

.field static final CONNECT_SERVICE:Ljava/lang/String; = "connect_service"

.field static final DEFAULT_AVATAR:Ljava/lang/String; = "http://request_vip_icon/default_photo"

.field static final DISPLAY_ACHIEVEMENTS_COUNT:I = 0x4

.field static final JS_ACCOUNT:Ljava/lang/String; = "{id:%s, name:\'%s\', avatarUrl:\'%s\'}"

.field static final JS_ACHIEVEMENT:Ljava/lang/String; = "{id:%d, name:\'%s\', url:\'%s\', isOwned:%s}"

.field static final JS_INIT:Ljava/lang/String; = "if (!window.XiaomiVipClient) {   window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};} else {   console.log(\'XiaomiVipCient is already initialized\');}XiaomiVipClient.loadUrl(\'http://vip_view/connect_service?refresh=\' + (!XiaomiVipClient.vipUser));console.log(\'initialization of XiaomiVipCient is completed\');"

.field static final JS_UPDATE:Ljava/lang/String; = "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

.field static final JS_USER:Ljava/lang/String; = "{id:%d, level:%d, badgeUrl:\'%s\'}"

.field static final JS_VIP_CLIENT:Ljava/lang/String; = "window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};"

.field static final NULL_STR:Ljava/lang/String; = "null"

.field static final PARAM_REFRESH:Ljava/lang/String; = "refresh"

.field static final Q_MARK:Ljava/lang/String; = "?"

.field static final SCHEMA_VIP_ICON:Ljava/lang/String; = "http://request_vip_icon/"

.field static final SCHEMA_VIP_VIEW:Ljava/lang/String; = "http://vip_view/"

.field static final VALUE_TRUE:Ljava/lang/String; = "true"

.field static final VIEW_USER_DETAIL:Ljava/lang/String; = "user_detail"

.field static final VIP_ACHIEVEMENTS_FIELD:Ljava/lang/String; = "achievements"

.field static final VIP_CALLBACK:Ljava/lang/String; = "vipCallback"

.field static final VIP_USER_FIELD:Ljava/lang/String; = "vipUser"

.field static final VIP_VIEW_ACHIEVEMENTS:Ljava/lang/String; = "vip_view_achievements"

.field static final VIP_VIEW_LEVEL:Ljava/lang/String; = "vip_view_level"

.field static final VIP_VIEW_TASK:Ljava/lang/String; = "vip_view_task"


# instance fields
.field mAccount:Lmiui/vip/VipWebClient$AccountInfo;

.field mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

.field volatile mCachedAchievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field volatile mStrAccount:Ljava/lang/String;

.field volatile mStrUser:Ljava/lang/String;

.field volatile mUser:Lmiui/vip/VipUserInfo;

.field mVipCallback:Lmiui/vip/QueryCallback;

.field mWebView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    new-instance v1, Lmiui/vip/VipWebClient$1;

    invoke-direct {v1, p0}, Lmiui/vip/VipWebClient$1;-><init>(Lmiui/vip/VipWebClient;)V

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;-><init>(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    new-instance v0, Lmiui/vip/VipWebClient$2;

    invoke-direct {v0, p0}, Lmiui/vip/VipWebClient$2;-><init>(Lmiui/vip/VipWebClient;)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lmiui/vip/VipWebClient$3;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v1, v2

    invoke-direct {v0, p0, v1}, Lmiui/vip/VipWebClient$3;-><init>(Lmiui/vip/VipWebClient;[I)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    return-void
.end method

.method static synthetic access$000(Lmiui/vip/VipWebClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/vip/VipWebClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/vip/VipWebClient;)V
    .registers 1

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    return-void
.end method

.method static synthetic access$400(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/vip/VipWebClient;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyAchievementsUpdate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/vip/VipWebClient;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->doLoadJs(Ljava/lang/String;)V

    return-void
.end method

.method private achievementToJs(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_54

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/vip/VipAchievement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v1, :cond_2a

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v5, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, v5, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    iget-object v8, v5, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-boolean v8, v5, Lmiui/vip/VipAchievement;->isOwned:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "{id:%d, name:\'%s\', url:\'%s\', isOwned:%s}"

    invoke-direct {p0, v7, v6}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_54
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V

    invoke-direct {p0, p2}, Lmiui/vip/VipWebClient;->notifyAchievementsUpdate(Ljava/util/List;)V

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    return-void
.end method

.method private connectService()Z
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "VipWebClient.connectService begin, mStrUser = %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/vip/VipService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_28

    :cond_20
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "VipWebClient.connectService, no need to connect"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_28
    :goto_28
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "VipWebClient.connectService, do connection"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v1

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v1, v2}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    return v0
.end method

.method private doLoadJs(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://request_vip_icon/account_avatar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActionFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "vip_view_level"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.xiaomi.vip.action.VIP_LEVEL_LIST"

    return-object v0

    :cond_b
    const-string v0, "vip_view_task"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.xiaomi.vip.action.VIP_TASK_LIST"

    return-object v0

    :cond_16
    const-string v0, "vip_view_achievements"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "com.xiaomi.vip.action.VIP_ACHIEVEMENT_LIST"

    return-object v0

    :cond_21
    const-string v0, "user_detail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "com.xiaomi.account.action.USER_INFO_DETAIL"

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private initWithData(Landroid/webkit/WebView;)V
    .registers 7

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eq p1, v0, :cond_f

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VipWebClient.initWithData, init XiaomiVipClient"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_26

    move-object v3, v4

    goto :goto_28

    :cond_26
    iget-object v3, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    :goto_28
    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    if-nez v3, :cond_31

    move-object v3, v4

    goto :goto_37

    :cond_31
    iget-object v3, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v3}, Lmiui/vip/VipWebClient;->achievementToJs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    :goto_37
    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_45

    :cond_43
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    :goto_45
    aput-object v4, v2, v1

    const-string v1, "if (!window.XiaomiVipClient) {   window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};} else {   console.log(\'XiaomiVipCient is already initialized\');}XiaomiVipClient.loadUrl(\'http://vip_view/connect_service?refresh=\' + (!XiaomiVipClient.vipUser));console.log(\'initialization of XiaomiVipCient is completed\');"

    invoke-direct {p0, v1, v2}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    return-void
.end method

.method private interceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "interceptRequest, url = %s"

    invoke-static {v3, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "http://request_vip_icon/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "account_avatar/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->loadAccountAvatar()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_37

    :cond_28
    new-instance v3, Lcom/miui/internal/vip/VipResInputStream;

    iget-object v4, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    if-eqz v4, :cond_33

    iget-object v4, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    iget v4, v4, Lmiui/vip/VipUserInfo;->level:I

    goto :goto_34

    :cond_33
    move v4, v2

    :goto_34
    invoke-direct {v3, v1, v4}, Lcom/miui/internal/vip/VipResInputStream;-><init>(Ljava/lang/String;I)V

    :goto_37
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v2, "VipWebClient.shouldInterceptRequest, vip_icon, is = %s"

    invoke-static {v2, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_4c

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "image/*"

    const-string v4, "base64"

    invoke-direct {v0, v2, v4, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_4c
    goto :goto_b0

    :cond_4d
    const-string v1, "http://vip_view/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-direct {p0, p2}, Lmiui/vip/VipWebClient;->parseUrl(Ljava/lang/String;)Lmiui/vip/VipWebClient$UrlParameters;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v4, "VipWebClient.interceptRequest, cmd = %s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    const-string v4, "connect_service"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a8

    const-string v3, "refresh"

    invoke-direct {p0, v1, v3}, Lmiui/vip/VipWebClient;->isValueTrue(Lmiui/vip/VipWebClient$UrlParameters;Ljava/lang/String;)Z

    move-result v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "VipWebClient.interceptRequest, needRefresh is %s"

    invoke-static {v5, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_a7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    aput-object v5, v4, v2

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    if-eqz v2, :cond_97

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_99

    :cond_97
    const-string v2, "-1"

    :goto_99
    aput-object v2, v4, v0

    const-string v0, "VipWebClient.interceptRequest, do batchNotify, mUser = %s, mCachedAchievements.size = %d"

    invoke-static {v0, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    :cond_a7
    goto :goto_b1

    :cond_a8
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lmiui/vip/VipWebClient;->startAccountActivity(Landroid/content/Context;Lmiui/vip/VipWebClient$UrlParameters;)V

    goto :goto_b1

    :cond_b0
    :goto_b0
    nop

    :goto_b1
    invoke-virtual {p0, p2}, Lmiui/vip/VipWebClient;->shouldIntercept(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v1, v0

    :cond_c0
    return-object v1
.end method

.method private invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v5, "{id:%s, name:\'%s\', avatarUrl:\'%s\'}"

    invoke-direct {p0, v5, v1}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v1, v5, v3

    const-string v6, "invokeJsAccountUpdate, mStrAccount = %s, js = %s"

    invoke-static {v6, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    iput-object v1, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "accountCallback"

    aput-object v5, v0, v2

    const-string v2, "account"

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    const-string v2, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    invoke-direct {p0, v2, v0}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private isSameAchievementList(Ljava/util/List;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    if-nez p2, :cond_a

    goto :goto_58

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_57

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/vip/VipAchievement;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/vip/VipAchievement;

    iget-wide v6, v4, Lmiui/vip/VipAchievement;->id:J

    iget-wide v8, v5, Lmiui/vip/VipAchievement;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_56

    iget-boolean v6, v4, Lmiui/vip/VipAchievement;->isOwned:Z

    iget-boolean v7, v5, Lmiui/vip/VipAchievement;->isOwned:Z

    if-ne v6, v7, :cond_56

    iget-object v6, v4, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    iget-object v7, v5, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    iget-object v6, v4, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_56
    :goto_56
    return v1

    :cond_57
    return v0

    :cond_58
    :goto_58
    return v1
.end method

.method private isValueTrue(Lmiui/vip/VipWebClient$UrlParameters;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p1, Lmiui/vip/VipWebClient$UrlParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadAccountAvatar()Ljava/io/InputStream;
    .registers 5

    const-string v0, ""

    const-string v1, ""

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v2, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarUrl:Ljava/lang/String;

    move-object v0, v2

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v2, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarFileName:Ljava/lang/String;

    move-object v1, v2

    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_2b

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImageFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {v2}, Lcom/miui/internal/vip/utils/Utils;->createPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/vip/utils/Utils;->bitmapToStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    :cond_29
    const/4 v3, 0x0

    return-object v3

    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method private loadJs(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->doLoadJs(Ljava/lang/String;)V

    goto :goto_1e

    :cond_16
    new-instance v0, Lmiui/vip/VipWebClient$4;

    invoke-direct {v0, p0, p1}, Lmiui/vip/VipWebClient$4;-><init>(Lmiui/vip/VipWebClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInUIThread(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private notifyAccountUpdate()V
    .registers 10

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-eqz v0, :cond_82

    monitor-enter p0

    :try_start_13
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    if-nez v2, :cond_1e

    new-instance v2, Lmiui/vip/VipWebClient$AccountInfo;

    invoke-direct {v2}, Lmiui/vip/VipWebClient$AccountInfo;-><init>()V

    iput-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    :cond_1e
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_user_name"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->userName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_avatar_url"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarUrl:Ljava/lang/String;

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_avatar_file_name"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarFileName:Ljava/lang/String;

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_7f

    const-string v2, ""

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_5e

    :cond_4f
    invoke-static {v5}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-direct {p0, v3}, Lmiui/vip/VipWebClient;->getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-static {v7, v5, v6, v8}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    :cond_6d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7e

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_7a

    const-string v8, "http://request_vip_icon/default_photo"

    goto :goto_7b

    :cond_7a
    move-object v8, v2

    :goto_7b
    invoke-direct {p0, v7, v4, v8}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    goto :goto_90

    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2

    :cond_82
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_84
    iput-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_91

    const-string v2, "0"

    const-string v3, ""

    const-string v4, "http://request_vip_icon/default_photo"

    invoke-direct {p0, v2, v3, v4}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_90
    return-void

    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method private notifyAchievementsUpdate(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmiui/vip/VipWebClient;->isSameAchievementList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3b

    iput-object p1, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->achievementToJs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "[]"

    :goto_19
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "notifyAchievementsUpdate, js = %s"

    invoke-static {v4, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "achievementCallback"

    aput-object v4, v2, v3

    const-string v3, "achievements"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v1, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    invoke-direct {p0, v1, v2}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p1, :cond_11

    iput-object p1, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->vipUserToJs(Lmiui/vip/VipUserInfo;)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    :cond_11
    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v4, v5, v2

    const-string v4, ""

    aput-object v4, v5, v1

    const-string v4, "{id:%d, level:%d, badgeUrl:\'%s\'}"

    invoke-direct {p0, v4, v5}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_21
    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v4, v5, v2

    const-string v6, "notifyVipUserUpdate, mStrUser = %s, js = %s"

    invoke-static {v6, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    iput-object v4, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "vipCallback"

    aput-object v5, v0, v3

    const-string v3, "vipUser"

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    const-string v1, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    invoke-direct {p0, v1, v0}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private parseUrl(Ljava/lang/String;)Lmiui/vip/VipWebClient$UrlParameters;
    .registers 14

    new-instance v0, Lmiui/vip/VipWebClient$UrlParameters;

    invoke-direct {v0}, Lmiui/vip/VipWebClient$UrlParameters;-><init>()V

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "http://vip_view/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v1, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_19
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    if-lez v1, :cond_4b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_30
    if-ge v6, v4, :cond_4b

    aget-object v7, v3, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_48

    iget-object v9, v0, Lmiui/vip/VipWebClient$UrlParameters;->params:Ljava/util/HashMap;

    aget-object v10, v8, v5

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_4b
    return-object v0
.end method

.method private startAccountActivity(Landroid/content/Context;Lmiui/vip/VipWebClient$UrlParameters;)V
    .registers 7

    iget-object v0, p2, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/vip/VipWebClient;->getActionFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "VipWebClient.interceptRequest, handleVipAction, path = %s, action = %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1d
    const/4 v1, 0x0

    const-string v2, "com.xiaomi.vip"

    const-string v3, "com.xiaomi.account.action.USER_INFO_DETAIL"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v2, "com.xiaomi.account"

    const/4 v1, 0x1

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->hasAccount()Z

    move-result v3

    if-nez v3, :cond_33

    const-string v0, "com.xiaomi.account.action.XIAOMI_ACCOUNT_WELCOME"

    :cond_33
    invoke-static {p1, v0, v2, v1}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private vipUserToJs(Lmiui/vip/VipUserInfo;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Lmiui/vip/VipUserInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "http://request_vip_icon/level_icon"

    aput-object v2, v0, v1

    const-string v1, "{id:%d, level:%d, badgeUrl:\'%s\'}"

    invoke-direct {p0, v1, v0}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    iput-object v1, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    iput-object v1, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    iput-object v1, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    :try_start_17
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "exception happened on unregisterReceiver, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method public init(Landroid/webkit/WebView;)V
    .registers 5

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->connectService()Z

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->initWithData(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const-string v0, "com.xiaomi.account.action.USER_INFO_DETAIL"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivityResult for user detail activity"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    :cond_17
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "onPageStarted, url = %s"

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->initWithData(Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldIntercept(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "http://request_vip_icon/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://vip_view/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lmiui/vip/VipWebClient;->interceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    goto :goto_24

    :catch_15
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "VipWebClient.shouldInterceptRequest, url = %s, exception: %s"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return-object v0
.end method
