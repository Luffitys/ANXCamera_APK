.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# static fields
.field public static final BEAUTY_FRAGMENT_CONTAINER_ID:I = 0x7f090078

.field public static final FRAGMENT_AMBILIGHT:I = 0xfffff0

.field public static final FRAGMENT_ASD_WATERMARK:I = 0xffffc

.field public static final FRAGMENT_BASE_WATERMARK:I = 0xffff6

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_BEAUTY:I = 0xffa

.field public static final FRAGMENT_BLANK_DEFAULT:I = 0xe

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xfff9

.field public static final FRAGMENT_CITY_WATERMARK:I = 0xffffd

.field public static final FRAGMENT_CLONE_GALLERY:I = 0xffff4

.field public static final FRAGMENT_CLONE_PROCESS:I = 0xffff3

.field public static final FRAGMENT_CLONE_USE_GUIDE:I = 0xffff5

.field public static final FRAGMENT_CUSTOM_TINT:I = 0xfff8

.field public static final FRAGMENT_DISPATCH:I = 0xd

.field public static final FRAGMENT_DOLLY_ZOOM_PROCESS:I = 0xfffffb

.field public static final FRAGMENT_DOLLY_ZOOM_USE_GUIDE:I = 0xfffffc

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_DUAL_STEREO:I = 0xff5

.field public static final FRAGMENT_EYE_LIGHT_POPU_TIP:I = 0xff9

.field public static final FRAGMENT_FAST_MOTION:I = 0xfffff1

.field public static final FRAGMENT_FAST_MOTION_EXTRA:I = 0xfffff2

.field public static final FRAGMENT_FAST_MOTION_PRO:I = 0xfffff6

.field public static final FRAGMENT_FESTIVAL_WATERMARK:I = 0xffffb

.field public static final FRAGMENT_FILM_DREAM_PROCESS:I = 0xfffff5

.field public static final FRAGMENT_FILM_GALLERY:I = 0xfffff3

.field public static final FRAGMENT_FILM_PREVIEW:I = 0xfffff4

.field public static final FRAGMENT_FILM_TIME_FREEZE:I = 0xfffff9

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_GENERAL_WATERMARK:I = 0xffff7

.field public static final FRAGMENT_GIF:I = 0xfff4

.field public static final FRAGMENT_ID_CARD:I = 0xffff0

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_LIVE_REVIEW:I = 0xffff1

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MASTER_FILTER:I = 0xfffff7

.field public static final FRAGMENT_MIMOJI_EDIT:I = 0xfff1

.field public static final FRAGMENT_MIMOJI_EMOTICON:I = 0xfff2

.field public static final FRAGMENT_MIMOJI_LIST:I = 0xfff0

.field public static final FRAGMENT_MIMOJI_SCREEN:I = 0xfff3

.field public static final FRAGMENT_MODES_EDIT:I = 0xfff7

.field public static final FRAGMENT_MODES_MORE_NORMAL:I = 0xfff5

.field public static final FRAGMENT_MODES_MORE_POPUP:I = 0xfff6

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_BEAUTY:I = 0xf9

.field public static final FRAGMENT_POPUP_BEAUTYLEVEL:I = 0xff2

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_LIVE_STICKER:I = 0xffc

.field public static final FRAGMENT_POPUP_MAKEUP:I = 0xfc

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_SILHOUETTE_WATERMARK:I = 0xffff9

.field public static final FRAGMENT_SLOW_SHUTTER_USE_GUIDE:I = 0xfffffd

.field public static final FRAGMENT_SPOTS_WATERMARK:I = 0xffff8

.field public static final FRAGMENT_STICKER:I = 0xff

.field public static final FRAGMENT_SUBTITLE:I = 0xfffe

.field public static final FRAGMENT_TEXT_WATERMARK:I = 0xffffa

.field public static final FRAGMENT_TIME_FREEZE_USE_GUIDE:I = 0xfffffa

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_VERTICAL:I = 0xff8

.field public static final FRAGMENT_VV:I = 0xfffa

.field public static final FRAGMENT_VV_FEATURE:I = 0xfffff8

.field public static final FRAGMENT_VV_GALLERY:I = 0xfffb

.field public static final FRAGMENT_VV_PREVIEW:I = 0xfffc

.field public static final FRAGMENT_VV_PROCESS:I = 0xfffd

.field public static final FRAGMENT_WATERMARK:I = 0xffffe

.field public static final FRAGMENT_WIDESELFIE:I = 0xffe

.field public static final MODULE_CONTENT:I = 0xffff2

.field private static final TAG:Ljava/lang/String; = "BaseFragmentDelegate"


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;

.field private mActivity:Lcom/android/camera/Camera;

.field private mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field private mLastFragmentAlias:Ljava/util/List;

.field private mStoreFragments:Landroid/util/SparseIntArray;

.field private mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic OooO00o(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    iget v10, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_9

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_5

    :pswitch_1
    if-eq v3, v10, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    :cond_2
    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_7

    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v7, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_3

    goto :goto_4

    :cond_3
    iget-object v9, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9, v8}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v9, :cond_5

    if-eq v8, v3, :cond_4

    invoke-virtual {v9, v5}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    :goto_3
    invoke-virtual {v1, v9}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string v5, "popup null, create new"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v6, v10

    move v8, v3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    goto :goto_1

    :pswitch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v4, v10}, Lcom/android/camera/fragment/BaseFragment;->setNewFragmentInfo(I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_8
    const/4 v5, 0x0

    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v6, v10

    move v8, v3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_6

    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_9
    :goto_5
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v10}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    :pswitch_6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v8

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v8}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    const/4 v5, 0x0

    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v6, v10

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :goto_6
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    :cond_a
    :goto_7
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need operation info"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bindLifeCircle(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance v0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->getFragmentLifecycle()Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    invoke-direct {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>()V

    const-string v3, "com.android.camera.bind"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->addListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    const/16 v0, 0xe

    if-eq p2, v0, :cond_5

    const/16 v0, 0xf0

    if-eq p2, v0, :cond_4

    const/16 v0, 0xf1

    if-eq p2, v0, :cond_3

    const/16 v0, 0xf3

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf4

    if-eq p2, v0, :cond_1

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_2

    :pswitch_0
    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;

    invoke-direct {v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;-><init>()V

    goto/16 :goto_1

    :pswitch_1
    new-instance v1, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {v1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;-><init>()V

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;-><init>()V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;-><init>()V

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Lcom/android/camera/fragment/FragmentModuleContent;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentModuleContent;-><init>()V

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;-><init>()V

    goto/16 :goto_2

    :pswitch_7
    new-instance v1, Lcom/android/camera/fragment/idcard/FragmentIDCard;

    invoke-direct {v1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;-><init>()V

    goto/16 :goto_2

    :pswitch_8
    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;-><init>()V

    goto/16 :goto_2

    :pswitch_9
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;-><init>()V

    goto/16 :goto_2

    :pswitch_a
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    goto/16 :goto_2

    :pswitch_b
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVV;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVV;-><init>()V

    goto/16 :goto_2

    :pswitch_c
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    goto/16 :goto_2

    :pswitch_d
    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-direct {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;-><init>()V

    goto/16 :goto_2

    :pswitch_e
    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-direct {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;-><init>()V

    goto/16 :goto_1

    :pswitch_f
    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;

    invoke-direct {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;-><init>()V

    goto/16 :goto_1

    :pswitch_10
    new-instance v1, Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-direct {v1}, Lcom/android/camera/features/gif/FragmentGifEdit;-><init>()V

    goto/16 :goto_2

    :pswitch_11
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;-><init>()V

    goto/16 :goto_2

    :pswitch_12
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    invoke-direct {v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;-><init>()V

    goto/16 :goto_2

    :pswitch_13
    new-instance v1, Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentWideSelfie;-><init>()V

    goto/16 :goto_2

    :pswitch_14
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;-><init>()V

    goto/16 :goto_1

    :pswitch_15
    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/live/FragmentLiveSticker;-><init>()V

    goto/16 :goto_1

    :sswitch_0
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;-><init>()V

    goto/16 :goto_1

    :sswitch_1
    new-instance v1, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;

    invoke-direct {v1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;-><init>()V

    goto/16 :goto_1

    :sswitch_2
    new-instance v1, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;-><init>()V

    goto/16 :goto_1

    :sswitch_3
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;-><init>()V

    goto/16 :goto_1

    :sswitch_4
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;-><init>()V

    goto/16 :goto_1

    :sswitch_5
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;-><init>()V

    goto/16 :goto_2

    :sswitch_6
    new-instance v1, Lcom/android/camera/fragment/FragmentMasterFilter;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentMasterFilter;-><init>()V

    goto/16 :goto_2

    :sswitch_7
    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-direct {v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;-><init>()V

    goto/16 :goto_1

    :sswitch_8
    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;-><init>()V

    goto/16 :goto_1

    :sswitch_9
    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {v1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;-><init>()V

    goto/16 :goto_2

    :sswitch_a
    new-instance v1, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-direct {v1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;-><init>()V

    goto :goto_1

    :sswitch_b
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p2

    const/16 p3, 0xb8

    if-ne p2, p3, :cond_0

    new-instance p2, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-direct {p2}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;-><init>()V

    :goto_0
    move-object v1, p2

    goto :goto_1

    :sswitch_c
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;-><init>()V

    goto/16 :goto_2

    :sswitch_d
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopuEyeLightTip;-><init>()V

    goto/16 :goto_2

    :sswitch_e
    new-instance v1, Lcom/android/camera/fragment/FragmentVertical;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentVertical;-><init>()V

    goto/16 :goto_2

    :sswitch_f
    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentLighting;

    invoke-direct {v1}, Lcom/android/camera/fragment/bottom/action/FragmentLighting;-><init>()V

    goto :goto_1

    :sswitch_10
    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;-><init>()V

    goto :goto_2

    :sswitch_11
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    goto :goto_2

    :sswitch_12
    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto :goto_2

    :sswitch_13
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto :goto_2

    :sswitch_14
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    goto :goto_2

    :sswitch_15
    new-instance v1, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto :goto_2

    :sswitch_16
    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {v1}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    goto :goto_2

    :sswitch_17
    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    :goto_1
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_2

    :sswitch_18
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    goto :goto_2

    :sswitch_19
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v1}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v1}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;-><init>()V

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentBlankDefault;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/FragmentBlankDefault;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/android/camera/fragment/DispatchFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/DispatchFragment;-><init>()V

    :cond_7
    :goto_2
    invoke-direct {p0, v1, p1, p4, p5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xf7 -> :sswitch_19
        0xf9 -> :sswitch_18
        0xfb -> :sswitch_17
        0xff -> :sswitch_16
        0xff0 -> :sswitch_15
        0xff2 -> :sswitch_14
        0xff3 -> :sswitch_13
        0xff4 -> :sswitch_12
        0xff5 -> :sswitch_11
        0xff6 -> :sswitch_10
        0xff7 -> :sswitch_f
        0xff8 -> :sswitch_e
        0xff9 -> :sswitch_d
        0xffa -> :sswitch_c
        0xfff0 -> :sswitch_b
        0xffffe -> :sswitch_a
        0xfffff3 -> :sswitch_9
        0xfffff5 -> :sswitch_8
        0xfffff6 -> :sswitch_7
        0xfffff7 -> :sswitch_6
        0xfffff8 -> :sswitch_5
        0xfffff9 -> :sswitch_4
        0xfffffa -> :sswitch_3
        0xfffffb -> :sswitch_2
        0xfffffc -> :sswitch_1
        0xfffffd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xffc
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfff2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfff9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfffd
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xffff0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfffff0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {p1, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p0, p2, 0x1

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-void
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private popStoredFragment(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return v0
.end method

.method private storeFragmentInfo(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public batchFragmentRequest(Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    :cond_2
    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v4

    iget v5, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_6
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    return-void
.end method

.method public delegateEvent(I)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f090078

    if-eq p1, v1, :cond_11

    const/16 v1, 0x17

    const v3, 0x7f090169

    if-eq p1, v1, :cond_f

    const/4 v1, 0x6

    const/16 v4, 0xf1

    const v5, 0x7f090081

    const v6, 0x7f090077

    const v7, 0x7f090083

    if-eq p1, v1, :cond_a

    const/4 v1, 0x7

    const v8, 0xfffa

    if-eq p1, v1, :cond_8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffffc

    if-eq p1, v1, :cond_0

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffffc

    goto/16 :goto_3

    :cond_0
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffffb

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffffa

    if-eq p1, v1, :cond_1

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffffa

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffff9

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffff7

    if-eq p1, v1, :cond_12

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffff7

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffff6

    if-eq p1, v1, :cond_12

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffff6

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffffd

    if-eq p1, v1, :cond_7

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffffd

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfffff1

    if-eq p1, v1, :cond_12

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffff1

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff7

    if-eq p1, v1, :cond_12

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff7

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfff7

    if-eq p1, v1, :cond_7

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff7

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfff6

    if-eq p1, v1, :cond_7

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff6

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfff5

    if-eq p1, v1, :cond_7

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff5

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xffffe

    if-eq p1, v1, :cond_12

    goto/16 :goto_2

    :pswitch_b
    const p1, 0x7f090162

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const v2, 0xfff4

    if-eq v1, v2, :cond_2

    goto :goto_0

    :pswitch_c
    const p1, 0x7f090161

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v1

    const v2, 0xfff2

    if-eq v1, v2, :cond_2

    :goto_0
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v8, :cond_3

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_5

    :cond_3
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000000o()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00000o0()Z

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xff6

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const v1, 0xfff0

    if-nez p1, :cond_6

    const p1, 0x7f090080

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v1, :cond_12

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffd

    if-eq p1, v1, :cond_12

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffc

    if-eq p1, v1, :cond_12

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xffff1

    if-eq p1, v1, :cond_7

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_3

    :cond_7
    :goto_1
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xffa

    if-eq p1, v1, :cond_12

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-ne p1, v8, :cond_9

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    return-void

    :cond_9
    if-eq p1, v4, :cond_13

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xfff9

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xff3

    const v3, 0x7f090082

    const v8, 0x7f090206

    if-eq p1, v1, :cond_c

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xf0

    if-eq p1, v1, :cond_b

    invoke-direct {p0, v2, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->storeFragmentInfo(II)V

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto/16 :goto_5

    :cond_c
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->popStoredFragment(I)I

    move-result p1

    const/16 v1, 0xf0

    if-eq p1, v1, :cond_d

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000000o()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00000o0()Z

    move-result p1

    if-nez p1, :cond_e

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_13

    :cond_e
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xffff5

    if-eq p1, v1, :cond_10

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xffff5

    goto :goto_3

    :cond_10
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const v1, 0xffff3

    goto :goto_3

    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 v1, 0xfb

    if-eq p1, v1, :cond_12

    :goto_2
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    goto :goto_5

    :cond_12
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    :goto_4
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    :goto_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    :cond_14
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/camera/fragment/OooO00o;

    invoke-direct {v0, p3}, Lcom/android/camera/fragment/OooO00o;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, v1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public getActiveFragment(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xf0

    return p0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object p0
.end method

.method public getOriginalFragment(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 19

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    move-object/from16 v7, p1

    iput-object v7, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object/from16 v8, p3

    iput-object v8, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    const/16 v2, 0xf4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v10

    const/16 v2, 0xf7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    const v2, 0xfff9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v12

    const/16 v2, 0xf1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v13

    const/16 v2, 0xf3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v14

    const/16 v2, 0xff0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v15

    const v2, 0xffff2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    iget-object v1, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f090083

    invoke-virtual {v7, v9, v12, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f090077

    invoke-virtual {v7, v5, v13, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f090206

    invoke-virtual {v7, v4, v10, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090082

    invoke-virtual {v7, v3, v11, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090203

    invoke-virtual {v7, v2, v14, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f090283

    invoke-virtual {v7, v9, v15, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f09024b

    invoke-virtual {v7, v9, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000000o()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000Oooo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00000o0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/16 v16, 0xff5

    const/16 v17, 0x0

    const/16 v18, 0xf0

    move-object/from16 v0, p0

    move v9, v2

    move/from16 v2, v16

    move v9, v3

    move-object/from16 v3, v17

    move v9, v4

    move/from16 v4, v18

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v5

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    move v9, v5

    const/4 v1, 0x1

    const/16 v2, 0xff4

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    :goto_1
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    :goto_2
    const v1, 0x7f090081

    const/16 v2, 0xf0

    if-eqz v0, :cond_3

    iget-object v3, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_3

    :cond_3
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f090083

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f090206

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f090082

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f090203

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f090283

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f090078

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f090205

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f090223

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f09024b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v14}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v13}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v15}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method public lazyLoadFragment(II)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xf0

    iget-object v6, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetFeatureFragment(Ljava/util/List;)Ljava/util/List;
    .locals 9

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v5

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-virtual {v8, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->saveWith(Lcom/android/camera/fragment/BaseFragmentOperation;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const/16 v3, 0xf0

    if-ne v5, v3, :cond_5

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    const/16 v4, 0xffa

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    return-object v2
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public updateCurrentFragments(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_6

    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_3
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :goto_4
    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :goto_5
    :pswitch_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_6
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
