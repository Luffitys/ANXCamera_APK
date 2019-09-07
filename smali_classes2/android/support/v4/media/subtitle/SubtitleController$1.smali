.class Landroid/support/v4/media/subtitle/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/subtitle/SubtitleController;


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$300(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1

    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-static {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->access$200(Landroid/support/v4/media/subtitle/SubtitleController;Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    return v1

    :cond_2
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$100(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1

    :cond_3
    iget-object p0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$000(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1
.end method
