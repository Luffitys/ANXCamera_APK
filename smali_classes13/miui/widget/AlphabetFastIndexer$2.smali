.class Lmiui/widget/AlphabetFastIndexer$2;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    # invokes: Lmiui/widget/AlphabetFastIndexer;->checkItemHeight()V
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)V

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v0, p0}, Lmiui/widget/AlphabetFastIndexer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
