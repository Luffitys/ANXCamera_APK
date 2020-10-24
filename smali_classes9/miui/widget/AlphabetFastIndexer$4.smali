.class Lmiui/widget/AlphabetFastIndexer$4;
.super Lmiui/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V
    .locals 0

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1, p3}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;F)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1}, Lmiui/widget/AlphabetFastIndexer;->access$500(Lmiui/widget/AlphabetFastIndexer;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p0, p1, p3}, Lmiui/widget/AlphabetFastIndexer;->access$600(Lmiui/widget/AlphabetFastIndexer;IF)V

    return-void
.end method
