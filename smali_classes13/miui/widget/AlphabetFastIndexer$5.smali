.class Lmiui/widget/AlphabetFastIndexer$5;
.super Landroid/os/Handler;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$5;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    :cond_6
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$5;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->hideOverlay()V
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$900(Lmiui/widget/AlphabetFastIndexer;)V

    :goto_b
    return-void
.end method
