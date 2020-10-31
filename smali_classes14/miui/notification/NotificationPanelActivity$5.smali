.class Lmiui/notification/NotificationPanelActivity$5;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;

.field final synthetic val$clearableViews:Ljava/util/ArrayList;

.field final synthetic val$list:Lmiui/notification/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    iput-object p3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$clearableViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v0, 0xa

    const/16 v1, 0x8c

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/notification/NotificationRowLayout;->setViewRemoval(Z)V

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    new-instance v5, Lmiui/notification/NotificationPanelActivity$5$1;

    invoke-direct {v5, p0}, Lmiui/notification/NotificationPanelActivity$5$1;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    iput-object v5, v3, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v8, v8, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lmiui/notification/NotificationPanelActivity$5$2;

    invoke-direct {v9, p0, v7, v5}, Lmiui/notification/NotificationPanelActivity$5$2;-><init>(Lmiui/notification/NotificationPanelActivity$5;Landroid/view/View;I)V

    int-to-long v10, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v8, 0x32

    add-int/lit8 v9, v1, -0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_28

    :cond_4b
    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v6, v6, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lmiui/notification/NotificationPanelActivity$5$3;

    invoke-direct {v7, p0}, Lmiui/notification/NotificationPanelActivity$5$3;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    add-int/lit16 v8, v2, 0xe1

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
