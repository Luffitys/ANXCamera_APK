.class public abstract Lmiui/app/ActionBar;
.super Landroid/app/ActionBar;
.source ""


# static fields
.field public static final DEFAULT_SHOW_BLUR_BACKGROUND:Z = false

.field public static final DISPLAY_SHOW_ACTIONBAR_BLUR:I = 0x8000

.field public static final DISPLAY_SHOW_SPLIT_ACTIONBAR_BLUR:I = 0x4000

.field public static final STATE_COLLAPSE:I = 0x0

.field public static final STATE_EXPAND:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
.end method

.method public abstract addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract getEndView()Landroid/view/View;
.end method

.method public abstract getExpandState()I
.end method

.method public abstract getFragmentAt(I)Landroid/app/Fragment;
.end method

.method public abstract getFragmentTabCount()I
.end method

.method public abstract getStartView()Landroid/view/View;
.end method

.method public abstract getViewPagerOffscreenPageLimit()I
.end method

.method public abstract isFragmentViewPagerMode()Z
.end method

.method public abstract isResizable()Z
.end method

.method public abstract removeAllFragmentTab()V
.end method

.method public abstract removeFragmentTab(Landroid/app/ActionBar$Tab;)V
.end method

.method public abstract removeFragmentTab(Landroid/app/Fragment;)V
.end method

.method public abstract removeFragmentTab(Ljava/lang/String;)V
.end method

.method public abstract removeFragmentTabAt(I)V
.end method

.method public abstract removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract setEndView(Landroid/view/View;)V
.end method

.method public abstract setExpandState(I)V
.end method

.method public abstract setExpandState(IZ)V
.end method

.method public abstract setExpandTabTextAppearance(II)V
.end method

.method public abstract setFragmentActionMenuAt(IZ)V
.end method

.method public abstract setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end method

.method public abstract setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressBarIndeterminate(Z)V
.end method

.method public abstract setProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setProgressBarVisibility(Z)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setSecondaryTabTextAppearance(II)V
.end method

.method public abstract setStartView(Landroid/view/View;)V
.end method

.method public abstract setTabBadgeVisibility(IZ)V
.end method

.method public abstract setTabIconWithPosition(IIIIII)V
.end method

.method public abstract setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTabTextAppearance(II)V
.end method

.method public abstract setTabsMode(Z)V
.end method

.method public abstract setViewPagerDecor(Landroid/view/View;)V
.end method

.method public abstract setViewPagerOffscreenPageLimit(I)V
.end method

.method public abstract showActionBarShadow(Z)V
.end method

.method public abstract showSplitActionBar(ZZ)V
.end method
