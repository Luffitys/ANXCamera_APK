.class public Lcom/android/internal/app/ChooserActivityForCts;
.super Lcom/android/internal/app/ResolverActivityForCts;
.source "ChooserActivityForCts.java"

# interfaces
.implements Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.implements Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivityForCts$RoundedRectImageView;,
        Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;,
        Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivityForCts$DirectShareViewHolder;,
        Lcom/android/internal/app/ChooserActivityForCts$SingleRowViewHolder;,
        Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;,
        Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;,
        Lcom/android/internal/app/ChooserActivityForCts$FooterViewHolder;,
        Lcom/android/internal/app/ChooserActivityForCts$ItemViewHolder;,
        Lcom/android/internal/app/ChooserActivityForCts$ViewHolderBase;,
        Lcom/android/internal/app/ChooserActivityForCts$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivityForCts$EmptyTargetInfo;,
        Lcom/android/internal/app/ChooserActivityForCts$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;,
        Lcom/android/internal/app/ChooserActivityForCts$AzInfoComparator;,
        Lcom/android/internal/app/ChooserActivityForCts$FileInfo;,
        Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;,
        Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;,
        Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewType;,
        Lcom/android/internal/app/ChooserActivityForCts$ShareTargetType;
    }
.end annotation


# static fields
.field public static final APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final CHIP_ICON_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_icon"

.field private static final CHIP_LABEL_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_label"

.field public static final CHOOSER_TARGET:Ljava/lang/String; = "chooser_target"

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x15

.field protected static final CONTENT_PREVIEW_FILE:I = 0x2

.field protected static final CONTENT_PREVIEW_IMAGE:I = 0x1

.field protected static final CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final LAUNCH_LOCATION_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field public static final LIST_VIEW_UPDATE_INTERVAL_IN_MILLIS:I = 0xfa

.field private static final MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final MAX_LOG_RANK_POSITION:I = 0xc

.field private static final MAX_RANKED_TARGETS:I = 0x4

.field private static final NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final SCROLL_STATUS_IDLE:I = 0x0

.field private static final SCROLL_STATUS_SCROLLING_HORIZONTAL:I = 0x2

.field private static final SCROLL_STATUS_SCROLLING_VERTICAL:I = 0x1

.field public static final SELECTION_TYPE_APP:I = 0x2

.field public static final SELECTION_TYPE_COPY:I = 0x4

.field public static final SELECTION_TYPE_SERVICE:I = 0x1

.field public static final SELECTION_TYPE_STANDARD:I = 0x3

.field private static final SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final SHORTCUT_TARGET:Ljava/lang/String; = "shortcut_target"

.field private static final TAG:Ljava/lang/String; = "ChooserActivityForCts"

.field private static final TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field public static final TARGET_TYPE_CHOOSER_TARGET:I = 0x1

.field public static final TARGET_TYPE_DEFAULT:I = 0x0

.field public static final TARGET_TYPE_SHORTCUTS_FROM_PREDICTION_SERVICE:I = 0x3

.field public static final TARGET_TYPE_SHORTCUTS_FROM_SHORTCUT_MANAGER:I = 0x2

.field private static final USE_CHOOSER_TARGET_SERVICE_FOR_DIRECT_TARGETS:Z = true

.field private static final USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = true


# instance fields
.field private mAppendDirectShareEnabled:Z

.field private mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field protected mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

.field protected mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field private mChooserRowServiceSpacing:I

.field private mChooserShownTime:J

.field private mChooserTargetRankingEnabled:Z

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mCurrAvailableWidth:I

.field private mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectShareShortcutInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredComponentNames:[Landroid/content/ComponentName;

.field private mIsAppPredictorComponentAvailable:Z

.field protected mIsSuccessfullySelected:Z

.field private mLastNumberOfChildren:I

.field private mMaxHashSaltDays:I

.field protected mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

.field private mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

.field private mQueriedSharingShortcutsTimeMs:J

.field private mQueriedTargetServicesTimeMs:J

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private mScrollStatus:I

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesRequested:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShouldDisplayLandscape:Z

.field private mWorkAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;-><init>()V

    const-string/jumbo v0, "systemui"

    const-string v1, "hash_salt_max_days"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mMaxHashSaltDays:I

    const-string v1, "append_direct_share_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mAppendDirectShareEnabled:Z

    const-string v1, "chooser_target_ranking_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserTargetRankingEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mCurrAvailableWidth:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mLastNumberOfChildren:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServicesRequested:Ljava/util/Set;

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    new-instance v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserActivityForCts$1;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ChooserActivityForCts;)[Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ChooserActivityForCts;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ChooserActivityForCts;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/app/ChooserActivityForCts;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ChooserActivityForCts;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->setHorizontalScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->showTargetDetails(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ChooserActivityForCts;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getNumSheetExpansions()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ChooserActivityForCts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mShouldDisplayLandscape:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ChooserActivityForCts;)Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->hideStickyContentPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/app/ChooserActivityForCts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mAppendDirectShareEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ChooserActivityForCts;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/app/ChooserActivityForCts;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->incrementNumSheetExpansions()V

    return-void
.end method

.method private addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustPreviewWidth(ILandroid/view/View;)V
    .registers 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mShouldDisplayLandscape:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_10
    if-nez p2, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, p2

    :goto_1c
    move-object p2, v1

    const v1, 0x1020252

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivityForCts;->updateLayoutWidth(IILandroid/view/View;)V

    const v1, 0x1020255

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivityForCts;->updateLayoutWidth(IILandroid/view/View;)V

    const v1, 0x1020248

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/app/ChooserActivityForCts;->updateLayoutWidth(IILandroid/view/View;)V

    return-void
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_20
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2a

    move-object v0, p2

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return-object v0
.end method

.method private createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_22
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 9

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mIsAppPredictorComponentAvailable:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1a

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "intent_filter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    const-class v4, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v4, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    iput-object v5, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_62

    :cond_60
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivityForCts;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    :goto_62
    return-object v5
.end method

.method private createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;
    .registers 3

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$Y1CEqD0iJ7iQjTZT7tulCNor8Xo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$Y1CEqD0iJ7iQjTZT7tulCNor8Xo;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v0
.end method

.method private createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mIntents:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v6

    new-instance v7, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    return-object v7
.end method

.method private createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->findSelectedProfile()I

    move-result v8

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mIntents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-nez v8, :cond_b

    move-object v3, p1

    goto :goto_c

    :cond_b
    move-object v3, v7

    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v9

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mIntents:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1f

    move-object v3, p1

    goto :goto_20

    :cond_1f
    move-object v3, v7

    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v10

    new-instance v11, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v7

    move-object v0, v11

    move-object v2, v9

    move-object v3, v10

    move v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    return-object v11
.end method

.method private createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivityForCts;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2
.end method

.method private createCopyButton()Landroid/widget/Button;
    .registers 4

    nop

    const v0, 0x10804ba

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$PjVeDTJ5vfnrkwaLBdN_PC-2cQw;

    invoke-direct {v2, p0}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$PjVeDTJ5vfnrkwaLBdN_PC-2cQw;-><init>(Lcom/android/internal/app/ChooserActivityForCts;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivityForCts;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x102022b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    return-object v0
.end method

.method private createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    nop

    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method private displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_26

    const/4 v1, 0x3

    if-eq p1, v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected content preview type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivityForCts"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_21
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivityForCts;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_30

    :cond_26
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivityForCts;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_30

    :cond_2b
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivityForCts;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    nop

    :goto_30
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->adjustPreviewWidth(ILandroid/view/View;)V

    :cond_3f
    return-object v0
.end method

.method private displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x1090059

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    nop

    const v6, 0x102022a

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivityForCts;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ChooserActivityForCts;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.extra.STREAM"

    if-eqz v8, :cond_3b

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/ChooserActivityForCts;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_b1

    :cond_3b
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x8

    if-nez v9, :cond_52

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v3, "ChooserActivityForCts"

    const-string v10, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_52
    const/4 v11, 0x1

    if-ne v9, v11, :cond_5f

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/ChooserActivityForCts;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_b1

    :cond_5f
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/android/internal/app/ChooserActivityForCts;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivityForCts$FileInfo;

    move-result-object v12

    add-int/lit8 v13, v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v15, v12, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;->name:Ljava/lang/String;

    aput-object v15, v10, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v11

    const v11, 0x1150015

    invoke-virtual {v14, v11, v13, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x102024a

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x1020249

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x1020247

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x10803ab

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_b1
    return-object v2
.end method

.method private displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 16

    const v0, 0x109005a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    nop

    const v2, 0x102022a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    new-instance v3, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;Z)V

    iput-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x102024b

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v5, :cond_41

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v5, v6, v4, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto/16 :goto_c8

    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v5, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ChooserActivityForCts;->isImageType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    goto :goto_52

    :cond_6c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_7f

    const-string v1, "ChooserActivityForCts"

    const-string v4, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object v0

    :cond_7f
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v9, v6, v10, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_a0

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    const v9, 0x102024c

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v6, v9, v4, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_c8

    :cond_a0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_c8

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    const v10, 0x102024d

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v6, v10, v4, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    const v4, 0x102024e

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v1, v4, v6, v9}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    :cond_c8
    :goto_c8
    return-object v0
.end method

.method private displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 15

    const v0, 0x109005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    nop

    const v2, 0x102022a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->createCopyButton()Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x8

    if-nez v3, :cond_37

    const v5, 0x1020252

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    :cond_37
    const v5, 0x1020250

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_43
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5a

    const v1, 0x1020255

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_94

    :cond_5a
    const v6, 0x1020254

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7b

    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_7b

    invoke-virtual {v7, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    :cond_7b
    const v9, 0x1020253

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-nez v8, :cond_8a

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_94

    :cond_8a
    new-instance v4, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;Z)V

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v4, v9, v8, v1}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    :goto_94
    return-object v0
.end method

.method private extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivityForCts$FileInfo;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivityForCts;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_54

    if-eqz v3, :cond_4e

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4e

    const-string v4, "_display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "flags"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    if-eq v4, v2, :cond_2d

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_34

    :cond_2d
    if-eq v5, v2, :cond_34

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    :cond_34
    :goto_34
    if-eq v6, v2, :cond_4e

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_42

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v8, 0x0

    :goto_40
    move v1, v8

    goto :goto_4e

    :catchall_42
    move-exception v4

    if-eqz v3, :cond_4d

    :try_start_45
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v5

    :try_start_4a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw v4

    :cond_4e
    :goto_4e
    if-eqz v3, :cond_53

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_53} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_53} :catch_54

    :cond_53
    goto :goto_58

    :catch_54
    move-exception v3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->logContentPreviewWarning(Landroid/net/Uri;)V

    :goto_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_70

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_70
    new-instance v2, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .registers 9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_19

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/ChooserActivityForCts;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    return v2

    :cond_19
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_4b

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_4a

    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/app/ChooserActivityForCts;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    return v5

    :cond_47
    goto :goto_33

    :cond_48
    const/4 v2, 0x1

    return v2

    :cond_4a
    :goto_4a
    return v3

    :cond_4b
    return v3
.end method

.method private findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x3

    return v0

    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x2

    :goto_11
    return v1
.end method

.method private findSelectedProfile()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getSelectedProfileExtra()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v0

    :cond_f
    return v0
.end method

.method private getActiveEmptyStateView()Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayResolveInfos(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v3

    :goto_b
    if-ge v2, v3, :cond_30

    invoke-virtual {p1, v2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1b

    goto :goto_2d

    :cond_1b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x14

    if-lt v1, v5, :cond_2d

    const-string v5, "ChooserActivityForCts"

    const-string/jumbo v6, "queryTargets hit query target limit 20"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_30
    :goto_30
    return-object v0
.end method

.method private getNearbySharingComponent()Landroid/content/ComponentName;
    .registers 3

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nearby_sharing_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x1040213

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    return-object v1

    :cond_21
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 16

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_77

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_21

    goto :goto_77

    :cond_21
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_4b

    :try_start_29
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android.service.chooser.chip_label"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    const-string v6, "android.service.chooser.chip_icon"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_46} :catch_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_46} :catch_48

    move-object v3, v7

    goto :goto_4b

    :catch_48
    move-exception v4

    goto :goto_4b

    :catch_4a
    move-exception v4

    :cond_4b
    :goto_4b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_59
    if-nez v3, :cond_65

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v12, v3

    goto :goto_66

    :cond_65
    move-object v12, v3

    :goto_66
    new-instance v13, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v9, 0x0

    const-string v7, ""

    move-object v3, v13

    move-object v4, p1

    move-object v5, v10

    move-object v6, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-virtual {v3, v12}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v3

    :cond_77
    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device-specified nearby sharing component ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivityForCts"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getNumSheetExpansions()I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private getProfileForUser(Landroid/os/UserHandle;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not belong to a personal or work profile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method private getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I
    .registers 7

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    iget-object v2, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_3c

    iget-object v4, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v3

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3c
    const/4 v3, -0x1

    return v3
.end method

.method private getTargetIntentFilter()Landroid/content/IntentFilter;
    .registers 11

    const-string v0, "ChooserActivityForCts"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1b
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    const-string v4, "Failed to get target intent filter: intent data and type are null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_27
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_84

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v6, :cond_53

    :try_start_47
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_52

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    goto :goto_5c

    :cond_53
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5c

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_82} :catch_84

    goto :goto_60

    :cond_83
    return-object v4

    :catch_84
    move-exception v2

    const-string v3, "Failed to get target intent filter"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 26

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v7

    iget-object v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v8

    if-eqz v8, :cond_8d

    if-nez v7, :cond_17

    goto/16 :goto_8d

    :cond_17
    sub-int v0, p4, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->consumeLayoutRequest()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->calculateChooserTargetWidth(I)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mCurrAvailableWidth:I

    if-eq v9, v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    :goto_3e
    move v10, v0

    if-nez v10, :cond_49

    iget v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mLastNumberOfChildren:I

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_8c

    :cond_49
    iput v9, v6, Lcom/android/internal/app/ChooserActivityForCts;->mCurrAvailableWidth:I

    if-eqz v10, :cond_5d

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_5d
    iget-object v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/app/ChooserActivityForCts;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->findSelectedProfile()I

    move-result v13

    if-eq v12, v13, :cond_6e

    return-void

    :cond_6e
    iget v0, v6, Lcom/android/internal/app/ChooserActivityForCts;->mLastNumberOfChildren:I

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_77

    return-void

    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8c
    return-void

    :cond_8d
    :goto_8d
    return-void
.end method

.method private handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    goto :goto_f

    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->updateProfileViewButton()V

    return-void
.end method

.method private handleScroll(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->handleScroll(Landroid/view/View;II)V

    :cond_11
    return-void
.end method

.method private hideStickyContentPreview()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->isStickyContentPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v0, 0x1020245

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private incrementNumSheetExpansions()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isPackageEnabled(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_21

    nop

    if-eqz v0, :cond_20

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_20

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    const/4 v1, 0x1

    return v1

    :cond_20
    return v1

    :catch_21
    move-exception v0

    return v1
.end method

.method private isStickyContentPreviewShowing()Z
    .registers 3

    const v0, 0x1020245

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static synthetic lambda$LAHUau3n-brPCk1NCrFokcpLtMU(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;IIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivityForCts;->handleScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic lambda$PjVeDTJ5vfnrkwaLBdN_PC-2cQw(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$convertToChooserTarget$3(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .registers 4

    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static synthetic lambda$ldhVJD2kVuQvehvab4X8Bx4799Q(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/app/ChooserActivityForCts;->handleLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivityForCts$FileInfo;

    move-result-object v0

    const v1, 0x102024a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;->hasThumbnail:Z

    const v3, 0x1020249

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    new-instance v2, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-direct {v2, p0, p2, v4}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V
    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1100(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_44

    :cond_29
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x1020247

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x1080266

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_44
    return-void
.end method

.method private logActionShareWithPreview()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x674

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private logContentPreviewWarning(Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDirectShareTargetReceived(I)V
    .registers 7

    const/16 v0, 0x6b6

    if-ne p1, v0, :cond_7

    iget-wide v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mQueriedSharingShortcutsTimeMs:J

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mQueriedTargetServicesTimeMs:J

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private maybeSetupGlobalLayoutListener()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivityForCts$5;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$5;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_b
    return-void
.end method

.method private onCopyButtonClicked(Landroid/view/View;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    goto/16 :goto_b3

    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ChooserActivityForCts"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    if-eqz v3, :cond_42

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v3, :cond_31

    invoke-static {v7, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_3b

    :cond_31
    if-eqz v6, :cond_3c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    :goto_3b
    goto :goto_79

    :cond_3c
    const-string v4, "No data available to copy to clipboard"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    const/4 v5, 0x1

    :goto_5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_78
    nop

    :goto_79
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivityForCts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    invoke-virtual {v3, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040291

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x6d5

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const-string v8, ""

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    :goto_b3
    return-void

    :cond_b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not supported for copying to clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendChooserTargetRankingScore(Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetRankingInfo;-><init>(Ljava/util/List;Landroid/os/UserHandle;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v1, :cond_12

    return-void

    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v3, :cond_25

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/prediction/AppTarget;

    :cond_25
    iget-boolean v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserTargetRankingEnabled:Z

    if-eqz v3, :cond_93

    if-nez v2, :cond_93

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    :try_start_2f
    new-instance v4, Landroid/app/prediction/AppTarget$Builder;

    new-instance v5, Landroid/app/prediction/AppTargetId;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/app/ChooserActivityForCts;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "chooser_target"

    invoke-direct {v6, v7, v8}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/ChooserUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v4
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_75} :catch_77

    move-object v2, v4

    goto :goto_93

    :catch_77
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not look up service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; component name not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ChooserActivityForCts"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    if-eqz v2, :cond_a8

    new-instance v3, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_a8
    return-void
.end method

.method private sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserTargetRankingEnabled:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    if-nez v1, :cond_14

    return-void

    :cond_14
    move-object/from16 v2, p1

    instance-of v3, v2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v3, :cond_1b

    return-void

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v6}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x3

    const-string v14, "%s/%s/%s"

    if-eqz v9, :cond_72

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Landroid/app/prediction/AppTargetId;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v12

    aput-object v8, v13, v11

    const-string/jumbo v11, "shortcut_target"

    aput-object v11, v13, v10

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_72
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/app/ChooserUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v15, Landroid/app/prediction/AppTargetId;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v12

    aput-object v8, v13, v11

    const-string v11, "chooser_target"

    aput-object v11, v13, v10

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_94
    goto :goto_28

    :cond_95
    const-string v5, "direct_share"

    invoke-virtual {v1, v5, v4}, Landroid/app/prediction/AppPredictor;->notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_35

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_35

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3b
    if-ltz v0, :cond_5c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz p3, :cond_59

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    :cond_5c
    if-nez p3, :cond_60

    const/4 v0, 0x2

    goto :goto_61

    :cond_60
    const/4 v0, 0x3

    :goto_61
    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    :cond_9c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a3

    goto :goto_c4

    :cond_a3
    invoke-virtual {p0, v3, p1, p3, v0}, Lcom/android/internal/app/ChooserActivityForCts;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x4

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v6, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v4, v8, p4}, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v5, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    :goto_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_c7
    if-eqz v1, :cond_cc

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->sendShortcutManagerShareTargetResultCompleted()V

    :cond_cc
    return-void
.end method

.method private sendShortcutManagerShareTargetResultCompleted()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setHorizontalScrollingEnabled(Z)V
    .registers 3

    const v0, 0x102041e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverViewPager;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverViewPager;->setSwipingEnabled(Z)V

    return-void
.end method

.method private setVerticalScrollEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserGridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->setVerticalScrollEnabled(Z)V

    return-void
.end method

.method private setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareAppTargetCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    return-object v0
.end method

.method private setupScrollListener()V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1020443

    goto :goto_12

    :cond_f
    const v0, 0x102022c

    :goto_12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v2

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ChooserActivityForCts$4;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/android/internal/app/ChooserActivityForCts$4;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/view/View;FF)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private shouldDisplayLandscape(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private shouldShowExtraRow(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    if-ne p1, v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private shouldShowStickyContentPreview()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private shouldShowStickyContentPreviewNoOrientationCheck()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method private showStickyContentPreview()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->isStickyContentPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const v0, 0x1020245

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showTargetDetails(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getTargets()Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_13
    new-instance v1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>(Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "targetDetailsFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateLayoutWidth(IILandroid/view/View;)V
    .registers 6

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method

.method private updateStickyContentPreview()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x1020245

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreview()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->showStickyContentPreview()V

    goto :goto_29

    :cond_26
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->hideStickyContentPreview()V

    :goto_29
    return-void
.end method


# virtual methods
.method public addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResultsForCts(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method protected appliedThemeResId()I
    .registers 2

    const v0, 0x10303e2

    return v0
.end method

.method protected applyFooterView(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCTSAdapterForIndex(I)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->setFooterHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z
    .registers 8

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_1c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    return v4

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3c

    const/4 v5, 0x0

    :goto_11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_39
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3c
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ce

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x3c23d70a    # 0.01f

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_71

    int-to-float v10, v8

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_85

    :cond_71
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    int-to-float v14, v10

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v10, v11

    :goto_85
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.extra.shortcut.ID"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v12, v18

    move v15, v10

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v13, :cond_c3

    if-eqz v2, :cond_c3

    nop

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/prediction/AppTarget;

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    if-eqz v13, :cond_ca

    invoke-interface {v13, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_46

    :cond_ce
    move-object/from16 v9, p2

    sget-object v6, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$JuLQuurZvRk6EYOhOFc8FJJp3lM;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$JuLQuurZvRk6EYOhOFc8FJJp3lM;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v5
.end method

.method public createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;"
        }
    .end annotation

    nop

    invoke-virtual {p0, p6}, Lcom/android/internal/app/ChooserActivityForCts;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Landroid/app/prediction/AppPredictor$Callback;

    move-result-object v1

    invoke-direct {p0, p6, v1}, Lcom/android/internal/app/ChooserActivityForCts;->setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;)V

    new-instance v3, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v3
.end method

.method public createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Lcom/android/internal/app/ResolverListController;",
            ")",
            "Lcom/android/internal/app/ChooserListAdapter;"
        }
    .end annotation

    new-instance v10, Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;)V

    return-object v10
.end method

.method protected createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v9

    if-eqz v9, :cond_19

    new-instance v6, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;)V

    move-object v10, v0

    goto :goto_28

    :cond_19
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    move-object v10, v0

    :goto_28
    new-instance v11, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivityForCts;->mLaunchedFromUid:I

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v7, p1

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ChooserActivityForCts$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    return-object v11
.end method

.method protected createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    goto :goto_13

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivityForCts;->createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    :goto_13
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    return-object v0
.end method

.method protected createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3

    new-instance v0, Lcom/android/internal/app/ChooserActivityForCts$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivityForCts$2;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method filterServiceTargets(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_63

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz p2, :cond_26

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_60

    :cond_26
    const/4 v5, 0x0

    :try_start_27
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_33

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_31} :catch_35

    if-eqz v7, :cond_34

    :cond_33
    move v5, v2

    :cond_34
    goto :goto_5b

    :catch_35
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " returned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " component not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChooserActivityForCts"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move v5, v6

    :goto_5b
    if-eqz v5, :cond_60

    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_60
    :goto_60
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_63
    return-void
.end method

.method protected getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    const v0, 0x1090058

    return v0
.end method

.method public getMaxRankedTargets()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x4

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getMaxTargetsPerRow()I

    move-result v0

    :goto_14
    return v0
.end method

.method protected getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_chooser"

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public getReferrerFillInIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    move-object v0, p2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_16

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_16
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_2a
    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3f
    return-object v0
.end method

.method public handlePackagesChanged()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method public isAppPredictionServiceAvailable()Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const v0, 0x1040208

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    nop

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x20000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App prediction service is defined, but does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ChooserActivityForCts"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_49
    const/4 v1, 0x1

    return v1
.end method

.method protected isImageType(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isSendAction(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method protected isWorkProfile()Z
    .registers 3

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$createAppPredictorCallback$0$ChooserActivityForCts(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_a3

    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-void

    :cond_20
    nop

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->getDisplayResolveInfos(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/prediction/AppTarget;

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    if-nez v6, :cond_4b

    goto :goto_38

    :cond_4b
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "chooser_target"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_5f
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_62
    goto :goto_38

    :cond_63
    move-object p2, v2

    iget-boolean v4, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserTargetRankingEnabled:Z

    if-eqz v4, :cond_70

    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/ChooserActivityForCts;->sendChooserTargetRankingScore(Ljava/util/List;Landroid/os/UserHandle;)V

    :cond_70
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/prediction/AppTarget;

    new-instance v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_9a
    nop

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v1, v0, p2, v4}, Lcom/android/internal/app/ChooserActivityForCts;->sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void

    :cond_a3
    :goto_a3
    return-void
.end method

.method public synthetic lambda$createNearbyButton$1$ChooserActivityForCts(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    return-void
.end method

.method public synthetic lambda$handleLayoutChange$4$ChooserActivityForCts(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_132

    if-nez v1, :cond_e

    goto/16 :goto_132

    :cond_e
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getContentPreviewRowCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getProfileRowCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getRowCount()I

    move-result v6

    :cond_32
    if-nez v6, :cond_4c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreview()Z

    move-result v7

    if-nez v7, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050092

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v5, v4

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void

    :cond_4c
    const v7, 0x1020245

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreview()Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->isStickyContentPreviewShowing()Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v8

    if-eqz v8, :cond_76

    const v8, 0x1020013

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    :cond_76
    const v8, 0x1020443

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ChooserActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_88

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v5, v9

    :cond_88
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_117

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowExtraRow(I)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v11

    iput v11, v0, Lcom/android/internal/app/ChooserActivityForCts;->mLastNumberOfChildren:I

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v12

    :goto_a3
    const/4 v13, 0x1

    if-ge v11, v12, :cond_d3

    if-lez v6, :cond_d3

    invoke-virtual {v2, v11}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    nop

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v15}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v15

    if-eqz v15, :cond_ba

    goto :goto_d0

    :cond_ba
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v5, v15

    if-eqz v10, :cond_c2

    add-int/2addr v5, v15

    :cond_c2
    nop

    invoke-virtual {v2, v14}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getTargetType(I)I

    move-result v4

    if-ne v4, v13, :cond_ce

    move v9, v15

    :cond_ce
    add-int/lit8 v6, v6, -0x1

    :goto_d0
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v13, :cond_e6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_e6

    goto :goto_e7

    :cond_e6
    const/4 v13, 0x0

    :goto_e7
    move v4, v13

    if-eqz v9, :cond_116

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_116

    if-eqz v4, :cond_116

    int-to-float v11, v9

    const v12, 0x3f47ae14    # 0.78f

    div-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v12, :cond_105

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v12, v12, Landroid/graphics/Insets;->top:I

    goto :goto_106

    :cond_105
    const/4 v12, 0x0

    :goto_106
    sub-int v13, p3, p4

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v14}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v11

    sub-int/2addr v13, v12

    sub-int/2addr v13, v3

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_116
    goto :goto_126

    :cond_117
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_126

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    add-int/2addr v5, v9

    :cond_126
    :goto_126
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    sub-int v9, p3, p4

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void

    :cond_132
    :goto_132
    return-void
.end method

.method public synthetic lambda$queryDirectShareTargets$2$ChooserActivityForCts(Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivityForCts;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    nop

    const-string/jumbo v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p3, v3, p1}, Lcom/android/internal/app/ChooserActivityForCts;->sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-nez p2, :cond_6

    goto :goto_14

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->logContentPreviewWarning(Landroid/net/Uri;)V

    return-object v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v0

    return-object v0
.end method

.method protected maybeLogProfileChange()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logShareheetProfileChanged()V

    return-void
.end method

.method public onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_37

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    :try_start_15
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivityForCts"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void
.end method

.method protected onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setEmptyStateBottomOffset(I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x102043d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivityForCts;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldDisplayLandscape(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mShouldDisplayLandscape:Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->adjustPreviewWidth(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->updateStickyContentPreview()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 33

    move-object/from16 v9, p0

    const-string v10, "ChooserActivityForCts"

    const-string v0, "in ChooserActivityForCts"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetTriggered()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->isAppPredictionServiceAvailable()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/internal/app/ChooserActivityForCts;->mIsAppPredictorComponentAvailable:Z

    const/4 v13, 0x0

    iput-boolean v13, v9, Lcom/android/internal/app/ChooserActivityForCts;->mIsSuccessfullySelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, Landroid/net/Uri;

    const/4 v15, 0x1

    if-eqz v0, :cond_37

    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_34
    .catch Ljava/net/URISyntaxException; {:try_start_2c .. :try_end_34} :catch_36

    move-object v1, v0

    goto :goto_38

    :catch_36
    move-exception v0

    :cond_37
    move-object v0, v1

    :goto_38
    instance-of v1, v0, Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChooserActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_5a
    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_62

    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivityForCts;->modifyTargetIntent(Landroid/content/Intent;)V

    :cond_62
    nop

    const-string v3, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_c5

    if-nez v1, :cond_6f

    move v3, v15

    goto :goto_70

    :cond_6f
    move v3, v13

    :goto_70
    array-length v4, v8

    if-eqz v3, :cond_74

    sub-int/2addr v4, v15

    :cond_74
    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    :goto_77
    array-length v6, v8

    if-ge v5, v6, :cond_c0

    aget-object v6, v8, v5

    instance-of v6, v6, Landroid/content/Intent;

    if-nez v6, :cond_a5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not an Intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v8, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_a5
    aget-object v6, v8, v5

    check-cast v6, Landroid/content/Intent;

    if-nez v5, :cond_b2

    if-nez v1, :cond_b2

    move-object v1, v6

    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivityForCts;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_bd

    :cond_b2
    if-eqz v3, :cond_b7

    add-int/lit8 v7, v5, -0x1

    goto :goto_b8

    :cond_b7
    move v7, v5

    :goto_b8
    aput-object v6, v4, v7

    invoke-direct {v9, v6}, Lcom/android/internal/app/ChooserActivityForCts;->modifyTargetIntent(Landroid/content/Intent;)V

    :goto_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :cond_c0
    invoke-virtual {v9, v4}, Lcom/android/internal/app/ChooserActivityForCts;->setAdditionalTargets([Landroid/content/Intent;)V

    move-object v7, v1

    goto :goto_c6

    :cond_c5
    move-object v7, v1

    :goto_c6
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/app/ChooserActivityForCts;->mReplacementExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v7, :cond_e5

    invoke-virtual {v9, v7}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_e7

    :cond_e0
    const-string v3, "Ignoring intent\'s EXTRA_TITLE, deprecated in P. You may wish to set a preview title by using EXTRA_TITLE property of the wrapped EXTRA_INTENT."

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    move-object/from16 v16, v1

    :goto_e7
    const/4 v1, 0x0

    if-nez v16, :cond_f0

    const v1, 0x10401d3

    move/from16 v17, v1

    goto :goto_f2

    :cond_f0
    move/from16 v17, v1

    :goto_f2
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_140

    array-length v4, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    :goto_104
    if-ge v5, v4, :cond_13e

    aget-object v13, v1, v5

    instance-of v13, v13, Landroid/content/Intent;

    if-nez v13, :cond_131

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initial intent #"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " not an Intent: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v1, v5

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    invoke-super {v9, v2}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_131
    aget-object v13, v1, v5

    check-cast v13, Landroid/content/Intent;

    invoke-direct {v9, v13}, Lcom/android/internal/app/ChooserActivityForCts;->modifyTargetIntent(Landroid/content/Intent;)V

    aput-object v13, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x0

    goto :goto_104

    :cond_13e
    move-object v13, v3

    goto :goto_141

    :cond_140
    move-object v13, v3

    :goto_141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getReferrer()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.extra.REFERRER"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mReferrerFillInIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mChosenComponentSender:Landroid/content/IntentSender;

    const-string v2, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementIntentSender:Landroid/content/IntentSender;

    invoke-virtual {v9, v15}, Lcom/android/internal/app/ChooserActivityForCts;->setSafeForwardingMode(Z)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1af

    array-length v2, v1

    new-array v2, v2, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    :goto_17b
    array-length v4, v1

    if-ge v3, v4, :cond_1ad

    aget-object v4, v1, v3

    instance-of v4, v4, Landroid/content/ComponentName;

    if-nez v4, :cond_1a4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered component #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not a ComponentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1ad

    :cond_1a4
    aget-object v4, v1, v3

    check-cast v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17b

    :cond_1ad
    :goto_1ad
    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mFilteredComponentNames:[Landroid/content/ComponentName;

    :cond_1af
    const-string v2, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1f3

    array-length v1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [Landroid/service/chooser/ChooserTarget;

    const/4 v3, 0x0

    :goto_1bf
    if-ge v3, v1, :cond_1f1

    aget-object v4, v5, v3

    instance-of v4, v4, Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_1e7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chooser target #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not a ChooserTarget: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1f1

    :cond_1e7
    aget-object v4, v5, v3

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    goto :goto_1bf

    :cond_1f1
    :goto_1f1
    iput-object v2, v9, Lcom/android/internal/app/ChooserActivityForCts;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    :cond_1f3
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v9, v1}, Lcom/android/internal/app/ChooserActivityForCts;->shouldDisplayLandscape(I)Z

    move-result v1

    iput-boolean v1, v9, Lcom/android/internal/app/ChooserActivityForCts;->mShouldDisplayLandscape:Z

    const-string v1, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    const/4 v6, 0x0

    invoke-virtual {v14, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ChooserActivityForCts;->setRetainInOnStop(Z)V

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move/from16 v5, v17

    move/from16 v19, v6

    const/16 v22, 0x2

    move-object v6, v13

    move-object/from16 v23, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v20

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/internal/app/ChooserActivityForCts;->mChooserShownTime:J

    sub-long/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0xd6

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->isWorkProfile()Z

    move-result v5

    if-eqz v5, :cond_248

    move/from16 v15, v22

    goto :goto_249

    :cond_248
    nop

    :goto_249
    invoke-virtual {v4, v15}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x671

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x675

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v9, Lcom/android/internal/app/ChooserActivityForCts;->mChooserRowServiceSpacing:I

    iget-object v3, v9, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_29c

    iget-object v3, v9, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v4, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ldhVJD2kVuQvehvab4X8Bx4799Q;

    invoke-direct {v4, v9}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ldhVJD2kVuQvehvab4X8Bx4799Q;-><init>(Lcom/android/internal/app/ChooserActivityForCts;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object/from16 v3, v23

    invoke-virtual {v9, v3}, Lcom/android/internal/app/ChooserActivityForCts;->isSendAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_291

    iget-object v4, v9, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v5, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$LAHUau3n-brPCk1NCrFokcpLtMU;

    invoke-direct {v5, v9}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$LAHUau3n-brPCk1NCrFokcpLtMU;-><init>(Lcom/android/internal/app/ChooserActivityForCts;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_291
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v5, Lcom/android/internal/app/ChooserActivityForCts$1;

    invoke-direct {v5, v9}, Lcom/android/internal/app/ChooserActivityForCts$1;-><init>(Lcom/android/internal/app/ChooserActivityForCts;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V

    goto :goto_29e

    :cond_29c
    move-object/from16 v3, v23

    :goto_29e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System Time Cost is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v22

    const/16 v23, 0x103

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    if-nez v13, :cond_2c5

    move/from16 v26, v19

    goto :goto_2c8

    :cond_2c5
    array-length v6, v13

    move/from16 v26, v6

    :goto_2c8
    iget-object v4, v9, Lcom/android/internal/app/ChooserActivityForCts;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_2cf

    move/from16 v27, v19

    goto :goto_2d2

    :cond_2cf
    array-length v4, v4

    move/from16 v27, v4

    :goto_2d2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->isWorkProfile()Z

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v9, v4, v5}, Lcom/android/internal/app/ChooserActivityForCts;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v29

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v22 .. v30}, Lcom/android/internal/app/ChooserActivityLogger;->logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v9, Lcom/android/internal/app/ChooserActivityForCts;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivityForCts;->onDestroy()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->unbindRemainingServices()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->removeAllMessages()V
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->access$1200(Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mPreviewCoord:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    if-eqz v0, :cond_1c

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->cancelLoads()V
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;->access$1300(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    :cond_36
    return-void
.end method

.method public onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method onHorizontalSwipeStateChanged(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    iget v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    if-nez v1, :cond_1a

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->setVerticalScrollEnabled(Z)V

    goto :goto_1a

    :cond_f
    if-nez p1, :cond_1a

    iget v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    if-ne v2, v1, :cond_1a

    iput v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mScrollStatus:I

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->setVerticalScrollEnabled(Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->setupScrollListener()V

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->maybeSetupGlobalLayoutListener()V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V

    :cond_31
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_4a

    :cond_3f
    new-instance v1, Lcom/android/internal/app/ChooserActivityForCts$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivityForCts$3;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserListAdapter;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ChooserActivityForCts$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4d

    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    :goto_4d
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    return-void

    :cond_5b
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    return-void

    :cond_75
    const-string v3, "ChooserActivityForCts"

    const-string/jumbo v4, "querying direct share targets from ShortcutManager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ChooserActivityForCts;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    const-string v2, "List built querying services"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->queryTargetServices(Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    return-void
.end method

.method protected onProfileTabSelected()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->updateDirectShareExpansion()V

    return-void
.end method

.method onRefinementCanceled()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    :cond_a
    const-string v0, "ChooserActivityForCts"

    if-nez p1, :cond_14

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivityForCts;->checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_38
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/android/internal/app/ResolverActivityForCts;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->finish()V

    return-void

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->onRefinementCanceled()V

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_6d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_46

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    :goto_32
    if-ge v2, v3, :cond_41

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_41
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_46
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;->destroy()V

    :cond_4d
    new-instance v1, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivityForCts$RefinementResultReceiver;

    const-string v2, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_5a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_64
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5a .. :try_end_64} :catch_65

    return v8

    :catch_65
    move-exception v1

    const-string v2, "ChooserActivityForCts"

    const-string v3, "Refinement IntentSender failed to send"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivityForCts;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method protected postRebuildList(Z)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->shouldShowStickyContentPreview()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootCtsAdapter()Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->getContentPreviewRowCount()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->logActionShareWithPreview()V

    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method protected queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mQueriedSharingShortcutsTimeMs:J

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-nez p2, :cond_16

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivityForCts;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->getDisplayResolveInfos(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected queryTargetServices(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/app/ChooserActivityForCts;->mQueriedTargetServicesTimeMs:J

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/app/ChooserActivityForCts;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ShortcutManager;

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v9

    move v10, v8

    move v8, v0

    :goto_2b
    if-ge v10, v9, :cond_170

    invoke-virtual {v2, v10}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    const/4 v12, 0x0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_40

    move-object/from16 v20, v3

    move-object/from16 v19, v5

    goto/16 :goto_165

    :cond_40
    invoke-virtual {v11}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutManager;->hasShareTargets(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    move-object/from16 v20, v3

    move-object/from16 v19, v5

    goto/16 :goto_165

    :cond_54
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_65

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v14, "android.service.chooser.chooser_target_service"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v0, v14}, Lcom/android/internal/app/ChooserActivityForCts;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    move-object v14, v0

    const-string v15, "ChooserActivityForCts"

    if-eqz v14, :cond_157

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v4, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/internal/app/ChooserActivityForCts;->mServicesRequested:Ljava/util/Set;

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    move-object/from16 v20, v3

    move-object/from16 v19, v5

    goto/16 :goto_165

    :cond_90
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivityForCts;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    move-object/from16 v17, v2

    const-string v2, "android.service.chooser.ChooserTargetService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string/jumbo v5, "queryTargets found target with service "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_ba
    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_fc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "ChooserTargetService "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not require permission "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - this service will not be queried for ChooserTargets. add android:permission=\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" to the <service> tag for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in the manifest."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ba .. :try_end_f9} :catch_13a

    move-object/from16 v20, v3

    goto :goto_165

    :cond_fc
    move-object/from16 v20, v0

    nop

    new-instance v0, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v0, v1, v11, v5}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v20, v3

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/android/internal/app/ChooserActivityForCts;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_15b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding service connection for target "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " intent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_15b

    :catch_13a
    move-exception v0

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not look up service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; component name not found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    :cond_157
    move-object/from16 v20, v3

    move-object/from16 v19, v5

    :cond_15b
    :goto_15b
    const/4 v0, 0x5

    if-lt v8, v0, :cond_165

    const-string/jumbo v0, "queryTargets hit query target limit 5"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_172

    :cond_165
    :goto_165
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_2b

    :cond_170
    move-object/from16 v19, v5

    :goto_172
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->restartServiceRequestTimer()V
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->access$1400(Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;)V

    return-void
.end method

.method protected resetButtonBar()V
    .registers 1

    return-void
.end method

.method public sendListViewUpdateMessage(Landroid/os/UserHandle;)V
    .registers 6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserHandler:Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected shouldAddFooterView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public startSelected(IZZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "ChooserActivityForCts"

    const-string/jumbo v3, "startSelected gggggg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    nop

    move/from16 v4, p3

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    if-eqz v5, :cond_20

    instance-of v6, v5, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    if-eqz v6, :cond_20

    return-void

    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserShownTime:J

    sub-long/2addr v6, v8

    instance-of v8, v5, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v8, :cond_4a

    move-object v8, v5

    check-cast v8, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v9

    if-nez v9, :cond_4a

    new-instance v2, Lcom/android/internal/app/ChooserStackedAppDialogFragment;

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {v2, v8, v1, v9}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;-><init>(Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;ILandroid/os/UserHandle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "targetDetailsFragment"

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_4a
    invoke-super/range {p0 .. p3}, Lcom/android/internal/app/ResolverActivityForCts;->startSelected(IZZ)V

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_15a

    const/4 v8, 0x0

    move/from16 v9, p1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v13

    const/4 v14, 0x2

    if-eqz v13, :cond_c9

    const/4 v15, 0x1

    if-eq v13, v15, :cond_7d

    if-eq v13, v14, :cond_c9

    const/4 v14, 0x3

    if-eq v13, v14, :cond_6a

    goto/16 :goto_e4

    :cond_6a
    const/4 v9, -0x1

    const/16 v8, 0xd9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v13

    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {v13, v14, v15, v9}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;I)V

    goto :goto_e4

    :cond_7d
    const/16 v8, 0xd8

    invoke-virtual {v3, v9}, Lcom/android/internal/app/ChooserListAdapter;->getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;

    move-result-object v13

    invoke-static {}, Landroid/util/HashedStringCache;->getInstance()Landroid/util/HashedStringCache;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v15, v0, Lcom/android/internal/app/ChooserActivityForCts;->mMaxHashSaltDays:I

    invoke-virtual {v14, v0, v2, v1, v15}, Landroid/util/HashedStringCache;->hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;

    move-result-object v12

    move-object v1, v5

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivityForCts;->getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I

    move-result v10

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivityForCts;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v1, :cond_b8

    array-length v11, v1

    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v1, v15, v14, v9}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;I)V

    goto :goto_e4

    :cond_c9
    const/16 v8, 0xd7

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    sub-int/2addr v9, v1

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v14, v13, v9}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;I)V

    nop

    :goto_e4
    if-eqz v8, :cond_11c

    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v8}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz v12, :cond_10c

    const/16 v13, 0x6a8

    iget-object v14, v12, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v13, 0x6a9

    iget v14, v12, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v13, 0x43f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_10c
    const/16 v13, 0x43e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivityForCts;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_11c
    iget-boolean v1, v0, Lcom/android/internal/app/ChooserActivityForCts;->mIsSuccessfullySelected:Z

    if-eqz v1, :cond_15a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "User Selection Time Cost is "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "position of selected app/service/caller is "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v1, v6

    const/4 v2, 0x0

    const-string/jumbo v13, "user_selection_cost_for_smart_sharing"

    invoke-static {v2, v13, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v1, "app_position_for_smart_sharing"

    invoke-static {v2, v1, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_15a
    return-void
.end method

.method unbindRemainingServices()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindRemainingServices, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivityForCts"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_29
    if-ge v0, v2, :cond_51

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unbinding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivityForCts;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_51
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServicesRequested:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mServiceConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateInitGridView()V
    .registers 3

    const-string v0, "ChooserActivityForCts"

    const-string/jumbo v1, "updateInitGridView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 8

    if-eqz p1, :cond_d

    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    :cond_d
    if-eqz p1, :cond_77

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivityForCts;->sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ChooserActivityForCts"

    if-eqz v0, :cond_72

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_72

    if-eqz v1, :cond_72

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivityForCts;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserActivityForCts;->sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserListAdapter;->updateModel(Landroid/content/ComponentName;)V

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ChooserListAdapter;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResolveInfo Package is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action to be updated is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_72
    const-string v3, "Can not log Chooser Counts of null ResovleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts;->mIsSuccessfullySelected:Z

    return-void
.end method
