.class Lmiui/app/ToggleManager$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.xiaomi.midrop"

    if-eqz v1, :cond_27

    # getter for: Lmiui/app/ToggleManager;->sHasMiDrop:Z
    invoke-static {}, Lmiui/app/ToggleManager;->access$900()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    # setter for: Lmiui/app/ToggleManager;->sHasMiDrop:Z
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$902(Z)Z

    :cond_26
    goto :goto_47

    :cond_27
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    # getter for: Lmiui/app/ToggleManager;->sHasMiDrop:Z
    invoke-static {}, Lmiui/app/ToggleManager;->access$900()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    # setter for: Lmiui/app/ToggleManager;->sHasMiDrop:Z
    invoke-static {v2}, Lmiui/app/ToggleManager;->access$902(Z)Z

    :cond_47
    :goto_47
    return-void
.end method
