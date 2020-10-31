.class Lmiui/widget/AlphabetFastIndexer$3;
.super Lmiui/animation/listener/TransitionListener;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/AlphabetFastIndexer;->initAnimConfig()V
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

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/4 v1, 0x1

    # setter for: Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z
    invoke-static {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/AlphabetFastIndexer;->mShowAnimBegin:Z
    invoke-static {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->access$202(Lmiui/widget/AlphabetFastIndexer;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->updateOverlayTranslationX(F)V
    invoke-static {v0, p3}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;F)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$3;->this$0:Lmiui/widget/AlphabetFastIndexer;

    const/16 v1, 0xc8

    # invokes: Lmiui/widget/AlphabetFastIndexer;->stop(I)V
    invoke-static {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->access$400(Lmiui/widget/AlphabetFastIndexer;I)V

    return-void
.end method
