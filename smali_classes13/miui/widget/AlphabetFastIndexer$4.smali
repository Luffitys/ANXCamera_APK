.class Lmiui/widget/AlphabetFastIndexer$4;
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

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->updateOverlayTranslationX(F)V
    invoke-static {v0, p3}, Lmiui/widget/AlphabetFastIndexer;->access$300(Lmiui/widget/AlphabetFastIndexer;F)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # getter for: Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$500(Lmiui/widget/AlphabetFastIndexer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$4;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->updateIndexer(IF)V
    invoke-static {v1, v0, p3}, Lmiui/widget/AlphabetFastIndexer;->access$600(Lmiui/widget/AlphabetFastIndexer;IF)V

    return-void
.end method
