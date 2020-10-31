.class public Lcom/miui/mishare/app/view/MiShareTransmissionView;
.super Landroid/widget/LinearLayout;
.source "MiShareTransmissionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
.implements Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;,
        Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;,
        Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;
    }
.end annotation


# static fields
.field private static final EXTRA_MISHARE_APK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.mishare.extra.MISHARE_APK_PACKAGE_NAME"

.field private static final MI_APP_STORE_AUTHORITY:Ljava/lang/String; = "com.xiaomi.market.fileprovider"

.field private static final PRINT_ACTION:Ljava/lang/String; = "com.miui.mishare.action.PRINT_CONTROL"

.field private static final SETTINGS_NAME_SCREEN_PROJECT_IN_SCREENING:Ljava/lang/String; = "screen_project_in_screening"

.field private static final TAG:Ljava/lang/String; = "MiShareTransmissionView"


# instance fields
.field private mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

.field private mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

.field private mContentFilled:Z

.field private mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

.field private mDeviceLv:Lcom/android/internal/widget/RecyclerView;

.field private final mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

.field private mDiscovering:Z

.field private mEnableMiShareView:Landroid/view/View;

.field private mFileTypeContainer:Landroid/view/ViewGroup;

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

.field private mIntent:Landroid/content/Intent;

.field private mIsScreenThrowConnected:Z

.field private mMiPrintClick:Landroid/view/View$OnClickListener;

.field private mMiShareDisabled:Landroid/view/View;

.field private mPrintBtn:Landroid/widget/ImageButton;

.field private mScreenThrow:Landroid/widget/ImageButton;

.field private mScreenThrowClick:Landroid/view/View$OnClickListener;

.field private mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

.field private mSecurityShareView:Landroid/widget/TextView;

.field private mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

.field private mState:I

.field private mStateListener:Lcom/miui/mishare/IMiShareStateListener;

.field private final mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

.field private mTipsTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/mishare/app/view/MiShareTransmissionView;)I
    .registers 2

    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/mishare/app/view/MiShareTransmissionView;B)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getDeviceType(B)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/android/internal/widget/RecyclerView;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/mishare/app/view/MiShareTransmissionView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->refreshView(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/mishare/app/view/MiShareTransmissionView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/mishare/app/view/MiShareTransmissionView;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/mishare/app/view/MiShareTransmissionView;Ljava/util/List;)Landroid/content/ClipData;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/connect/MiShareConnectivity;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setEmptyView()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addType2Container(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private canPrint()Z
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_37

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    :cond_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_33
    move v1, v2

    goto :goto_36

    :cond_35
    nop

    :goto_36
    return v1

    :cond_37
    :goto_37
    return v1
.end method

.method private convertPdfAndPrint()V
    .registers 8

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, -0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.printspooler"

    const-string v2, "com.android.printspooler.convertpdf.ConvertPdfAlertActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, -0x2710

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;ZI)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_41
    return-void
.end method

.method private getApplicationDetail(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;
    .registers 9

    if-nez p1, :cond_c

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b0021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x110900d5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x110900d1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v5, 0x43fa0000    # 500.0f

    const/4 v6, 0x5

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    .registers 4

    new-instance v0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getClipData(Ljava/util/List;)Landroid/content/ClipData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_42

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    new-instance v2, Landroid/content/ClipDescription;

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mishare data"

    invoke-direct {v2, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    :goto_2c
    if-ge v5, v4, :cond_41

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_3e

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_41
    return-object v3

    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDeviceType(B)I
    .registers 3

    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_a

    const/4 v0, 0x2

    return v0

    :cond_a
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x13

    if-gt p1, v0, :cond_1a

    const/16 v0, 0xb

    if-ne p1, v0, :cond_18

    const/4 v0, 0x4

    return v0

    :cond_18
    const/4 v0, 0x3

    return v0

    :cond_1a
    const/16 v0, 0x32

    if-lt p1, v0, :cond_24

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_24

    const/4 v0, 0x6

    return v0

    :cond_24
    const/16 v0, 0x29

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x2d

    if-gt p1, v0, :cond_2e

    const/4 v0, 0x7

    return v0

    :cond_2e
    const/16 v0, 0x20

    if-ne p1, v0, :cond_34

    const/4 v0, 0x5

    return v0

    :cond_34
    const/4 v0, 0x1

    return v0
.end method

.method private getFileIcon(Ljava/util/List;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/miui/mishare/app/view/MiShareFileTypeIcon;"
        }
    .end annotation

    new-instance v0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setFileTypes(Ljava/util/List;)V

    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    return-object p1

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110e00f5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileTypeDetailGroup(Ljava/util/List;)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_8b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8b

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x110b0021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x110900d5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x110900d1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    if-ne v0, v6, :cond_68

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v6, v3}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8a

    :cond_68
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getMultiFileName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x110c0000

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-virtual {v7, v8, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8a
    return-object v1

    :cond_8b
    :goto_8b
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMultiFileName(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const v1, 0x110e00f4

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasPrinter()Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.printspooler"

    const-string v2, "com.android.printspooler.ui.MiuiPrintActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    :cond_18
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_23

    const/4 v2, 0x1

    :cond_23
    return v2
.end method

.method private init()V
    .registers 5

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b003b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    const v0, 0x110900d2

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090080

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    const v0, 0x110900b2

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    const v0, 0x110900d3

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    const v0, 0x11090075

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->initScreenView()V

    const v0, 0x11090074

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->hasPrinter()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6e

    move v1, v2

    goto :goto_70

    :cond_6e
    const/16 v1, 0x8

    :goto_70
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x110900ab

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const v0, 0x11090028

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->registerListener(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;)V

    const v0, 0x11090082

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/FolmeUtils;->handleTouchOf(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/FolmeUtils;->handleTouchOf(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/FolmeUtils;->handleTouchOf(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1106008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    new-instance v2, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->initMiShareStatus()V

    return-void
.end method

.method private initMiShareStatus()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private initScreenView()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setScreenThrowHighLight(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenView is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiShareTransmissionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isFileCanPrint(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isOfficeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalledAndSupportConvert(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    :goto_30
    return v0
.end method

.method public static isMiAppStore(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_21

    :cond_b
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.market.fileprovider"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v0, v2

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v0
.end method

.method private isOfficeFile()Z
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2b

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2b

    :cond_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isOfficeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    :cond_2a
    return v1

    :cond_2b
    :goto_2b
    return v1
.end method

.method public static isServiceAvailable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onStartDiscover()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setEmptyView()V

    return-void
.end method

.method private print()V
    .registers 11

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_61

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    new-instance v0, Lcom/miui/mishare/app/util/PrintHelper;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/mishare/app/util/PrintHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/util/PrintHelper;->setScaleMode(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.mishare.action.PRINT_CONTROL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_61

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v4, -0x7fffffff

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, -0x2710

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;ZI)V

    :cond_61
    return-void
.end method

.method private refreshView(II)V
    .registers 5

    const/4 v0, 0x3

    if-gt p1, v0, :cond_a

    const/4 v1, 0x4

    if-lt p2, v1, :cond_a

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->onStartDiscover()V

    goto :goto_19

    :cond_a
    const/4 v1, 0x2

    if-gt p1, v1, :cond_13

    if-ne p2, v0, :cond_13

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    goto :goto_19

    :cond_13
    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->onStopDiscover()V

    :cond_19
    :goto_19
    return-void
.end method

.method private registerScreenStateObserver()V
    .registers 5

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerStateReceiver()V
    .registers 4

    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/view/MiShareTransmissionView$1;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.mishare.connectivity.TASK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private screenThrow()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->closeScreenThrow()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->openScreenThrow()V

    :goto_f
    return-void
.end method

.method private send(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_d
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    if-eqz v0, :cond_1f

    const/4 v0, 0x5

    iput v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    invoke-interface {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;->hasNoFiles()V

    return-void

    :cond_1f
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/model/MiShareDevice;II)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDisabledView()V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->stopSort()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    const v2, 0x110e0198

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setEmptyView()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    const v1, 0x110e0130

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setInitialAddDevice()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startDiscoverIfNeeded()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v1, v2, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->startDiscoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)V

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->startDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private unregisterStateReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0, p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->bind(Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;)Z

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->registerStateReceiver()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->registerTaskCancelReceiver()V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->registerScreenStateObserver()V

    return-void
.end method

.method public getActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 5

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_22

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_22
    return-object v1

    :cond_23
    return-object v1
.end method

.method public onCancelTask(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 4

    new-instance v0, Lcom/miui/mishare/MiShareTask;

    invoke-direct {v0}, Lcom/miui/mishare/MiShareTask;-><init>()V

    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v1, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->cancel(Lcom/miui/mishare/MiShareTask;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x11090028

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    goto/16 :goto_a5

    :cond_e
    const v1, 0x11090075

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->screenThrow()V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowClick:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a5

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_a5

    :cond_1f
    const v1, 0x11090074

    if-ne v0, v1, :cond_6c

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->canPrint()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->print()V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiPrintClick:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a5

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_a5

    :cond_36
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isOfficeFile()Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4e

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalledAndSupportConvert(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->convertPdfAndPrint()V

    goto :goto_a5

    :cond_4e
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showToast(Ljava/lang/String;)V

    goto :goto_a5

    :cond_5d
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showToast(Ljava/lang/String;)V

    goto :goto_a5

    :cond_6c
    const v1, 0x110900d2

    if-ne v0, v1, :cond_95

    new-instance v1, Lmiui/widget/GuidePopupWindow;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_86

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    goto :goto_8a

    :cond_86
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    :goto_8a
    const v2, 0x110e00b5

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    goto :goto_a4

    :cond_95
    const v1, 0x110900b2

    if-ne v0, v1, :cond_a4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/securityshare/SecurityShareHelper;->startPrivacyProtectSettingsActivity(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_a5

    :cond_a4
    :goto_a4
    nop

    :cond_a5
    :goto_a5
    return-void
.end method

.method public onDeviceTaskRetry(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5

    invoke-virtual {p1}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice;->generatePCTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    return-void
.end method

.method public onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    return-void
.end method

.method public onServiceBound()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->getServiceState()I

    move-result v0

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    invoke-direct {p0, v1, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->refreshView(II)V

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    return-void
.end method

.method public onStopDiscover()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setDisabledView()V

    return-void
.end method

.method public registerHasNoFilesListener(Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    return-void
.end method

.method public setDeliveryTitle(Ljava/lang/String;)V
    .registers 3

    const v0, 0x110900d4

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFiles(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentFilled:Z

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileIcon(Ljava/util/List;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileTypeDetailGroup(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    :cond_14
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    goto :goto_2d

    :cond_1f
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isFileCanPrint(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setMiPrintEnable(Z)V

    goto :goto_30

    :cond_2d
    :goto_2d
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setMiPrintEnable(Z)V

    :goto_30
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/securityshare/SecurityShareHelper;->isShowSecurityShareView(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/16 v0, 0x8

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 6

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_46

    const-string v0, "com.miui.mishare.extra.MISHARE_APK_PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    :try_start_10
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getApplicationDetail(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentFilled:Z
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharing apk with an illegal package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiShareTransmissionView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method public setMiPrintClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiPrintClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMiPrintEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    const v1, 0x11070112

    goto :goto_b

    :cond_8
    const v1, 0x11070113

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setScreenThrowClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setScreenThrowEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    const v1, 0x1107010e

    goto :goto_b

    :cond_8
    const v1, 0x1107010f

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setScreenThrowHighLight(Z)V
    .registers 5

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    const v1, 0x110700c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3b

    :cond_1f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    const v1, 0x1107010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_3b
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    return-void
.end method

.method public setSpaceHeight(I)V
    .registers 8

    const v0, 0x110900a8

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_24

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, p1

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method public showFileDetailGroup(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public unbind()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->checkServiceBound()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterScreenThrowListener()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    :cond_1b
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unbind()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->unregister()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->stopSort()V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unregisterStateReceiver()V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unregisterScreenStateObserver()V

    return-void
.end method

.method public unregisterScreenStateObserver()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_11
    return-void
.end method
