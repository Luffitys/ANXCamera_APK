.class public Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final IDLE_DELAY:I = 0xbb8

.field private static final INTERVAL_SORT_TIMES:J = 0x7d0L

.field private static final KEY_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

.field protected static LAST_SENT_DEVICE:Landroid/util/Pair; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_DEVICE_IDLE:I = 0x1

.field private static final TOP_MAX_TIME:J = 0x493e0L


# instance fields
.field private mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

.field private mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lmiui/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIsInitialAddDevice:Z

.field private mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

.field private final mReceiver:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;

.field private mSortHandler:Landroid/os/Handler;

.field private final mSortRunnable:Ljava/lang/Runnable;

.field private mStopSort:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mReceiver:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    new-instance v1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setHasStableIds(Z)V

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->storeDevice(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;Ljava/util/List;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->isNeedNotify(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->startSort()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lmiui/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private delayIdle(Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    :cond_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_17
    return-void
.end method

.method private isEnableTalkBack(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private isNeedNotify(Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v3, 0x0

    :goto_d
    const/4 v4, 0x0

    if-ge v3, v1, :cond_45

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/mishare/app/model/MiShareDevice;

    if-eqz v5, :cond_44

    if-eqz v6, :cond_44

    iget-object v7, v5, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v8, v6, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v7, v7, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v4, v4, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_44

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_44
    :goto_44
    return v2

    :cond_45
    return v4
.end method

.method public static setLastSentDevice(Landroid/util/Pair;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    return-void
.end method

.method private showCancelConfirm(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 8

    if-eqz p1, :cond_8a

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isAllImageOverview(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    iget-object v4, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e007a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_38
    iget-object v4, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e0079

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_49
    nop

    new-instance v4, Lmiui/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$2;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/model/MiShareDevice;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    :cond_8a
    return-void
.end method

.method private startSort()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private storeDevice(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/app/model/MiShareDevice;

    if-eqz v2, :cond_1a

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method private updateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iput v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyItemChanged(I)V

    :cond_35
    const/4 v2, 0x1

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOrUpdateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->updateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyItemInserted(I)V

    :cond_19
    iget-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->isEnableTalkBack(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    invoke-direct {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->startSort()V

    :cond_2b
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;
    .registers 3

    if-ltz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/model/MiShareDevice;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getItemId(I)J
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_16
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public bridge synthetic onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->onBindViewHolder(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;I)V
    .registers 8

    invoke-virtual {p0, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "nickname_has_more"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iget-object v3, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget v4, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceType:I

    invoke-virtual {v3, v4}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceType(I)V

    iget-object v3, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget-object v4, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceName(Ljava/lang/String;Z)V

    iget-object v3, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v3, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStatus(Lcom/miui/mishare/app/model/MiShareDevice;)V

    invoke-virtual {v0}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v3

    xor-int/2addr v2, v3

    iget-object v3, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v3, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDevicePhoneOrPc(Z)V

    :cond_41
    iget-object v1, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getIconView()Landroid/view/View;

    move-result-object v1

    const v2, 0x11090093

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    const v0, 0x11090093

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v7

    if-eqz v7, :cond_4d

    iget v8, v7, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    if-eq v8, v5, :cond_43

    if-eq v8, v1, :cond_3f

    const/4 v1, 0x3

    if-eq v8, v1, :cond_37

    const/4 v1, 0x4

    if-eq v8, v1, :cond_2f

    const/4 v1, 0x5

    if-eq v8, v1, :cond_3f

    goto :goto_4a

    :cond_2f
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v1, :cond_4a

    invoke-interface {v1, v7, v4, v6}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    goto :goto_4a

    :cond_37
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v1, :cond_4a

    invoke-interface {v1, v7, v4, v6}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskRetry(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    goto :goto_4a

    :cond_3f
    invoke-direct {p0, v7}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->showCancelConfirm(Lcom/miui/mishare/app/model/MiShareDevice;)V

    goto :goto_4a

    :cond_43
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v1, :cond_4a

    invoke-interface {v1, v7, v4, v6}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    :cond_4d
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v5, "mesh_normal"

    invoke-virtual {v1, v5, v3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
    .registers 6

    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;)V

    return-object v0
.end method

.method public registerListener(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    return-void
.end method

.method public registerTaskCancelReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.mishare.NO_NEED_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mReceiver:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method public replaceTaskId(Lcom/miui/mishare/MiShareTask;)V
    .registers 6

    if-eqz p1, :cond_2d

    iget-object v0, p1, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p1, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    return-void

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2d
    return-void
.end method

.method public setDeviceState(Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    if-eqz v1, :cond_55

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2e

    :cond_2a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2e

    goto :goto_56

    :cond_2e
    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4c

    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setLastSentDevice(Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4c
    iput p2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->delayIdle(Ljava/lang/String;I)V

    goto :goto_56

    :cond_55
    goto :goto_6

    :cond_56
    :goto_56
    return-void
.end method

.method public setInitialAddDevice()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    return-void
.end method

.method public stopSort()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mReceiver:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
