.class Lmiui/notification/NotificationPanelActivity$5$1;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/notification/NotificationPanelActivity$5;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity$5;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/notification/NotificationRowLayout;->setViewRemoval(Z)V

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity$5;->val$clearableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    nop

    goto :goto_10

    :catch_27
    move-exception v0

    :cond_28
    nop

    return-void
.end method
