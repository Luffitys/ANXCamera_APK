.class Lmiui/widget/AlphabetFastIndexer$3;
.super Lmiui/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1, p3}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;F)V

    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->access$400(Lmiui/widget/AlphabetFastIndexer;I)V

    return-void
.end method
