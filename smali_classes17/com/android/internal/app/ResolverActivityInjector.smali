.class public Lcom/android/internal/app/ResolverActivityInjector;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;,
        Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;,
        Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;,
        Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;
    }
.end annotation


# static fields
.field private static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field private static final MAX_OFFICAL_RECOMMEND_PER_SCREEN:I = 0x4

.field private static final MAX_PER_SCREEN:I = 0x8

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final PACKAGE_NAME_BROWSER_NEW:Ljava/lang/String; = "com.mi.globalbrowser"

.field private static final PACKAGE_NAME_NEARBY_SHARING:Ljava/lang/String; = "com.google.android.gms"

.field private static final PRIV_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RAInjector"

.field private static final WPS_LITE_PKG_NAME:Ljava/lang/String; = "cn.wps.moffice_eng.xiaomi.lite"

.field private static final WPS_PKG_NAME:Ljava/lang/String; = "cn.wps.moffice_eng"

.field private static final XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final META_KEY_RESOLVER_ITEM_SELECT:Ljava/lang/String;

.field private final META_KEY_RESOLVER_SHOWN:Ljava/lang/String;

.field private final PACKAGE_NAME_VIDEOPLAYER:Ljava/lang/String;

.field protected mAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field public mAlwaysUseOption:Z

.field public mChosenIndex:I

.field public mChosenView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFilesToMiShare:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredComponents:[Landroid/content/ComponentName;

.field private mIconDpi:I

.field mIconFactory:Landroid/util/IconDrawableFactory;

.field private mIconSize:I

.field private mMaskColor:I

.field public mMaxPerScreen:I

.field private mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field private mOfficalRecommendIconIV:Landroid/widget/ImageView;

.field private mOfficalRecommendNameTV:Landroid/widget/TextView;

.field private mOfficalRecommendRl:Landroid/widget/RelativeLayout;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPostListReadyRunnable:Ljava/lang/Runnable;

.field protected mProfileView:Landroid/view/View;

.field private mRecommendFirstItem:Z

.field private mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

.field public mRecommendable:Z

.field private mResolverActivity:Lcom/android/internal/app/ResolverActivity;

.field private mResolverRecommendTagTv:Landroid/widget/TextView;

.field private mScreenView:Lmiui/widget/ScreenView;

.field private mShowMoreResolver:Z

.field public mShowMoreResolverButton:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector;->PRIV_PACKAGES:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector;->XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/app/ResolverActivityInjector;->PRIV_PACKAGES:Ljava/util/Set;

    const-string v1, "com.miui.personalassistant.favorite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/AlertController$AlertParams;Landroid/view/View;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    const-string v0, "com.miui.video"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->PACKAGE_NAME_VIDEOPLAYER:Ljava/lang/String;

    const-string v0, "com.miui.action.resolver_activity_item_select"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->META_KEY_RESOLVER_ITEM_SELECT:Ljava/lang/String;

    const-string v0, "com.miui.action.resolver_activity_shown"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->META_KEY_RESOLVER_SHOWN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mShowMoreResolver:Z

    new-instance v0, Lcom/android/internal/app/ResolverActivityInjector$7;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityInjector$7;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivityInjector;->mProfileView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivityInjector;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaskColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivityInjector;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendFirstItem:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivityInjector;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivityInjector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->bindOfficalRecommendIcon()V

    return-void
.end method

.method private addMoreResolverButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private bindOfficalRecommendIcon()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    if-eqz v0, :cond_bc

    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_bc

    :cond_17
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverRecommendTagTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11050050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendIconIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3d

    const-string v1, ""

    goto :goto_45

    :cond_3d
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_45
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    const v3, 0x11070176

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverRecommendTagTv:Landroid/widget/TextView;

    const v3, 0x1107017a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.mi.globalbrowser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    goto :goto_a9

    :cond_76
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.miui.video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverRecommendTagTv:Landroid/widget/TextView;

    const v3, 0x1107017b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverRecommendTagTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11050051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    const v3, 0x11070179

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_b6

    :cond_a9
    :goto_a9
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110e012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b6
    :goto_b6
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendNameTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_bc
    :goto_bc
    return-void
.end method

.method public static checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/miui/securityshare/SecurityShareHelper;->checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "displayPackages"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "chooserId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendFirstItem:Z

    const-string/jumbo v3, "recommendFirstItem"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    const-string/jumbo v3, "maxCountPerScreen"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getFilesToShare()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v3, v3, Landroid/content/Intent;

    if-nez v3, :cond_27

    goto :goto_57

    :cond_27
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-nez v3, :cond_34

    return-object v1

    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v4, :cond_56

    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :cond_56
    return-object v1

    :cond_57
    :goto_57
    return-object v1
.end method

.method private hasSystemBrowser()Z
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "com.mi.globalbrowser"

    const-string v3, "com.android.browser"

    const/4 v4, 0x1

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v5, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_36
    :goto_36
    return v4

    :cond_37
    const/4 v0, 0x0

    :goto_38
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_76

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoSize()I

    move-result v6

    if-nez v6, :cond_56

    goto :goto_73

    :cond_56
    invoke-virtual {v1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    :cond_72
    return v4

    :cond_73
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_76
    return v5
.end method

.method private hasSystemVideoPlayer()Z
    .registers 7

    invoke-static {}, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->shouldSystemVideoCanResolve(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "com.miui.video"

    const/4 v4, 0x1

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v5, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v4

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_66

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoSize()I

    move-result v5

    if-nez v5, :cond_54

    goto :goto_63

    :cond_54
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    return v4

    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_66
    return v1
.end method

.method private hasSystemWps()Z
    .registers 8

    invoke-static {}, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->getInstance()Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->isDocTypeResolved(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "cn.wps.moffice_eng.xiaomi.lite"

    const-string v4, "cn.wps.moffice_eng"

    const/4 v5, 0x1

    if-ge v0, v2, :cond_45

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v6, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_44

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_44
    :goto_44
    return v5

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_83

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    if-eqz v2, :cond_80

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoSize()I

    move-result v6

    if-nez v6, :cond_63

    goto :goto_80

    :cond_63
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    :cond_7f
    return v5

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_83
    return v1
.end method

.method private inflateGridView(I)Landroid/widget/GridView;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    const v2, 0x110b0029

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v0
.end method

.method private initMiShareView()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x11090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->shouldShowMiShare()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setVisibility(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showFileDetailGroup(Z)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-virtual {v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->bind()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object v1, v0

    :cond_48
    invoke-virtual {v2, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mFilesToMiShare:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setFiles(Ljava/util/List;)V

    return-void
.end method

.method private initOfficalRecommendView(Landroid/widget/RelativeLayout;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconSize:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110600a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110600a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x110900a0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendIconIV:Landroid/widget/ImageView;

    const v1, 0x110900a1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendNameTV:Landroid/widget/TextView;

    const v1, 0x110900a6

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverRecommendTagTv:Landroid/widget/TextView;

    nop

    const v1, 0x110900a2

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenView:Landroid/view/View;

    iput v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mChosenIndex:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_92

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_92

    new-instance v2, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;

    const/4 v4, 0x0

    move-object v5, v1

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_92
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->bindOfficalRecommendIcon()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/app/ResolverActivityInjector$5;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityInjector$5;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mOfficalRecommendRl:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/app/ResolverActivityInjector$6;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityInjector$6;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private isPlatformApp(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private processRecommendedApp()V
    .registers 1

    return-void
.end method

.method private sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-nez v3, :cond_23

    goto :goto_4

    :cond_23
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4

    :cond_3f
    return-void
.end method

.method private sendResolverShownAnalyticsBroadcast(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasOfficalRecommendation"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const-string/jumbo v2, "refApp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.miui.action.resolver_activity_shown"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivityInjector;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private shouldRecommend(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private shouldShowMiShare()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mFilesToMiShare:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->getFilesToShare()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mFilesToMiShare:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mFilesToMiShare:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mFilesToMiShare:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isMiAppStore(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public bindOfficalRecommendView()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->hasOfficalRecommendation()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2d

    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendOfficalLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityInjector;->initOfficalRecommendView(Landroid/widget/RelativeLayout;)V

    return-void

    :cond_2d
    :goto_2d
    return-void
.end method

.method bindProfileView()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x11090062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v4, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3a
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_4b
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_54
    return-void
.end method

.method public configureContentView()V
    .registers 1

    return-void
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconDpi:I

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconSize:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaskColor:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x110b002b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x110900af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ScreenView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView;->setScreenTransitionType(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v4, Lcom/android/internal/app/ResolverActivityInjector$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivityInjector$1;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter;->rebuildList(Z)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rebuildCompleted: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "RAInjector"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v1, :cond_ca

    if-ne v4, v2, :cond_ca

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v2, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7, v2}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-eqz v7, :cond_ca

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityInjector;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v5}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iput-boolean v3, v5, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_ca
    if-nez v4, :cond_e0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    if-nez v2, :cond_e0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    const v5, 0x110e0021

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_140

    :cond_e0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->bindOfficalRecommendView()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->initGridViews()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->initMiShareView()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverListAdapter;)V

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-eqz v2, :cond_129

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x110e0129

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityInjector$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityInjector$2;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x110e0128

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityInjector$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityInjector$3;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_140

    :cond_129
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v3, Lcom/android/internal/app/ResolverActivityInjector$4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityInjector$4;-><init>(Lcom/android/internal/app/ResolverActivityInjector;)V

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_140
    return-void
.end method

.method public customResolver()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    goto :goto_81

    :cond_12
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->addMoreResolverButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mShowMoreResolver:Z

    if-nez v0, :cond_72

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    sget-object v3, Lcom/android/internal/app/ResolverActivityInjector;->PRIV_PACKAGES:Ljava/util/Set;

    iget-object v4, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_6f

    :cond_5f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_72
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector;->processRecommendedApp()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->hasOfficalRecommendation()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivityInjector;->sendResolverShownAnalyticsBroadcast(Ljava/util/List;Z)V

    return-void

    :cond_81
    :goto_81
    return-void
.end method

.method public filterDisplayResolveInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_49

    :cond_a
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    if-nez v4, :cond_1e

    goto :goto_3d

    :cond_1e
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn.wps.moffice_eng"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    goto :goto_3d

    :cond_2e
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move v1, v2

    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_40
    if-eqz v0, :cond_48

    const/4 v2, -0x1

    if-eq v2, v1, :cond_48

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_48
    return-void

    :cond_49
    :goto_49
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_a
    return-object v0
.end method

.method public getRecommendItem()Lcom/android/internal/app/chooser/TargetInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOfficalRecommendation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initGridViews()V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->removeAllScreens()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolverActivityInjector: count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    div-int v3, v0, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_37

    move v1, v3

    goto :goto_39

    :cond_37
    add-int/lit8 v1, v3, 0x1

    :goto_39
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v4}, Lmiui/widget/ScreenView;->removeAllViews()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8b

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivityInjector;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {v6}, Landroid/widget/GridView;->getCount()I

    move-result v7

    iget v8, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    iget-boolean v9, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-eqz v9, :cond_7d

    move v2, v5

    :cond_7d
    div-int/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v6}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    goto :goto_bb

    :cond_8b
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x51

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v7, v6}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v7, v4}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    const/4 v7, 0x0

    :goto_9e
    if-ge v7, v1, :cond_bb

    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/app/ResolverActivityInjector;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-eqz v10, :cond_ae

    move v10, v5

    goto :goto_af

    :cond_ae
    move v10, v2

    :goto_af
    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v9, v8}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    :cond_bb
    :goto_bb
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v4}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivityInjector;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v1, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivityInjector;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v2, v1}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3f} :catch_41

    return-object v2

    :cond_40
    goto :goto_49

    :catch_41
    move-exception v0

    const-string v1, "RAInjector"

    const-string v2, "Couldn\'t find resources for package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mIconFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mMiShareView:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unbind()V

    :cond_7
    return-void
.end method

.method public sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedItem"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hasOfficalRecommendation"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "selectedType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const-string/jumbo v2, "refApp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.miui.action.resolver_activity_item_select"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivityInjector;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public showMore()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mShowMoreResolverButton:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x11090008

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_19
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector;->initGridViews()V

    const/4 v0, 0x0

    :goto_22
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v0, v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    return-void
.end method
