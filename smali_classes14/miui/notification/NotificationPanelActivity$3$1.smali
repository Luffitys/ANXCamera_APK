.class Lmiui/notification/NotificationPanelActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/notification/NotificationPanelActivity$3;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity$3;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$3$1;->this$1:Lmiui/notification/NotificationPanelActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$3$1;->this$1:Lmiui/notification/NotificationPanelActivity$3;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$3$1;->this$1:Lmiui/notification/NotificationPanelActivity$3;

    iget-object v1, v1, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, v1, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    # invokes: Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V
    invoke-static {v0, v1}, Lmiui/notification/NotificationPanelActivity;->access$200(Lmiui/notification/NotificationPanelActivity;Z)V

    return-void
.end method
