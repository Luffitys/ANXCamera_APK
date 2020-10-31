.class public abstract Lmiui/notification/NotificationPanelActivity;
.super Landroid/app/Activity;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/notification/NotificationPanelActivity$NotificationClicker;,
        Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;,
        Lmiui/notification/NotificationPanelActivity$LoadDataTask;
    }
.end annotation


# static fields
.field private static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAppInfo:Landroid/widget/TextView;

.field mAppTitle:Ljava/lang/String;

.field mClearButton:Landroid/widget/ImageView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mClosing:Z

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field mNoNotificationTips:Landroid/widget/TextView;

.field mNotificationHeight:I

.field mNotificationList:Lmiui/notification/NotificationRowLayout;

.field mOpenAnimation:Ljava/lang/Runnable;

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lmiui/notification/NotificationPanelActivity$2;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$2;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/notification/NotificationPanelActivity$3;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$3;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mOpenAnimation:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationItem;)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/notification/NotificationPanelActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lmiui/notification/NotificationPanelActivity;)V
    .registers 1

    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    return-void
.end method

.method private closeAnimation()V
    .registers 9

    iget-boolean v0, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    if-nez v0, :cond_61

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_62

    const-string v6, "scaleY"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    new-array v6, v0, [F

    iget-object v7, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    div-int/2addr v7, v4

    int-to-float v7, v7

    aput v7, v6, v5

    const-string v7, "translationY"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v6, v0, v5

    const-string v5, "alpha"

    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lmiui/notification/NotificationPanelActivity$4;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$4;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_61
    return-void

    :array_62
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/system/internal/R$layout;->status_bar_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    return-object v0
.end method

.method private removeNotificationView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, p1}, Lmiui/notification/NotificationRowLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    :cond_10
    return-void
.end method

.method private setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V
    .registers 9

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/miui/system/internal/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/miui/system/internal/R$id;->content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/miui/system/internal/R$id;->action:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x8

    if-nez v4, :cond_2d

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_34

    :cond_2d
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_34
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_52

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_52

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_72

    :cond_52
    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_72

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_72
    :goto_72
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClearIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/notification/NotificationPanelActivity;->updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startClearButtonAnimation(Z)V
    .registers 6

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_33

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_33
    return-void
.end method

.method private updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V
    .registers 5

    sget v0, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/notification/NotificationPanelActivity$1;

    invoke-direct {v1, p0, p2}, Lmiui/notification/NotificationPanelActivity$1;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected addNotification(Lmiui/notification/NotificationItem;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, v1}, Lmiui/notification/NotificationRowLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    :cond_1c
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmiui/notification/NotificationRowLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
    .registers 11

    invoke-virtual {p2}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v0, :cond_3f

    invoke-virtual {p2, v5}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v1, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v2, :cond_33

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-virtual {p2, v6}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_3f
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {v6, p0, p2, v4, v3}, Lmiui/notification/NotificationPanelActivity$5;-><init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected abstract getAppTitle()Ljava/lang/String;
.end method

.method protected abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end method

.method public onBackPressed()V
    .registers 1

    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/miui/system/internal/R$layout;->notification_panel:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    sget v1, Lcom/miui/system/internal/R$id;->list:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/notification/NotificationRowLayout;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    sget v1, Lcom/miui/system/internal/R$id;->no_notification_tips:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    sget v1, Lcom/miui/system/internal/R$id;->scroll:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    sget v1, Lcom/miui/system/internal/R$id;->clear_button:I

    invoke-virtual {p0, v1}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->notification_row_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/notification/NotificationPanelActivity$LoadDataTask;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected removeNotification(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1e

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method protected updateNotification(ILmiui/notification/NotificationItem;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1b

    invoke-direct {p0, v1, p2}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1e
    return-void
.end method
