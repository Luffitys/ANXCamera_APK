.class Lmiui/app/ToggleManager$21;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager;->updateDataToggle()V
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

    iput-object p1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mMobileDataEnable:Z
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$3400(Lmiui/app/ToggleManager;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$1800(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mFlightMode:Z
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$3500(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$1300(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mMobileDataEnable:Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$3400(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";mMobilePolicyEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$1800(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";mFlightMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mFlightMode:Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$3500(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";mIsSimMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$1300(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v3, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mFlightMode:Z
    invoke-static {v3}, Lmiui/app/ToggleManager;->access$3500(Lmiui/app/ToggleManager;)Z

    move-result v4

    if-nez v4, :cond_80

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->access$1300(Lmiui/app/ToggleManager;)Z

    move-result v4

    if-eqz v4, :cond_81

    :cond_80
    move v1, v2

    :cond_81
    invoke-virtual {v3, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_8c

    const v3, 0x11070199

    goto :goto_8f

    :cond_8c
    const v3, 0x11070198

    :goto_8f
    invoke-virtual {v1, v2, v3}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void
.end method
