.class Lmiui/view/VolumeDialog$3;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->setExpandedH(Z)V
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

    iput-object p1, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    iget-object v0, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateExpandButtonH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1500(Lmiui/view/VolumeDialog;)V

    return-void
.end method
