.class public Lcom/android/internal/app/ResolverActivityForCts;
.super Landroid/app/Activity;
.source "ResolverActivityForCts.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static ENABLE_TABBED_VIEW:Z = false

.field static final EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field static final EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field static final PROFILE_PERSONAL:I = 0x0

.field static final PROFILE_WORK:I = 0x1

.field private static final TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final TAG:Ljava/lang/String; = "ResolverActivityForCts"


# instance fields
.field private mAlwaysButton:Landroid/widget/Button;

.field private mDefaultTitleResId:I

.field private mFooterSpacer:Landroid/widget/Space;

.field private mHeaderCreatorUser:Landroid/os/UserHandle;

.field protected final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field protected mLaunchedFromUid:I

.field private mLayoutId:I

.field protected mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field private mOnceButton:Landroid/widget/Button;

.field private mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

.field protected mPm:Landroid/content/pm/PackageManager;

.field public mProfileSwitchMessageId:I

.field protected mProfileView:Landroid/view/View;

.field public mReferrerPackage:Ljava/lang/String;

.field public mRegistered:Z

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mRetainInOnStop:Z

.field private mSafeForwardingMode:Z

.field protected mSupportsAlwaysUseOption:Z

.field protected mSystemWindowInsets:Landroid/graphics/Insets;

.field private mTitle:Ljava/lang/CharSequence;

.field private mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverActivityForCts;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolvingHome:Z

    iput v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileSwitchMessageId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivityForCts;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->resetCheckedItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivityForCts;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/ResolverActivityForCts;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivityForCts;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivityForCts;ZIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivityForCts;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivityForCts;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ResolverActivityForCts;Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

    return-object p1
.end method

.method private canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_2f

    nop

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_f

    return v0

    :cond_f
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivityForCts;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    return v4

    :cond_1b
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivityForCts;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    return v4

    :cond_24
    const/4 v3, -0x1

    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {p0, v5, v3, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e

    return v4

    :cond_2e
    return v0

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist on current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivityForCts"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private configureContentView()Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    :goto_22
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    move v3, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    move v3, v1

    :goto_40
    if-eqz v0, :cond_45

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :goto_46
    move v0, v1

    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_53

    const v1, 0x10900f0

    iput v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLayoutId:I

    goto :goto_59

    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLayoutId:I

    :goto_59
    iget v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->setContentView(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const v2, 0x102041e

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->postRebuildList(Z)Z

    move-result v1

    return v1

    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivityForCts;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    move-object v8, p0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getCurrentProfile()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    :goto_20
    move-object v9, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x0

    move v10, v0

    goto :goto_50

    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v0, 0x1

    move v10, v0

    goto :goto_50

    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getSelectedProfileExtra()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4f

    move v0, v1

    move v10, v0

    goto :goto_50

    :cond_4f
    move v10, v0

    :goto_50
    iget-object v2, v8, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-nez v10, :cond_58

    move-object/from16 v3, p1

    goto :goto_59

    :cond_58
    move-object v3, v7

    :goto_59
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_6d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_6d

    move v5, v12

    goto :goto_6e

    :cond_6d
    move v5, v11

    :goto_6e
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivityForCts;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    iget-object v2, v8, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    if-ne v10, v12, :cond_85

    move-object/from16 v3, p1

    goto :goto_86

    :cond_85
    move-object v3, v7

    :goto_86
    if-eqz p3, :cond_94

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_94

    move v5, v12

    goto :goto_95

    :cond_94
    move v5, v11

    :goto_95
    move-object v0, p0

    move-object v1, p0

    move-object/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivityForCts;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v11

    new-instance v12, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    return-object v12
.end method

.method private createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    new-instance v0, Lcom/android/internal/app/ResolverActivityForCts$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityForCts$4;-><init>(Lcom/android/internal/app/ResolverActivityForCts;)V

    return-object v0
.end method

.method private static getAttrColor(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->labelRes:I

    return v0
.end method

.method private hasManagedProfile()Z
    .registers 7

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2b} :catch_32

    if-eqz v5, :cond_2f

    const/4 v1, 0x1

    return v1

    :cond_2f
    goto :goto_19

    :cond_30
    nop

    return v1

    :catch_32
    move-exception v2

    return v1
.end method

.method private hasWorkProfile()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isAutolaunching()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isCTS()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private isIntentPicker()Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLaunchingTargetInOtherProfile()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isPermissionGranted(Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final isSpecificUriMatch(I)Z
    .registers 2

    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_d

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$setupProfileTabs$1(Landroid/widget/TabHost;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in ResolverActivityForCts intent set before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivityForCts"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/internal/app/ChooserActivity;->FROM_CHOOSER:Z

    if-nez v1, :cond_35

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ResolverActivityForCts intent set after"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ResolverActivityForCts intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private maybeAutolaunchActivity()Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeAutolaunchIfSingleTarget()Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    return v1

    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method private maybeAutolaunchIfCrossProfileSupported()Z
    .registers 12

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v2, :cond_1c

    return v3

    :cond_1c
    nop

    invoke-virtual {v0, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    invoke-virtual {v4, v3, v3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    return v3

    :cond_34
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3b

    return v3

    :cond_3b
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivityForCts;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    return v3

    :cond_4a
    const/16 v8, 0xa1

    invoke-static {v8}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMetricsCategory()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return v2
.end method

.method private maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1c

    return v2

    :cond_1c
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivityForCts;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return v1
.end method

.method private maybeAutolaunchIfSingleTarget()Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    return v2

    :cond_1c
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivityForCts;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivityForCts;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return v1

    :cond_33
    return v2
.end method

.method private maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_33
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_38

    goto :goto_42

    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivityForCts;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_42
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_54

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setTitle(Ljava/lang/CharSequence;)V

    :cond_57
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_65

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V

    :cond_65
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mHeaderCreatorUser:Landroid/os/UserHandle;

    return-void
.end method

.method private maybeHideDivider()V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isIntentPicker()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v0, 0x102028d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_42

    :cond_11
    const/16 v0, 0x9b

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    instance-of v3, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v3, :cond_35

    const-string v3, "direct_share"

    goto :goto_38

    :cond_35
    const-string/jumbo v3, "other_target"

    :goto_38
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void

    :cond_42
    :goto_42
    return-void
.end method

.method private prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->fixUris(I)V

    return-void
.end method

.method private registerWorkProfileStateReceiver()V
    .registers 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityForCts;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private resetAlwaysOrOnceButtonBar()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    if-eq v2, v1, :cond_2b

    invoke-direct {p0, v4, v2, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    if-eq v3, v1, :cond_47

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/app/ResolverActivityForCts;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_47
    return-void
.end method

.method private resetCheckedItem()V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isIntentPicker()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLastSelected:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_20
    return-void
.end method

.method private resetTabsHeaderStyle(Landroid/widget/TabWidget;)V
    .registers 10

    const v0, 0x104075c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040758

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6d

    invoke-virtual {p1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x10301b8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v5, 0x1010212

    invoke-static {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->getAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105023b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1040757

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    :cond_56
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x104075b

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_6d
    return-void
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    iget v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileSwitchMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSafeForwardingMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    invoke-interface {p1, p0, v2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    :cond_39
    return-void

    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {p1, p0, v2, v1}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivityForCts;Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_4a} :catch_4b

    :cond_4a
    goto :goto_89

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v2

    const-string v3, "??"

    move-object v2, v3

    :goto_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch as uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLaunchedFromUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", while running in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResolverActivityForCts"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_89
    return-void
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_17
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4b

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const-string v3, "ResolverActivityForCts"

    if-nez v2, :cond_2f

    const-string v1, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3a

    const-string v1, "Attempted to set selection to resolve info for another user"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10400fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4b
    if-eqz v2, :cond_6e

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5d

    const/4 v4, 0x1

    goto :goto_5e

    :cond_5d
    move v4, v1

    :goto_5e
    if-nez v4, :cond_6e

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_audio_capture_device"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    move v0, v5

    :cond_6e
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setButtonBarIgnoreOffset(Z)V
    .registers 4

    const v0, 0x1020210

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .registers 7

    const/4 v0, -0x2

    if-eq p1, v0, :cond_36

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_36

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    nop

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    const v4, 0x10403a3

    iput v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileSwitchMessageId:I

    goto :goto_36

    :cond_2d
    if-nez v2, :cond_36

    if-eqz v3, :cond_36

    const v4, 0x10403a4

    iput v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileSwitchMessageId:I

    :cond_36
    :goto_36
    return-void
.end method

.method private setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;)V
    .registers 5

    const-string v0, "ResolverActivityForCts"

    const-string/jumbo v1, "setupAdapterListView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_16
    return-void
.end method

.method private setupProfileTabs()V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeHideDivider()V

    const v0, 0x102041f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    const v1, 0x102041e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    const-string/jumbo v4, "personal"

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x1040757

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string/jumbo v5, "work"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v5, 0x104075b

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivityForCts;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    new-instance v5, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$wGI-ACtjR4dvD4rc8B0HVQV5JtQ;

    invoke-direct {v5, p0, v4, v0, v2}, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$wGI-ACtjR4dvD4rc8B0HVQV5JtQ;-><init>(Lcom/android/internal/app/ResolverActivityForCts;Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v6, Lcom/android/internal/app/ResolverActivityForCts$3;

    invoke-direct {v6, p0, v0}, Lcom/android/internal/app/ResolverActivityForCts$3;-><init>(Lcom/android/internal/app/ResolverActivityForCts;Landroid/widget/TabHost;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v6, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$z0FtfGic-7RpH8gMf0YF-OZYUzU;

    invoke-direct {v6, v0}, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$z0FtfGic-7RpH8gMf0YF-OZYUzU;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnSwitchOnWorkSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;)V

    const v5, 0x1020443

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupViewVisibilities()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    :cond_11
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    :catch_15
    move-exception v1

    return v0
.end method

.method private updateActiveTabStyle(Landroid/widget/TabHost;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateIntentPickerPaddings()V
    .registers 8

    const v0, 0x10204fe

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105023c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x102020f

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105022c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->updateAfterConfigChange()V

    return-void
.end method


# virtual methods
.method public addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_2f

    const v1, 0x10204bf

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900ec

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2c
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2f
    return-void
.end method

.method protected appliedThemeResId()I
    .registers 2

    const v0, 0x10303f4

    return v0
.end method

.method protected applyFooterView(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    if-nez v0, :cond_10

    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    goto :goto_1d

    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :goto_1d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method protected createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 10

    new-instance v7, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLaunchedFromUid:I

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-object v7
.end method

.method protected createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 6
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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_d

    nop

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivityForCts;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivityForCts;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method protected createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3

    new-instance v0, Lcom/android/internal/app/ResolverActivityForCts$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverActivityForCts$1;-><init>(Lcom/android/internal/app/ResolverActivityForCts;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 21
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
            "Lcom/android/internal/app/ResolverListAdapter;"
        }
    .end annotation

    const-string v0, "ResolverActivityForCts"

    const-string v1, "createResolverListAdapter in ResolverActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    const-string v1, "is_audio_capture_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/android/internal/app/ResolverListAdapter;

    move-object v12, p0

    move-object/from16 v13, p6

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivityForCts;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v9

    move-object v3, v2

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v10, p0

    move v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    return-object v2
.end method

.method dismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    :cond_9
    return-void
.end method

.method protected fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    :cond_2f
    goto :goto_17

    :cond_30
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected getCurrentProfile()I
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public getLayoutResource()I
    .registers 2

    const v0, 0x10900ee

    return v0
.end method

.method protected getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_resolver"

    return-object v0
.end method

.method public getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method protected getReferrerPackageName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    return-object p2
.end method

.method getSelectedProfileExtra()I
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_38

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE has invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Must be either ResolverActivity.PROFILE_PERSONAL or ResolverActivity.PROFILE_WORK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_38
    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_13
    return-object v0
.end method

.method protected getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolvingHome:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;

    move-result-object v0

    :goto_f
    nop

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    sget-object v2, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;

    if-ne v0, v2, :cond_2a

    if-eqz p2, :cond_2a

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2a
    iget v2, v0, Lcom/android/internal/app/ResolverActivityForCts$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivityForCts;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getWorkProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public synthetic lambda$setupProfileTabs$0$ResolverActivityForCts(Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivityForCts;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    const-string/jumbo v0, "personal"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p3, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_18

    :cond_15
    invoke-virtual {p3, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    :goto_18
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->setupViewVisibilities()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeLogProfileChange()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->onProfileTabSelected()V

    const/16 v0, 0x9c

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMetricsCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method protected maybeLogProfileChange()V
    .registers 1

    return-void
.end method

.method public onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 2

    return-void
.end method

.method protected onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->resetButtonBar()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->applyFooterView(I)V

    :cond_26
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    :goto_21
    nop

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const v6, 0x102020e

    if-ne v0, v6, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/internal/app/ResolverActivityForCts;->startSelected(IZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isIntentPicker()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->updateIntentPickerPaddings()V

    :cond_21
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    :cond_35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->makeMyIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eqz v9, :cond_27

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_27

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolvingHome:Z

    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->setSafeForwardingMode(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ResolverActivityForCts"

    const-string v1, "in ResolverActivityForCts"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->appliedThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setProfileSwitchMessageId(I)V

    :try_start_18
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLaunchedFromUid:I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLaunchedFromUid:I

    :goto_2b
    iget v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mLaunchedFromUid:I

    if-ltz v0, :cond_149

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_37

    goto/16 :goto_149

    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mReferrerPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mTitle:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mDefaultTitleResId:I

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-nez v0, :cond_6d

    move v0, v1

    goto :goto_6e

    :cond_6d
    move v0, v2

    :goto_6e
    invoke-virtual {p0, p5, p6, v0}, Lcom/android/internal/app/ResolverActivityForCts;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->configureContentView()Z

    move-result v3

    if-eqz v3, :cond_7b

    return-void

    :cond_7b
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivityForCts;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivityForCts;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_b0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    const v1, 0x1020244

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_e9

    new-instance v3, Lcom/android/internal/app/ResolverActivityForCts$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivityForCts$2;-><init>(Lcom/android/internal/app/ResolverActivityForCts;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isVoiceInteraction()Z

    move-result v4

    if-nez v4, :cond_d7

    if-nez v3, :cond_da

    :cond_d7
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_da
    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setSystemUiVisibility(I)V

    new-instance v2, Lcom/android/internal/app/-$$Lambda$To9s6GyrCdjc1yQ0OFhSsSiSAO8;

    invoke-direct {v2, p0}, Lcom/android/internal/app/-$$Lambda$To9s6GyrCdjc1yQ0OFhSsSiSAO8;-><init>(Lcom/android/internal/app/ResolverActivityForCts;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    :cond_e9
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    if-eqz v2, :cond_f8

    new-instance v3, Lcom/android/internal/app/-$$Lambda$yWqyeLe_kH6Xo7TCeM8jstd6vmE;

    invoke-direct {v3, p0}, Lcom/android/internal/app/-$$Lambda$yWqyeLe_kH6Xo7TCeM8jstd6vmE;-><init>(Lcom/android/internal/app/ResolverActivityForCts;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->updateProfileViewButton()V

    :cond_f8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->sendVoiceChoicesIfNeeded()V

    :cond_101
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_114

    const/16 v3, 0x1c3

    goto :goto_116

    :cond_114
    const/16 v3, 0x1c5

    :goto_116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_13c

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13e

    :cond_13c
    const-string v5, ""

    :goto_13e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_149
    :goto_149
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;->cancel()V

    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    :cond_21
    return-void
.end method

.method public onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_3b

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    :cond_3a
    goto :goto_40

    :cond_3b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    :goto_40
    return-void
.end method

.method onHorizontalSwipeStateChanged(I)V
    .registers 2

    return-void
.end method

.method protected onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 6

    new-instance v0, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivityForCts;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivityForCts;->setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivityForCts$ItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isIntentPicker()Z

    move-result v1

    if-eqz v1, :cond_3f

    const v1, 0x1020244

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_35

    const v3, 0x1050237

    goto :goto_38

    :cond_35
    const v3, 0x1050238

    :goto_38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    :cond_3f
    return-void
.end method

.method public final onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isAutolaunching()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isIntentPicker()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setUseLayoutWithDefault(Z)V

    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_2b

    :cond_26
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showListView(Lcom/android/internal/app/ResolverListAdapter;)V

    :goto_2b
    if-eqz p3, :cond_34

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    :cond_34
    if-eqz p2, :cond_3f

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->resetButtonBar()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;)V

    :cond_3f
    return-void
.end method

.method protected onProfileClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileSwitchMessageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return-void
.end method

.method protected onProfileTabSelected()V
    .registers 1

    return-void
.end method

.method protected onRestart()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    :cond_5a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->updateProfileViewButton()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->resetButtonBar()V

    const v0, 0x102041e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    const-string v1, "last_shown_tab_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v0, 0x102041e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const-string v2, "last_shown_tab_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->registerWorkProfileStateReceiver()V

    :cond_12
    return-void
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRegistered:Z

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolvingHome:Z

    if-nez v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRetainInOnStop:Z

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    :cond_3a
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    :cond_46
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 26

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move-object v4, v0

    const/4 v5, 0x0

    if-eqz v4, :cond_28e

    iget-boolean v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_27

    :cond_23
    move-object/from16 v16, v2

    goto/16 :goto_290

    :cond_27
    :goto_27
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28b

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    goto :goto_47

    :cond_45
    move-object v0, v4

    move-object v8, v0

    :goto_47
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_50

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_50
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_6a

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_5a

    :cond_6a
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v11, 0xfff0000

    and-int/2addr v11, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    const/high16 v13, 0x600000

    if-ne v11, v13, :cond_8f

    invoke-virtual {v8, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8f

    :try_start_82
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_85
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8f

    :catch_86
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    const-string v15, "ResolverActivity"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    :cond_8f
    :goto_8f
    if-eqz v12, :cond_143

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_143

    if-ne v11, v13, :cond_b1

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v13, "file"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v13, "content"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    :cond_b1
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    :goto_c4
    if-eqz v13, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PatternMatcher;

    invoke-virtual {v14, v13}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e4

    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v7, v15, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_e5

    :cond_e4
    goto :goto_c4

    :cond_e5
    :goto_e5
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_116

    :goto_ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_116

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v13, v12}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_115

    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    if-ltz v14, :cond_110

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    goto :goto_111

    :cond_110
    const/4 v6, 0x0

    :goto_111
    invoke-virtual {v7, v15, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    :cond_115
    goto :goto_ed

    :cond_116
    :goto_116
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_143

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    :goto_122
    if-eqz v6, :cond_143

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_143

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    invoke-virtual {v13, v6}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_142

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_143

    :cond_142
    goto :goto_122

    :cond_143
    :goto_143
    if-eqz v7, :cond_284

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_161

    const/4 v0, 0x1

    goto :goto_162

    :cond_161
    move v0, v5

    :goto_162
    move v6, v0

    if-nez v6, :cond_169

    new-array v0, v3, [Landroid/content/ComponentName;

    move-object v13, v0

    goto :goto_16e

    :cond_169
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object v13, v0

    :goto_16e
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_170
    if-ge v14, v3, :cond_1a7

    iget-object v15, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v15}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v15, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v18, v8

    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v19, v11

    iget-object v11, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v13, v14

    iget v5, v15, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v0, :cond_19f

    iget v0, v15, Landroid/content/pm/ResolveInfo;->match:I

    :cond_19f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v18

    move/from16 v11, v19

    const/4 v5, 0x0

    goto :goto_170

    :cond_1a7
    move-object/from16 v18, v8

    move/from16 v19, v11

    if-eqz v6, :cond_1d1

    iget-object v5, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v13, v3

    iget-object v5, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v0, :cond_1d1

    move v0, v5

    goto :goto_1d2

    :cond_1d1
    move v5, v0

    :goto_1d2
    if-eqz p2, :cond_25a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityForCts;->getUserId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8, v7, v5, v13, v11}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iget-boolean v11, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v11, :cond_1ff

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1f8

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v14, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_1f8
    move-object/from16 v16, v2

    move/from16 v20, v3

    move/from16 v21, v6

    goto :goto_259

    :cond_1ff
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v12, :cond_20e

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    goto :goto_20f

    :cond_20e
    const/4 v15, 0x0

    :goto_20f
    if-eqz v15, :cond_225

    move-object/from16 v16, v2

    const-string v2, "http"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_223

    const-string v2, "https"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_227

    :cond_223
    const/4 v2, 0x1

    goto :goto_228

    :cond_225
    move-object/from16 v16, v2

    :cond_227
    const/4 v2, 0x0

    :goto_228
    if-eqz v9, :cond_236

    move/from16 v20, v3

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_238

    const/4 v3, 0x1

    goto :goto_239

    :cond_236
    move/from16 v20, v3

    :cond_238
    const/4 v3, 0x0

    :goto_239
    if-eqz v10, :cond_247

    move/from16 v21, v6

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_249

    const/4 v6, 0x1

    goto :goto_24a

    :cond_247
    move/from16 v21, v6

    :cond_249
    const/4 v6, 0x0

    :goto_24a
    if-eqz v2, :cond_257

    if-eqz v3, :cond_257

    if-eqz v6, :cond_257

    move/from16 v22, v2

    const/4 v2, 0x2

    invoke-virtual {v8, v14, v2, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    goto :goto_259

    :cond_257
    move/from16 v22, v2

    :goto_259
    goto :goto_290

    :cond_25a
    move-object/from16 v16, v2

    move/from16 v20, v3

    move/from16 v21, v6

    :try_start_260
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_26b
    .catch Landroid/os/RemoteException; {:try_start_260 .. :try_end_26b} :catch_26c

    goto :goto_290

    :catch_26c
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivityForCts"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_290

    :cond_284
    move-object/from16 v16, v2

    move-object/from16 v18, v8

    move/from16 v19, v11

    goto :goto_290

    :cond_28b
    move-object/from16 v16, v2

    goto :goto_290

    :cond_28e
    move-object/from16 v16, v2

    :goto_290
    if-eqz p1, :cond_2a8

    if-eqz v4, :cond_29d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityForCts;->isLaunchingTargetInOtherProfile()Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-direct {v1, v4}, Lcom/android/internal/app/ResolverActivityForCts;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V

    :cond_29d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivityForCts;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2a8

    const/4 v2, 0x0

    return v2

    :cond_2a8
    const/4 v2, 0x1

    return v2
.end method

.method optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 5

    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected postRebuildList(Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final postRebuildListInternal(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->maybeAutolaunchActivity()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->setupViewVisibilities()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->setupProfileTabs()V

    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method protected resetButtonBar()V
    .registers 11

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v0, 0x102020f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_18

    const-string v1, "ResolverActivityForCts"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    const v2, 0x102043a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_33

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105022c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_4f
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_70

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v2, :cond_6c

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6c
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivityForCts;->setButtonBarIgnoreOffset(Z)V

    return-void

    :cond_70
    if-eqz v2, :cond_75

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_75
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivityForCts;->setButtonBarIgnoreOffset(Z)V

    const v3, 0x1020211

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mOnceButton:Landroid/widget/Button;

    const v3, 0x102020e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mAlwaysButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->resetAlwaysOrOnceButtonBar()V

    return-void
.end method

.method public resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_7

    goto :goto_32

    :cond_7
    move v0, v1

    goto :goto_32

    :cond_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_14

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_12

    goto :goto_32

    :cond_12
    move v0, v1

    goto :goto_32

    :cond_14
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0
.end method

.method public safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    nop

    return-void

    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    new-array v1, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_15
    if-ge v2, v3, :cond_2d

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    if-nez v4, :cond_24

    return-void

    :cond_24
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivityForCts;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2d
    new-instance v2, Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

    new-instance v3, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivityForCts$PickTargetOptionRequest;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .registers 6

    if-eqz p1, :cond_10

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method protected setRetainInOnStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mRetainInOnStop:Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSafeForwardingMode:Z

    return-void
.end method

.method protected shouldAddFooterView()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const v0, 0x102020f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityForCts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    return v1

    :cond_1c
    :goto_1c
    return v1
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowTabs()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/internal/app/ResolverActivityForCts;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startAsCallerImpl(Landroid/content/Intent;Landroid/os/Bundle;ZI)Z
    .registers 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.app.extra.PERMISSION_TOKEN"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.app.extra.OPTIONS"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x3000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_57

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverActivityForCts"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    const/4 v0, 0x1

    return v0
.end method

.method public startSelected(IZZ)V
    .registers 11

    const-string v0, "ResolverActivityForCts"

    const-string v1, "get in onTargetSelected head"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mResolvingHome:Z

    if-eqz v2, :cond_53

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityForCts;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivityForCts;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10400fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_53
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v2

    if-nez v2, :cond_60

    return-void

    :cond_60
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/app/ResolverActivityForCts;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_9e

    if-eqz p2, :cond_77

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-eqz v3, :cond_77

    const-string v3, "get in onTargetSelected"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c7

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_86

    :cond_77
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_81

    const/16 v0, 0x1c8

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_86

    :cond_81
    const/16 v0, 0x1c9

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_86
    nop

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_96

    const/16 v0, 0x1c4

    goto :goto_98

    :cond_96
    const/16 v0, 0x1c6

    :goto_98
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    :cond_9e
    return-void
.end method

.method public updateInitGridView()V
    .registers 3

    const-string v0, "ResolverActivityForCts"

    const-string/jumbo v1, "updateInitGridView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateProfileViewButton()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityForCts;->shouldShowTabs()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    const v2, 0x102041d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_33
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45

    :cond_3e
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_45
    return-void
.end method

.method public useLayoutWithDefault()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    goto :goto_25

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    :goto_25
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivityForCts;->mSupportsAlwaysUseOption:Z

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method
