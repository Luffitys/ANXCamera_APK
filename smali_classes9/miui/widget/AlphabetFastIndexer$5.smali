.class Lmiui/widget/AlphabetFastIndexer$5;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$5;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$5;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p0}, Lmiui/widget/AlphabetFastIndexer;->access$900(Lmiui/widget/AlphabetFastIndexer;)V

    :goto_0
    return-void
.end method
