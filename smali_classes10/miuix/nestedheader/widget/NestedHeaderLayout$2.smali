.class Lmiuix/nestedheader/widget/NestedHeaderLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$202(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    const-string p1, "targe"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    :cond_0
    return-void
.end method
