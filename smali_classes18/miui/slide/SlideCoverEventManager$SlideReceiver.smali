.class final Lmiui/slide/SlideCoverEventManager$SlideReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlideReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method private constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/SlideCoverEventManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager$SlideReceiver;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5a4113c8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1f

    const v2, 0x392cb822

    if-eq v1, v2, :cond_15

    :cond_14
    goto :goto_29

    :cond_15
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    goto :goto_2a

    :cond_1f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    if-eqz v0, :cond_35

    if-eq v0, v4, :cond_2f

    goto :goto_52

    :cond_2f
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->bindSliderView()V
    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$900(Lmiui/slide/SlideCoverEventManager;)V

    goto :goto_52

    :cond_35
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    # getter for: Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I
    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$1400(Lmiui/slide/SlideCoverEventManager;)I

    move-result v1

    if-eq v0, v1, :cond_52

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    # setter for: Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I
    invoke-static {v1, v0}, Lmiui/slide/SlideCoverEventManager;->access$1402(Lmiui/slide/SlideCoverEventManager;I)I

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->updateSettings()V
    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$1500(Lmiui/slide/SlideCoverEventManager;)V

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    # invokes: Lmiui/slide/SlideCoverEventManager;->bindSliderView()V
    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$900(Lmiui/slide/SlideCoverEventManager;)V

    :cond_52
    :goto_52
    return-void
.end method
