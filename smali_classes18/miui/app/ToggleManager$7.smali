.class Lmiui/app/ToggleManager$7;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object v0, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$1900(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lmiui/app/ToggleManager;->sCurrentUserId:I
    invoke-static {}, Lmiui/app/ToggleManager;->access$2000()I

    move-result v2

    const-string v3, "mobile_policy"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_14

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    # setter for: Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z
    invoke-static {v0, v4}, Lmiui/app/ToggleManager;->access$1802(Lmiui/app/ToggleManager;Z)Z

    iget-object v0, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$1400(Lmiui/app/ToggleManager;)V

    return-void
.end method
