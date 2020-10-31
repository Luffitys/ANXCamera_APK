.class Lmiui/maml/elements/video/BaseVideoView$7;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/video/BaseVideoView;


# direct methods
.method constructor <init>(Lmiui/maml/elements/video/BaseVideoView;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/video/BaseVideoView$7;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lmiui/maml/elements/video/BaseVideoView$7;->this$0:Lmiui/maml/elements/video/BaseVideoView;

    invoke-virtual {v0}, Lmiui/maml/elements/video/BaseVideoView;->pause()V

    nop

    :goto_a
    return-void
.end method
