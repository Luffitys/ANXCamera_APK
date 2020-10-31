.class Lmiui/view/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v1, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3500(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    # setter for: Lmiui/view/VolumeDialog;->mLastStatus:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3402(Lmiui/view/VolumeDialog;Z)Z

    :cond_21
    iget-object v0, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3500(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v1, v1, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v1, :cond_36

    iget-object v1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mLastStatus:Z
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$3400(Lmiui/view/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v0, v2}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    return-void
.end method
