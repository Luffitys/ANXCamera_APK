.class public Lmiui/cta/CTAManager;
.super Ljava/lang/Object;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTAManager$CTAReceiver;,
        Lmiui/cta/CTAManager$Holder;,
        Lmiui/cta/CTAManager$CTAListener;
    }
.end annotation


# static fields
.field private static final CTA_CONFIG_NAME:Ljava/lang/String; = "miui_cta"

.field private static final EXTRA_KEY_ACCEPT:Ljava/lang/String; = "extra_accept"

.field private static final INTENT_ACTION_ACCEPT_CHANGED_SUFFIX:Ljava/lang/String; = ".intent.action.ACCEPT_CHANGED"

.field private static final META_KEY_CTA:Ljava/lang/String; = "com.miui.system.cta"

.field private static final TAG:Ljava/lang/String; = "CTAManager"


# instance fields
.field private mAcceptChangedAction:Ljava/lang/String;

.field private mAccepted:Z

.field private mConfig:Lmiui/cta/CTAConfig;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/cta/CTAManager$CTAListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".intent.action.ACCEPT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->registerReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/cta/CTAManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/cta/CTAManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/cta/CTAManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return v0
.end method

.method static synthetic access$302(Lmiui/cta/CTAManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/cta/CTAManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyAccept()V

    return-void
.end method

.method static synthetic access$500(Lmiui/cta/CTAManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyReject()V

    return-void
.end method

.method public static getInstance()Lmiui/cta/CTAManager;
    .registers 1

    sget-object v0, Lmiui/cta/CTAManager$Holder;->INSTANCE:Lmiui/cta/CTAManager;

    return-object v0
.end method

.method private getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;
    .registers 4

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmiui/cta/CTAManager$CTAListener;

    iget-object v2, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    invoke-static {p1}, Lmiui/cta/CTAPreference;->isAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    if-nez v0, :cond_29

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->loadConfig(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    if-nez v0, :cond_1d

    iput-boolean v1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    goto :goto_29

    :cond_1d
    invoke-virtual {v0}, Lmiui/cta/CTAConfig;->canMatch()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    if-eqz v0, :cond_29

    invoke-static {p1, v1}, Lmiui/cta/CTAPreference;->setAccepted(Landroid/content/Context;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method private loadConfig(Landroid/content/Context;)V
    .registers 4

    const-string v0, "com.miui.system.cta"

    const-string v1, "miui_cta"

    invoke-static {p1, v0, v1}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v0, :cond_f

    sget-object v1, Lmiui/cta/CTAConfig;->EMPTY:Lmiui/cta/CTAConfig;

    iput-object v1, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    goto :goto_19

    :cond_f
    new-instance v1, Lmiui/cta/CTAConfig;

    invoke-direct {v1, p1, v0}, Lmiui/cta/CTAConfig;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iput-object v1, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_19
    return-void
.end method

.method private notifyAccept()V
    .registers 5

    invoke-direct {p0}, Lmiui/cta/CTAManager;->getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-interface {v3}, Lmiui/cta/CTAManager$CTAListener;->onAccept()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private notifyReject()V
    .registers 5

    invoke-direct {p0}, Lmiui/cta/CTAManager;->getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-interface {v3}, Lmiui/cta/CTAManager$CTAListener;->onReject()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p1

    :cond_7
    new-instance v1, Lmiui/cta/CTAManager$CTAReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/cta/CTAManager$CTAReceiver;-><init>(Lmiui/cta/CTAManager;Lmiui/cta/CTAManager$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcast()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    const-string v2, "extra_accept"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showAgreementDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CTADialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/cta/CTADialogFragment;

    if-nez v0, :cond_17

    new-instance v1, Lmiui/cta/CTADialogFragment;

    invoke-direct {v1}, Lmiui/cta/CTADialogFragment;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lmiui/cta/CTADialogFragment;->showDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method public static showAgreementIfNeed(Landroid/app/Activity;)V
    .registers 3

    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->isAccepted()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0, p0}, Lmiui/cta/CTAManager;->showAgreement(Landroid/app/Activity;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Lmiui/cta/CTAManager$CTAListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public isAccepted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return v0
.end method

.method onAccept(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    invoke-static {p1, v0}, Lmiui/cta/CTAPreference;->setAccepted(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyAccept()V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->sendBroadcast()V

    return-void
.end method

.method onReject()V
    .registers 1

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyReject()V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->sendBroadcast()V

    return-void
.end method

.method public removeListener(Lmiui/cta/CTAManager$CTAListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public showAgreement(Landroid/app/Activity;)V
    .registers 9

    iget-object v0, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cta/CTAConfig;->match(Ljava/lang/Class;)Lmiui/cta/CTAConfig$MatchResult;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget v1, v0, Lmiui/cta/CTAConfig$MatchResult;->messageId:I

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_1d

    :cond_13
    iget v1, v0, Lmiui/cta/CTAConfig$MatchResult;->messageId:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget v2, v0, Lmiui/cta/CTAConfig$MatchResult;->permission:I

    invoke-static {p1, v2}, Lmiui/cta/CTAPermission;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    const-string v3, "CTAManager"

    const-string v4, "Fail to show agreement for permission message is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$string;->cta_message_permission:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4c
    iget-boolean v2, v0, Lmiui/cta/CTAConfig$MatchResult;->optional:Z

    invoke-direct {p0, p1, v1, v2}, Lmiui/cta/CTAManager;->showAgreementDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method
