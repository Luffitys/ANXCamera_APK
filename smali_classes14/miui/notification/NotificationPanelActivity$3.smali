.class Lmiui/notification/NotificationPanelActivity$3;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_74

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    new-array v5, v3, [F

    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget v6, v6, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    iget-object v7, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v7, v7, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/2addr v6, v3

    int-to-float v6, v6

    aput v6, v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v4, v5, v6

    const-string v4, "translationY"

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    new-array v2, v3, [F

    fill-array-data v2, :array_7c

    const-string v4, "alpha"

    invoke-static {p0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lmiui/notification/NotificationPanelActivity$3$1;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$3$1;-><init>(Lmiui/notification/NotificationPanelActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_74
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
